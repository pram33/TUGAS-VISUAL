unit KATEGORI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    edt1: TEdit;
    lbl1: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    lbl2: TLabel;
    edt2: TEdit;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a : string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
DataModule4.ZKategori.SQL.Clear;
DataModule4.ZKategori.SQL.Add('insert into kategori values (null, "'+ edt1.Text+'")');
DataModule4.ZKategori.ExecSQL;

DataModule4.ZKategori.SQL.Clear;
DataModule4.ZKategori.SQL.Add('select * from kategori');
DataModule4.ZKategori.Open;
ShowMessage('Data Berhasi Disimpan');
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
with DataModule4.Zkategori do
begin
   SQL.Clear;
   SQL.Add('update kategori set name="'+edt1.Text+'" where id="'+a+'"');
   ExecSQL;

   SQL.Clear;
   SQL.Add('select * from kategori');
   Open;
end;
ShowMessage('Data berhasil diUpdate');
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule4.Zkategori.Fields[1].AsString;
  a:= DataModule4.Zkategori.Fields[0].AsString;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
begin
With DataModule4.Zkategori do
begin
SQL.Clear;
SQL.Add('delete from kategori where id= "'+a+'"');
ExecSQl;

SQL.Clear;
SQL.Add('select * from kategori');
Open;
end;
ShowMessage('Data Berhasil diDelete');
end;
end;

end.
