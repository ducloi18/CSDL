CREATE DATABASE QLSach
ON PRIMARY
( NAME = QLSach_Data, FILENAME = 'D:\CSDL\BTCSDL_T1\QLSach_Data.mdf',
   SIZE = 20, MAXSIZE = 40, FILEGROWTH = 1MB )
LOG ON
( NAME = 'QLSach_Log', 
  FILENAME = 'D:\CSDL\BTCSDL_T1\QLSach_Log.ldf', 
  SIZE = 6MB, 
  MAXSIZE = 8MB, 
  FILEGROWTH = 1MB )
  alter database QLSach add filegroup DuLieuSach
 ALTER DATABASE QLSach ADD FILE ( NAME = QLSach_Data2, FILENAME = 'D:\CSDL\BTCSDL_T1\QLSach_Data2.ndf',
    SIZE = 6MB, MAXSIZE = 8MB, FILEGROWTH = 1MB) TO FILEGROUP DuLieuSach;
ALTER DATABASE QLSach
MODIFY FILEGROUP DuLieuSach READ_ONLY;