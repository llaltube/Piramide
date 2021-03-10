unit UfrmPiramide;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ComCtrls;

type
  TfrmPiramide = class(TForm)
    EdtNumero: TEdit;
    BtnGerar: TButton;
    UpDown1: TUpDown;
    Label1: TLabel;
    Memo: TMemo;
    procedure BtnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPiramide: TfrmPiramide;

implementation

{$R *.dfm}

function espacos(quant : integer) : integer;
var
  y, w, contador : integer ;
  conjunto : integer ;
begin
//1,2,3,4,5,6,7, 8, 9,10,11, número
//0,1,3,4,6,7,9,10,12,13,15  espaços
  y := -1;
  conjunto := 0 ;
  contador := 1;
  for w := 2 to quant do
  begin
    if contador = 2 then
    begin
       contador := 1 ;
       y := y + 1 ;
    end
    else
       contador := contador  + 1 ;

    conjunto := ( y + w );
  end;
  result := conjunto ;
end;
{
  1     0    -1        0  -  1 = -1       -1 -  1 =     0
  2     1    -1        1  -  2 = -1       -1 -  2 =     1
  3     3     0        3  -  3 =  0        0 +  3 =     3
  4     4     0        4  -  4 =  0        0 +  4 =     4
  5     6     1        6  -  5 =  1        1 +  5 =     6
  6     7     1        7  -  6 =  1        1 +  6 =     7
  7     9     2        9  -  7 =  2        2 +  7 =     9
  8    10     2       10  -  8 =  2        2 +  8 =    10
  9    12     3       12  -  9 =  3        3 +  9 =    12
 10    13     3       13  - 10 =  3        3 + 10 =    13
 11    15     4       15  - 11 =  4        4 + 11 =    15
 }
//1,2,3,4,5,6,7, 8, 9,10,11, número
//0,1,3,4,6,7,9,10,12,13,15  espaços

procedure TfrmPiramide.BtnGerarClick(Sender: TObject);
var
  x ,z,a : integer ;
  linha : string ;
  astericos : string ;
begin
   Memo.Lines.Clear;

   if strtoint(EdtNumero.Text) < 1 then
      Exit ;

   linha :='';
   z     := strtoint(EdtNumero.Text) ;
   for x:= z downto 1 do
   begin
       linha :=StringOfChar(' ', espacos(x)) ;
       astericos := astericos +'*  ';
       linha := linha +astericos;
       Memo.Lines.Add(linha) ;
       linha :='';
   end;
end;

end.
