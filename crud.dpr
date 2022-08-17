program crud;

uses
  Vcl.Forms,
  utabelas in 'utabelas.pas' {dm: TDataModule},
  uconcli in 'uconcli.pas' {fconsultacli},
  uexccli in 'uexccli.pas' {fexccli},
  ubuscaexccli in 'ubuscaexccli.pas' {fbuscaexccli},
  ualtcli in 'ualtcli.pas' {faltcli},
  ubuscaaltcli in 'ubuscaaltcli.pas' {fbuscaclialt},
  uclientes in 'uclientes.pas' {fclientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tfclientes, fclientes);
  Application.CreateForm(Tfexccli, fexccli);
  Application.CreateForm(Tfconsultacli, fconsultacli);
  Application.CreateForm(Tfaltcli, faltcli);
  Application.CreateForm(Tfconsultacli, fconsultacli);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tfconsultacli, fconsultacli);
  Application.CreateForm(Tfaltcli, faltcli);
  Application.CreateForm(Tfbuscaexccli, fbuscaexccli);
  Application.CreateForm(Tfaltcli, faltcli);
  Application.CreateForm(Tfbuscaclialt, fbuscaclialt);
  Application.CreateForm(Tfclientes, fclientes);
  Application.Run;
end.
