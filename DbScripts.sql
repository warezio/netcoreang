use [HMA_PDI]
create table VersionType(
VersionTypeId int Primary Key identity(1,1),
VersionTypeCode	nvarchar(10),
VersionTypeName	nvarchar(150),
CreatedDate	datetime constraint DF_VERSION_CREATEDDT default(getutcdate()),
LastUpdated datetime
)

GO;

create table VersionDetails(
VersionDetailsId	int	primary Key identity(1,1),
VersionTypeId	int,
Version	nvarchar(50),
FileName	nvarchar(150),
Memo	nvarchar(max),
CreatedDate	datetime  constraint DF_VERTIONDETAILS_CREATEDDT default(getutcdate()),
LastUpdated datetime,
CONSTRAINT FK_VersionType_VersionDetails FOREIGN KEY (VersionTypeId)     
    REFERENCES VersionType (VersionTypeId)     
    
)

GO
use [HMA_PDI]
  insert into [dbo].[VersionType]
( VersionTypeCode, VersionTypeName, CreatedDate, LastUpdated)
values
('PDI','PDI', getutcdate(),getutcdate()),
('BT','Bluetooth', getutcdate(),getutcdate()),
('DB','Database', getutcdate(),getutcdate()),
('FW','PIM F/W', getutcdate(),getutcdate()),
('GDB','GDS Database', getutcdate(),getutcdate()),
('MM','Model Master', getutcdate(),getutcdate()),
('VCI_FW','VCI F/W', getutcdate(),getutcdate())

Go

Go
Insert into [HMA_PDI].[dbo].[VersionDetails]
(VersionTypeId, Version, FileName, Memo, CreatedDate, LastUpdated) 
Values(8,'1.0','HMA_PDI_2.1.3.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.1','HMA_PDI_2.1.4.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.2','HMA_PDI_2.1.5.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.3','HMA_PDI_2.1.6.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.4','HMA_PDI_2.1.7.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.5','HMA_PDI_2.1.8.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.6','HMA_PDI_2.1.9.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.7','HMA_PDI_2.1.10.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.8','HMA_PDI_2.1.11.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.9','HMA_PDI_2.1.12.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.10','HMA_PDI_2.1.13.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.11','HMA_PDI_2.1.14.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.12','HMA_PDI_2.1.15.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.13','HMA_PDI_2.1.16.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.14','HMA_PDI_2.1.14.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.15','HMA_PDI_2.1.55.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.16','HMA_PDI_2.1.45.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.17','HMA_PDI_2.1.45.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.18','HMA_PDI_2.1.615.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.19','HMA_PDI_2.1.165.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.20','HMA_PDI_2.1.654.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.21','HMA_PDI_2.1.156.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.22','HMA_PDI_2.1.16.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.23','HMA_PDI_2.1.15.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.24','HMA_PDI_2.1.98.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.25','HMA_PDI_2.1.25.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.26','HMA_PDI_2.1.266.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.27','HMA_PDI_2.1.32.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.28','HMA_PDI_2.1.564.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.29','HMA_PDI_2.1.154.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(8,'1.30','HMA_PDI_2.1.165.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() )

Go

Go
Insert into [HMA_PDI].[dbo].[VersionDetails]
(VersionTypeId, Version, FileName, Memo, CreatedDate, LastUpdated) 
Values(9,'1.0','HMA_PDI_2.1.3.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.1','HMA_PDI_2.1.4.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.2','HMA_PDI_2.1.5.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.3','HMA_PDI_2.1.6.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.4','HMA_PDI_2.1.7.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.5','HMA_PDI_2.1.9.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.6','HMA_PDI_2.1.9.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.7','HMA_PDI_2.1.10.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.9','HMA_PDI_2.1.11.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.9','HMA_PDI_2.1.12.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.10','HMA_PDI_2.1.13.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.11','HMA_PDI_2.1.14.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.12','HMA_PDI_2.1.15.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.13','HMA_PDI_2.1.16.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.14','HMA_PDI_2.1.14.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.15','HMA_PDI_2.1.55.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.16','HMA_PDI_2.1.45.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.17','HMA_PDI_2.1.45.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.19','HMA_PDI_2.1.615.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.19','HMA_PDI_2.1.165.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.20','HMA_PDI_2.1.654.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.21','HMA_PDI_2.1.156.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.22','HMA_PDI_2.1.16.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.23','HMA_PDI_2.1.15.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.24','HMA_PDI_2.1.99.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.25','HMA_PDI_2.1.25.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.26','HMA_PDI_2.1.266.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.27','HMA_PDI_2.1.32.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.29','HMA_PDI_2.1.564.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.29','HMA_PDI_2.1.154.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(9,'1.30','HMA_PDI_2.1.165.apk','Applied pdilib v5.02 Fixed G90 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() )

Go

Go

Go
Insert into [HMA_PDI].[dbo].[VersionDetails]
(VersionTypeId, Version, FileName, Memo, CreatedDate, LastUpdated) 
Values(10,'1.0','HMA_PDI_2.1.3.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.1','HMA_PDI_2.1.4.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.2','HMA_PDI_2.1.5.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.3','HMA_PDI_2.1.6.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.4','HMA_PDI_2.1.7.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.5','HMA_PDI_2.1.10.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.6','HMA_PDI_2.1.10.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.7','HMA_PDI_2.1.10.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.10','HMA_PDI_2.1.11.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.10','HMA_PDI_2.1.12.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.10','HMA_PDI_2.1.13.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.11','HMA_PDI_2.1.14.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.12','HMA_PDI_2.1.15.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.13','HMA_PDI_2.1.16.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.14','HMA_PDI_2.1.14.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.15','HMA_PDI_2.1.55.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.16','HMA_PDI_2.1.45.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.17','HMA_PDI_2.1.45.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.110','HMA_PDI_2.1.615.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.110','HMA_PDI_2.1.165.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.20','HMA_PDI_2.1.654.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.21','HMA_PDI_2.1.156.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.22','HMA_PDI_2.1.16.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.23','HMA_PDI_2.1.15.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.24','HMA_PDI_2.1.1010.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.25','HMA_PDI_2.1.25.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.26','HMA_PDI_2.1.266.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.27','HMA_PDI_2.1.32.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.210','HMA_PDI_2.1.564.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.210','HMA_PDI_2.1.154.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(10,'1.30','HMA_PDI_2.1.165.apk','Applied pdilib v5.02 Fixed G100 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() )

Go

Go

Go
Insert into [HMA_PDI].[dbo].[VersionDetails]
(VersionTypeId, Version, FileName, Memo, CreatedDate, LastUpdated) 
Values(11,'1.0','HMA_PDI_2.1.3.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.1','HMA_PDI_2.1.4.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.2','HMA_PDI_2.1.5.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.3','HMA_PDI_2.1.6.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.4','HMA_PDI_2.1.7.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.5','HMA_PDI_2.1.11.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.6','HMA_PDI_2.1.11.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.7','HMA_PDI_2.1.11.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.11','HMA_PDI_2.1.11.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.11','HMA_PDI_2.1.12.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.11','HMA_PDI_2.1.13.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.11','HMA_PDI_2.1.14.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.12','HMA_PDI_2.1.15.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.13','HMA_PDI_2.1.16.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.14','HMA_PDI_2.1.14.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.15','HMA_PDI_2.1.55.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.16','HMA_PDI_2.1.45.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.17','HMA_PDI_2.1.45.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.111','HMA_PDI_2.1.615.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.111','HMA_PDI_2.1.165.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.20','HMA_PDI_2.1.654.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.21','HMA_PDI_2.1.156.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.22','HMA_PDI_2.1.16.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.23','HMA_PDI_2.1.15.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.24','HMA_PDI_2.1.1111.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.25','HMA_PDI_2.1.25.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.26','HMA_PDI_2.1.266.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.27','HMA_PDI_2.1.32.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.211','HMA_PDI_2.1.564.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.211','HMA_PDI_2.1.154.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(11,'1.30','HMA_PDI_2.1.165.apk','Applied pdilib v5.02 Fixed G110 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() )

Go

Go

Go
Insert into [HMA_PDI].[dbo].[VersionDetails]
(VersionTypeId, Version, FileName, Memo, CreatedDate, LastUpdated) 
Values(12,'1.0','HMA_PDI_2.1.3.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.1','HMA_PDI_2.1.4.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.2','HMA_PDI_2.1.5.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.3','HMA_PDI_2.1.6.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.4','HMA_PDI_2.1.7.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.5','HMA_PDI_2.1.12.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.6','HMA_PDI_2.1.12.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.7','HMA_PDI_2.1.12.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.12','HMA_PDI_2.1.12.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.12','HMA_PDI_2.1.12.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.12','HMA_PDI_2.1.13.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.12','HMA_PDI_2.1.14.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.12','HMA_PDI_2.1.15.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.13','HMA_PDI_2.1.16.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.14','HMA_PDI_2.1.14.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.15','HMA_PDI_2.1.55.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.16','HMA_PDI_2.1.45.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.17','HMA_PDI_2.1.45.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.121','HMA_PDI_2.1.615.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.121','HMA_PDI_2.1.165.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.20','HMA_PDI_2.1.654.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.21','HMA_PDI_2.1.156.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.22','HMA_PDI_2.1.16.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.23','HMA_PDI_2.1.15.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.24','HMA_PDI_2.1.1212.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.25','HMA_PDI_2.1.25.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.26','HMA_PDI_2.1.266.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.27','HMA_PDI_2.1.32.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.212','HMA_PDI_2.1.564.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.212','HMA_PDI_2.1.154.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(12,'1.30','HMA_PDI_2.1.165.apk','Applied pdilib v5.02 Fixed G120 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() )

Go

Go

Go
Insert into [HMA_PDI].[dbo].[VersionDetails]
(VersionTypeId, Version, FileName, Memo, CreatedDate, LastUpdated) 
Values(13,'1.0','HMA_PDI_2.1.3.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.1','HMA_PDI_2.1.4.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.2','HMA_PDI_2.1.5.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.3','HMA_PDI_2.1.6.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.4','HMA_PDI_2.1.7.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.5','HMA_PDI_2.1.13.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.6','HMA_PDI_2.1.13.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.7','HMA_PDI_2.1.13.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.13','HMA_PDI_2.1.13.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.13','HMA_PDI_2.1.13.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.13','HMA_PDI_2.1.13.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.13','HMA_PDI_2.1.14.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.13','HMA_PDI_2.1.15.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.13','HMA_PDI_2.1.16.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.14','HMA_PDI_2.1.14.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.15','HMA_PDI_2.1.55.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.16','HMA_PDI_2.1.45.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.17','HMA_PDI_2.1.45.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.131','HMA_PDI_2.1.615.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.131','HMA_PDI_2.1.165.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.20','HMA_PDI_2.1.654.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.21','HMA_PDI_2.1.156.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.22','HMA_PDI_2.1.16.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.23','HMA_PDI_2.1.15.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.24','HMA_PDI_2.1.1313.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.25','HMA_PDI_2.1.25.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.26','HMA_PDI_2.1.266.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.27','HMA_PDI_2.1.32.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.213','HMA_PDI_2.1.564.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.213','HMA_PDI_2.1.154.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(13,'1.30','HMA_PDI_2.1.165.apk','Applied pdilib v5.02 Fixed G130 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() )

Go

Go

Go
Insert into [HMA_PDI].[dbo].[VersionDetails]
(VersionTypeId, Version, FileName, Memo, CreatedDate, LastUpdated) 
Values(14,'1.0','HMA_PDI_2.1.3.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.1','HMA_PDI_2.1.4.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.2','HMA_PDI_2.1.5.apk','Applied pdilib v5.a02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.3','HMA_PDI_2.1.6.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.4','HMA_PDI_2.1.7.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.5','HMA_PDI_2.1.14.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.6','HMA_PDI_2.1.14.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.7','HMA_PDI_2.1.14.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.14','HMA_PDI_2.1.14.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.14','HMA_PDI_2.1.14.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.14','HMA_PDI_2.1.14.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.14','HMA_PDI_2.1.14.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.14','HMA_PDI_2.1.15.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.14','HMA_PDI_2.1.16.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.14','HMA_PDI_2.1.14.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.15','HMA_PDI_2.1.55.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.16','HMA_PDI_2.1.45.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.17','HMA_PDI_2.1.45.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.141','HMA_PDI_2.1.615.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.141','HMA_PDI_2.1.165.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.20','HMA_PDI_2.1.654.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.21','HMA_PDI_2.1.156.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.22','HMA_PDI_2.1.16.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.23','HMA_PDI_2.1.15.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.24','HMA_PDI_2.1.1414.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.25','HMA_PDI_2.1.25.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.26','HMA_PDI_2.1.266.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.27','HMA_PDI_2.1.32.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.214','HMA_PDI_2.1.564.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.214','HMA_PDI_2.1.154.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() ),
(14,'1.30','HMA_PDI_2.1.165.apk','Applied pdilib v5.02 Fixed G140 G5.0 GDI redundant sensor index',getutcdate(),getutcdate() )

Go

