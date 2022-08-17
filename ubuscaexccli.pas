unit ubuscaexccli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tfbuscaexccli = class(TForm)
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
    procedure btlimparClick(Sender: TObject);
    procedure btfecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbuscaexccli: Tfbuscaexccli;

implementation

{$R *.dfm}

Uses utabelas, uexccli;

procedure Tfbuscaexccli.btfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfbuscaexccli.btlimparClick(Sender: TObject);
begin
  edit1.Clear;
  edit1.SetFocus;
  qbuscacli.Close;
end;

procedure Tfbuscaexccli.DBGrid1CellClick(Column: TColumn);
begin
  fexccli.edit1.Text := DBGrid1.Fields[0].Value;
  fexccli.edit1.SetFocus;
  fbuscaexccli.Close;
end;

procedure Tfbuscaexccli.Edit1Change(Sender: TObject);
begin
  with qbuscacli do
  begin
    close;
    sql.Clear;
    sql.Add('select codcli, nomcli from clientes where nomcli like ''%'+edit1.Text+'%''');
    open;
  end;
end;

procedure Tfbuscaexccli.FormActivate(Sender: TObject);
begin
  qbuscacli.Close;
  qbuscacli.Open();
end;

end.
