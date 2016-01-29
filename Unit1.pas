unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

type Ttransporte = class

private

// atributos e métodos privados
Fnome : String;
Fmetros : Integer;
    procedure Setnome(const Value: String);
    procedure Setmetros(const Value: Integer);

protected

// atributos e métodos protegidos

Public

// atibutos e métodos públicos
property nome: String read Fnome write Setnome;
property metros: Integer read Fmetros write Setmetros;
constructor Create;


end;

var
Carro : Ttransporte;
Aviao : Ttransporte;

implementation

{ Ttransporte }

constructor Ttransporte.Create;
begin
  Fnome:='';
  Fmetros:=0;
end;

procedure Ttransporte.Setnome(const Value: String);
begin
  Fnome := Value;
end;

procedure Ttransporte.Setmetros(const Value: Integer);
begin
  Fmetros := Value;
end;

{$R *.dfm}

procedure mover(nome:String;metros:Integer);
begin
  MessageDlg(nome + ' moveu ' + IntToStr(metros) + 'm.',mtInformation,[mbOK],0);
  //Messagebox( nome + ' moveu ' + IntToStr(metros) + 'm.');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Carro := Ttransporte.create;
Aviao := Ttransporte.create;

Carro.nome := 'Porsche 911';
Aviao.nome := 'Boing 747';

mover(Carro.nome,100);
mover(Aviao.nome,2500);

end;

end.
