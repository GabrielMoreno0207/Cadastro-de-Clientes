unit ualtcli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfaltcli = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    btlimpar: TBitBtn;
    btfechar: TBitBtn;
    btiniciar: TBitBtn;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    SpeedButton1: TSpeedButton;
    tbclientes: TFDTable;
    tbclientesCODCLI: TIntegerField;
    tbclientesCADCLI: TDateField;
    tbclientesNOMCLI: TStringField;
    tbclientesENDCLI: TStringField;
    tbclientesBAICLI: TStringField;
    tbclientesCIDCLI: TStringField;
    tbclientesESTCLI: TStringField;
    tbclientesDATCLI: TDateField;
    tbclientesEMACLI: TStringField;
    tbclientesCPFCLI: TStringField;
    dsclientes: TDataSource;
    BitBtn1: TBitBtn;
    procedure btiniciarClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btlimparClick(Sender: TObject);
    procedure btfecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  faltcli: Tfaltcli;

implementation

{$R *.dfm}

Uses utabelas, uclientes, ubuscaaltcli;

procedure Tfaltcli.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Você confirma a alteração de dados desse cliente?',
     mtConfirmation,[mbyes,mbno],0) = mryes
  then begin
         tbclientes.post;
         showmessage('Dados do cliente alterado com sucesso!');
         dm.FDTransaction1.StartTransaction;
         dm.FDTransaction1.CommitRetaining;
         btlimpar.SetFocus;
  end
  else begin
        ShowMessage('Dados do cliente mantidos sem alteração!');
        tbclientes.cancel;
        tbclientes.Close;
        btlimpar.SetFocus;
  end;

end;

procedure Tfaltcli.btfecharClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfaltcli.btiniciarClick(Sender: TObject);
begin
  tbclientes.Open();
  if tbclientes.Locate('codcli', edit1.Text,[]) then
  begin
     if MessageDlg('Você deseja alterar dados desse cliente?',
     mtConfirmation,[mbyes,mbno],0) = mryes
     then begin
         tbclientes.Edit;
         dbedit2.SetFocus;
     end;

end;
end;

procedure Tfaltcli.btlimparClick(Sender: TObject);
begin
  edit1.Clear;
  edit1.SetFocus;
  tbclientes.Close;
end;

procedure Tfaltcli.Edit1Change(Sender: TObject);
begin
  if edit1.Text = '' then btiniciar.Enabled := false
  else
  btiniciar.Enabled := true;

end;

procedure Tfaltcli.SpeedButton1Click(Sender: TObject);
begin
  fbuscaclialt.showmodal;
end;

end.
