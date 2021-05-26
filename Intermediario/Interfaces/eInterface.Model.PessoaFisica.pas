unit eInterface.Model.PessoaFisica;

interface

uses
  eInterface.Model.Interfaces;

type
  TModelPessoaFisica = class(TInterfacedObject, iPessoa)
  private
    FNome : String;
    FSobreNome : String;
    FDisplay : TEvDisplay;
    function Nome(Value : String) : iPessoa; overload;
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

constructor TModelPessoaFisica.Create;
begin

end;

destructor TModelPessoaFisica.Destroy;
begin

  inherited;
end;

function TModelPessoaFisica.Display(Value: TEvDisplay): iPessoa;
begin
  Result := Self;
  FDisplay := Value;
end;

class function TModelPessoaFisica.New: iPessoa;
begin
  Result := Self.Create;
end;

function TModelPessoaFisica.Nome(Value: String): iPessoa;
begin
  Result := Self;
  FNome := Value;
end;

function TModelPessoaFisica.Nome: String;
begin
  Result := FNome;
end;

function TModelPessoaFisica.NomeCompletro: iPessoa;
begin
  Result := Self;
  FDisplay (FNome + ' ' + FSobreNome);
end;

function TModelPessoaFisica.SobreNome(Value: String): iPessoa;
begin
  Result := Self;
  FSobreNome := Value;
end;

end.
