unit Classe.Cliente;

interface
  uses Classe.Pessoa;
type
  TCliente = class(TPessoa)
    Saldo : Currency;

    function Tipo : string;override;
  end;
implementation



{ TCliente }

function TCliente.Tipo: string;
begin
  Result := 'Cliente';
end;

end.
