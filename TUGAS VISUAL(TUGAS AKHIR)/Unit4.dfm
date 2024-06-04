object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 367
  Top = 261
  Height = 210
  Width = 343
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\adyat\Downloads\Unconfirmed 904585.crdownload'
    Left = 24
    Top = 32
  end
  object Zkategori: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kategori')
    Params = <>
    Left = 96
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = Zkategori
    Left = 176
    Top = 40
  end
end
