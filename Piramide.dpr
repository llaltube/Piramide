program Piramide;

uses
  Forms,
  UfrmPiramide in 'UfrmPiramide.pas' {frmPiramide};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPiramide, frmPiramide);
  Application.Run;
end.
