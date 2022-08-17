unit uconcli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfconsultacli = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qconcli: TFDQuery;
    dsqconcli: TDataSource;
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fconsultacli: Tfconsultacli;

implementation

{$R *.dfm}

Uses utabelas, uclientes, urelconcli;

procedure Tfconsultacli.BitBtn1Click(Sender: TObject);
begin
  edit1.Clear;
  qconcli.Close;
end;

procedure Tfconsultacli.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfconsultacli.Edit1Change(Sender: TObject);
begin
  with qconcli do
  begin
    close;
    sql.Clear;
    sql.Add('select * from clientes where nomcli like ''%'+edit1.Text+'%''');
    open;
  end;
end;

procedure Tfconsultacli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

end.
