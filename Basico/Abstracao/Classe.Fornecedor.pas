unit Classe.Fornecedor;

interface
  uses Classe.Pessoa;
type
  TFonernecedor = class(TPessoa)
    RazaoSocial : String;

    function Tipo : String; override;
  end;

implementation



{ TFonernecedor }

function TFonernecedor.Tipo: String;
begin
  Result := 'Fornecedor';
end;

end.
