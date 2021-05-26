unit eInterface.Controller.Interfaces;

interface

uses
  eInterface.Model.Interfaces;
type
  TTypePessoa = (tpFisica,tpJuridica);

  iControllerPessoa = interface
    ['{EB14E00D-8C30-4916-9DAF-0BDDEB4E8D58}']
    function Pessoa(Value : TTypePessoa) : iPessoa;
  end;

implementation

end.
