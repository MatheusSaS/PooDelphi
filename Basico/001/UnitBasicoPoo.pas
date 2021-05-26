unit UnitBasicoPoo;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  Tconfigiracao = record
    host : String;
    senha: String;
    usuario : String;
  end;

type
   TCaneca = class

   end;


type
    TGarrafa = class
     cor : String;
     modelo : String;
     Tampa : String;
     Caneca : TCaneca;
     procedure ArmazenarLiquido(Liquido : String);

     constructor Create;
     destructor Destroy; override;
  end;


type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

{TGarrafa}
procedure TGarrafa.ArmazenarLiquido(Liquido : String);
begin
  //a
end;

procedure TForm3.Button1Click(Sender: TObject);
Var minhaGarrafa : TGarrafa;
begin
  try
    minhaGarrafa := TGarrafa.Create();
    minhaGarrafa.cor := 'a';
  finally
    freeAndNil(minhaGarrafa);
  end;
end;

procedure TForm3.Button2Click(Sender: TObject);
Var configuracao : Tconfigiracao;
begin
  //Record fica instanciado na memoria local, não precisa de create.
  configuracao.host := 'Teste';
  configuracao.senha := 'Teste';
  configuracao.usuario := 'Teste';
end;

constructor TGarrafa.Create;
begin

end;

destructor TGarrafa.Destroy;
begin

  inherited;
end;

end.
