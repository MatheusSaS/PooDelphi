unit eInterface.Model.Pessoa.Factory;

interface
uses
  eInterface.Model.Interfaces, eInterface.Model.PessoaFisica,
  eInterface.Model.PessoaJuridica;
type
  TModelPessoaFactory = class(TInterfacedObject, iPessoaFactory)

  private

  public
    function PessoaFisica : iPessoa;
    function PessoaJuridica : iPessoa;

    constructor Create;
    destructor Destroy; override;
    class function New : iPessoaFactory;
  end;


implementation

{ TModelPessoaFactory }

constructor TModelPessoaFactory.Create;
begin

end;

destructor TModelPessoaFactory.Destroy;
begin

  inherited;
end;

class function TModelPessoaFactory.New: iPessoaFactory;
begin
  Result := Self.Create;
end;

function TModelPessoaFactory.PessoaFisica: iPessoa;
begin
  Result := TModelPessoaFisica.New;
end;

function TModelPessoaFactory.PessoaJuridica: iPessoa;
begin
  Result := TModelPessoaJuridica.New;
end;

end.
