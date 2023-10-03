You can convert unix epoch time to time in sqltrace of Oracle Database.

$ TZ='Asia/Karachi'; export TZ

$ perl sqltrace_tim_conv.pl test.trc

PARSING IN CURSOR #111 len=138 dep=0 uid=49 oct=3 lid=49 tim=2016-12-15 06:35:18.263
select a.*, a.rowid
from dual
END OF STMT
PARSE #111:c=13000,e=12343,p=0,cr=100,cu=0,mis=1,r=0,dep=0,og=1,plh=282154677, tim=2016-12-15 06:35:18.263
EXEC #111:c=0,e=15,p=0,cr=0,cu=0,mis=0,r=0,dep=0,og=1,plh=282154677, tim=2016-12-15 06:35:18.263
FETCH #111:c=0,e=118,p=0,cr=6,cu=0,mis=0,r=3,dep=0,og=1,plh=282154677, tim=2016-12-15 06:35:18.266
