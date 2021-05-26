unit eInterface.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,eInterface.Model.Interfaces,
  eInterface.Controller.Pessoa, eInterface.Controller.Interfaces;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FPessoa : iPessoa;
    procedure ExiveResultado(Value : String);
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  FPessoa
    .Nome(Edit1.Text)
    .SobreNome(Edit2.Text)
    .Display(ExiveResultado)
    .NomeCompletro;
end;

procedure TForm3.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0 : FPessoa := TControllerPessoa.New.Pessoa(tpFisica);
    1 : FPessoa := TControllerPessoa.New.Pessoa(tpJuridica);
  end;
end;

procedure TForm3.ExiveResultado(Value: String);
begin
  Memo1.Lines.Add(value);
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
end;

end.
