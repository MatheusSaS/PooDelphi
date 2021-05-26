unit Conexao.SQLServer;

interface

uses
  interfaces,FMX.Dialogs;

type
  TConexaoSQLServer = class(TInterfacedObject, IConexao)
    procedure Gravar();
  end;
implementation


{ TConexaoSQLServer }

procedure TConexaoSQLServer.Gravar;
begin
  ShowMessage('conectou');
end;

end.
