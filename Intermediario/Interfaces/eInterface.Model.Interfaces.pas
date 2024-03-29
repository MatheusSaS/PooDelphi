unit eInterface.Model.Interfaces;

interface
type
  TEvDisplay = procedure (Value : String) of Object;

  iPessoa = interface
    ['{B321E457-DFA2-452C-81D0-743F4D834ADA}']
    function Nome(Value : String) : iPessoa; overload;
    function Nome : String; overload;
    function SobreNome(Value : String) : iPessoa;
    function NomeCompletro : iPessoa;
    function Display (Value : TEvDisplay) : iPessoa;

  end;

  iPessoaFactory = interface
    ['{CF78D42F-B3CC-4B9F-AE7D-84BAC989D969}']
    function PessoaFisica : iPessoa;
    function PessoaJuridica : iPessoa;
  end;
implementation

end.
