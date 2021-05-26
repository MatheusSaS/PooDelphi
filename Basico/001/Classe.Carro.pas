unit Classe.Carro;

interface


type
  TCarro = class

    type
      TRoda = class
        public
          Tipo : String;
          Tamanho : Integer;
      end;

    private
      Marca : String;
      Modelo : String;
      Roda : TRoda;
    public
    procedure MontarCarro();
  end;

implementation

{ TCarro }

procedure TCarro.MontarCarro;
begin
 Marca := 'BMW';
 Modelo := '10';
 Roda.Tipo := 'aaaa';
 Roda.Tamanho := 14;
end;

end.
