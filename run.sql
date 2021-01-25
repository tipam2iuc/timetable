--connect SYS/1234567890 AS SYSDBA;
connect sys/SyS$2020 AS SYSDBA;

SET VERIFY OFF
SET LINESIZE 900
SET PAGESIZE 100
SET SQLPROMPT '#TIPAM2021_SQL04>'
DROP USER tipam CASCADE;

@./User_DB/Run1.sql
@./Tables/Run2.sql
@./Insertions/Run3.sql
@./Contraintes/Run4.sql