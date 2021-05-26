unit eInterface.Controller.Pessoa;

interface

uses
  eInterface.Controller.Interfaces, eInterface.Model.Interfaces,
  eInterface.Model.Pessoa.Factory;

type
  TControllerPessoa = class(TInterfacedObject, iControllerPessoa)

  private

  public
    function Pessoa(Value : TTypePessoa) : iPessoa;

    constructor Create;
    destructor Destroy; override;
    class function New : iControllerPessoa;
  end;


implementation

{ TControllerPessoa }

constructor TControllerPessoa.Create;
begin

end;

destructor TControllerPessoa.Destroy;
begin

  inherited;
end;

class function TControllerPessoa.New: iControllerPessoa;
begin
  Result := Self.Create;
end;

function TControllerPessoa.Pessoa(Value: TTypePessoa): iPessoa;
begin
  case Value of
    tpFisica:  Result := TModelPessoaFactory.New.PessoaFisica;
    tpJuridica: Result := TModelPessoaFactory.New.PessoaJuridica;
  end;
end;

end.
