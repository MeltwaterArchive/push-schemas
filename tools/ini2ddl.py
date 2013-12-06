import sys,re

'''cat xxx.ini | python <this script>'''

def sql_type(column,data_type):

  if data_type is not None:
    if data_type=='string':
      return 'TEXT'
    else:
      return data_type

  if re.search(r'^id$|_id$|_hash$|_type$|language$|_lang$|name$|^gender$|timezone$|location$|country$|source$',column):
    return 'VARCHAR(64)'
  elif re.search(r'_count$|^verified$|^hits$|_confidence$|sentiment$|klout_score$',column):
    return 'INT'
  elif re.search(r'longitude$|latitude$|score$|confidence$',column):
    return 'DOUBLE'
  elif re.search(r'description$|content$',column):
    return 'TEXT'
  else:
    return 'VARCHAR(255)'

notnullable=['interaction_id','created_at','interaction_type','subscription_id']
def nullability(column):
  if column in notnullable:
    return 'NOT NULL'
  else:
    return 'DEFAULT NULL'

index_columns=['interaction_id','interaction_type','created_at']
def get_create_statement(table,columns):
  #column datatype NULL/NOT NULL:
  datatypes=',\n  '.join(["%s %s %s" % (column,sql_type(column,data_type),nullability(column)) for (column,data_type) in columns])
  #indexes
  #indexes=',\n  '.join(["INDEX %s_%s_idx (%s)" % (table,column,column) for (column,ignore) in columns if column in index_columns])
  indexes='\n'.join(["CREATE INDEX %s_%s_idx ON %s (%s)" % (table,column,table,column) for (column,ignore) in columns if column in index_columns])

  ddl='''
CREATE TABLE %s (
  %s
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
%s
  ''' % (table,datatypes,indexes)
  return ddl

def dedupe(x):
  seen=set()
  result=[]
  for i in x:
    if i not in seen:
      result.append(i)
      seen.add(i)
  return result


table=None
columns=[]
for i in sys.stdin:

  if re.match(r'\s*;',i):
    continue

  m=re.match(r'\s*\[\s*(\w+)\s*',i)
  if m is not None:
    if table is not None:
      print get_create_statement(table,dedupe(columns))
    table=m.group(1)
    columns=[]
    continue
  elif '=' in i:
    (lhs,rhs)=i.split('=')
    data_type=None
    if 'data_type' in rhs:
      m=re.search(r'data_type:\s*(\w+)',rhs)
      if m is not None:
        data_type=m.group(1)
    columns.append((lhs.strip(),data_type))

if table is not None:
  print get_create_statement(table,dedupe(columns))

