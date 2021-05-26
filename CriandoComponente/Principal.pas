unit Principal;

interface
  uses System.Classes;

procedure register;

type
  TNotifyEvent = procedure(Sender :  TObject) of Object;


type
    TEventos = class(TComponent)
      private
    Fnome: string;
    FStatus: TNotifyEvent;
    procedure Setnome(const Value: string);
    procedure SetStatus(const Value: TNotifyEvent);

    public
      function TanhoString(value : String) : Integer;
      procedure onStatus;
    published
      property nome : string read Fnome write Setnome;
      property Status : TNotifyEvent read FStatus write SetStatus;
    end;
implementation

{ TEventos }

procedure register;
begin
   RegisterComponents('DelphiUpdates',[TEventos]);
end;


procedure TEventos.onStatus;
begin
  if Assigned(Status) then
    Status(Self);
end;

procedure TEventos.Setnome(const Value: string);
begin
  Fnome := Value;
end;

procedure TEventos.SetStatus(const Value: TNotifyEvent);
begin
  FStatus := Value;
end;

function TEventos.TanhoString(value: String): Integer;
begin
  Nome := Value;
  Result := Length(Value);

  OnStatus;
end;

end.
