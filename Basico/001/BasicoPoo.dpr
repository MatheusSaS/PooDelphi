program BasicoPoo;

uses
  System.StartUpCopy,
  FMX.Forms,
  UnitBasicoPoo in 'UnitBasicoPoo.pas' {Form3},
  Classe.Carro in 'Classe.Carro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
