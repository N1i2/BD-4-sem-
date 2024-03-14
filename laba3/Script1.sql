USE master

go
CREATE database laba3 ON PRIMARY
(NAME = laba3_dat,
FILENAME = "D:\univer\SQL\laba_3\laba3.mdf",
size = 10240kb,
maxsize = UNLIMITED,
filegrowth = 1024kb
),
( name = "laba3_fgq", filename = "D:\univer\SQL\laba_3\laba3_fgq.ndf", 
   size = 10240KB, maxsize=1Gb, filegrowth=25%),
filegroup FG1
( name = "laba3_fgq1", filename = "D:\univer\SQL\laba_3\laba3_fgq1.ndf", 
   size = 10240Kb, maxsize=1Gb, filegrowth=25%),
( name = "laba3_fgq2", filename = "D:\univer\SQL\laba_3\laba3_fgq2.ndf", 
   size = 10240Kb, maxsize=1Gb, filegrowth=25%)
LOG ON
(NAME = laba3_log,
FILENAME = "D:\univer\SQL\laba_3\laba3.ldf"
)
go

