unit eInterface.Model.PessoaJuridica;

interface

uses
  eInterface.Model.Interfaces;

type
  TModelPessoaJuridica = class(TInterfacedObject, iPessoa)
  private
    FNome : String;
    FSobreNome : String;
    FDisplay : TEvDisplay;
    Fcpf : String;

    function Nome(Value : String) : iPessoa;overload;
    function Nome : String; overload;
    function SobreNome(Value : String) : iPessoa;
    function NomeCompletro : iPessoa;
    function Display (Value : TEvDisplay) : iPessoa;
  public

    constructor Create;
    destructor Destroy;Override;

    class function New : iPessoa;
  end;

implementation

{ TModelPessoa }

constructor TModelPessoaJuridica.Create;
begin

end;

destructor TModelPessoaJuridica.Destroy;
begin

  inherited;
end;

function TModelPessoaJuridica.Display(Value: TEvDisplay): iPessoa;
begin
  Result := Self;
  FDisplay:= Value;
end;

class function TModelPessoaJuridica.New: iPessoa;
begin
  Result := Self.Create;
end;

function TModelPessoaJuridica.Nome(Value: String): iPessoa;
begin
  Result := Self;
  FNome := Value;
end;

function TModelPessoaJuridica.Nome: String;
begin
  Result := Fnome;
end;

function TModelPessoaJuridica.NomeCompletro: iPessoa;
begin

   Result := Self;
   FDisplay (FNome + ' ' + FSobreNome + ' LTDA ME');
end;

function TModelPessoaJuridica.SobreNome(Value: String): iPessoa;
begin
  Result := Self;
  FSobreNome := Value;
end;

end.

