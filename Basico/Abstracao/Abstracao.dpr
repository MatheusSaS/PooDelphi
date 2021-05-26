program Abstracao;

uses
  System.StartUpCopy,
  FMX.Forms,
  UniAbstracao in 'UniAbstracao.pas' {Form3},
  Classe.Pessoa in 'Classe.Pessoa.pas',
  Classe.Fornecedor in 'Classe.Fornecedor.pas',
  Classe.Cliente in 'Classe.Cliente.pas',
  Form.Padrao in 'Form.Padrao.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
