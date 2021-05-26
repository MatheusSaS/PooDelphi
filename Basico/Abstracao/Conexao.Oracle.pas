unit Conexao.Oracle;

interface

uses
  interfaces;
type
  TConexaoOracle = class(TInterfacedObject,IConexao)
    procedure Gravar();
  end;
implementation

{ TConexaoOracle }

procedure TConexaoOracle.Gravar;
begin
//grava
end;

end.
