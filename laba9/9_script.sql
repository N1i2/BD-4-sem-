use UNIVER

begin try
update STUDENT Set IDGROUP = 'hello'
end try
begin catch 
PRINT 'error cod = ' + CAST(ERROR_NUMBER() AS CHAR)
PRINT 'message = ' + ERROR_MESSAGE()
PRINT 'String number = ' + CAST(ERROR_LINE() AS CHAR)
PRINT 'error procedur name = ' + ERROR_PROCEDURE()
PRINT 'Severity = ' + CAST(ERROR_SEVERITY() AS CHAR)
PRINT 'error state = ' + CAST(ERROR_STATE() AS CHAR)
end catch