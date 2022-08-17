unit ubuscaaltcli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tfbuscaclialt = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    btlimpar: TBitBtn;
    btfechar: TBitBtn;
    DBGrid1: TDBGrid;
    dsqbuscacli: TDataSource;
    qbuscacli: TFDQuery;
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbuscaclialt: Tfbuscaclialt;

implementation

{$R *.dfm}

Uses utabelas, ualtcli;

procedure Tfbuscaclialt.DBGrid1CellClick(Column: TColumn);
begin
  faltcli.edit1.Text := DBGrid1.Fields[0].Value;
  faltcli.edit1.SetFocus;
  fbuscaclialt.Close;
end;

procedure Tfbuscaclialt.Edit1Change(Sender: TObject);
begin
  with qbuscacli do
  begin
    close;
    sql.Clear;
    sql.Add('select codcli, nomcli from clientes where nomcli like ''%'+edit1.Text+'%''');
    open;
  end;
end;

end.
