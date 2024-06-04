program PENJUALAN;

uses
  Forms,
  DASHBORD in 'DASHBORD.pas' {Form1},
  LOGIN in 'LOGIN.pas' {Form2},
  KATEGORI in 'KATEGORI.pas' {Form3},
  Unit4 in 'Unit4.pas' {DataModule4: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TDataModule4, DataModule4);
  Application.Run;
end.
