unit UValidacao;

interface

function ValidaCPF(textoCPF: string): boolean;
function ValidaCGC(textoCGC: string): boolean;
function RemoveAcento(Str:String): String;
function RoundNum(Valor:Extended;Decimais:Integer):Extended;

implementation

 {obs.: DV = DÌgito Verificador
        a mod b = o resto da divis„o de a por b
        textoCPF[pos]: uma string pode ser acessada como um vetor de chars }
const ordZero = ord('0');

function ValidaCPF(textoCPF: string): boolean;
var
    soma, somaDig, pos, resto: smallint;
begin
    Result := False;

    if length(textoCPF) < 11 then
        exit;

    soma := 0;
    somaDig := 0;
    for pos := 1 to 9 do begin
        soma := soma + (ord(textoCPF[pos]) - ordZero) * (11 - pos);
        somaDig := somaDig + (ord(textoCPF[pos]) - ordZero);
    end;

    resto := 11 - soma mod 11;
    if resto > 9 then resto := 0;

    if resto <> ord(textoCPF[10]) - ordZero then
        exit; { primeiro DV errado }

    soma := soma + somaDig + 2 * resto;
    resto := 11 - soma mod 11;
    if resto > 9 then resto := 0;

    if resto <> ord(textoCPF[11]) - ordZero then
        exit; { segundo DV errado }

    Result := True; { tudo certo }
end;

function ValidaCGC(textoCGC: string): boolean;
var
    soma, pos, resto: smallint;
begin
    Result := False;

    if length(textoCGC) < 14 then
        exit;

    { Faz ëëMÛdulo 11íí dos 12 primeiros dÌgitos }
    soma := 0;
    for pos := 12 downto 5 do { mult.: 2,3,..9 }
        soma := soma + (ord(textoCGC[pos]) - ordZero) * (14 - pos);

    for pos := 4 downto 1 do  { mult.: 2,3,..5 }
        soma := soma + (ord(textoCGC[pos]) - ordZero) * (6 - pos);

    resto := 11 - soma mod 11;
    if resto > 9 then resto := 0;

    if resto <> ord(textoCGC[13]) - ordZero then
        exit; { primeiro DV errado }

    { Faz ëëMÛdulo 11íí dos 13 primeiros dÌgitos }
    soma := 0;
    for pos := 13 downto 6 do { mult.: 2,3,..9 }
        soma := soma + (ord(textoCGC[pos]) - ordZero) * (15 - pos);

    for pos := 5 downto 1 do  { mult.: 2,3,..5 }
        soma := soma + (ord(textoCGC[pos]) - ordZero) * (7 - pos);

    resto := 11 - soma mod 11;
    if resto > 9 then resto := 0;

    if resto <> ord(textoCGC[14]) - ordZero then
        exit; { segundo DV errado }

    Result := True;
end;

function RemoveAcento(Str:String): String;
Const
ComAcento = '‡‚ÍÙ˚„ı·ÈÌÛ˙Á¸¿¬ ‘€√’¡…Õ”⁄«‹';
SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
Var
x : Integer;
Begin
For x := 1 to Length(Str) do
if Pos(Str[x],ComAcento)<>0 Then
Str[x] := SemAcento[Pos(Str[x],ComAcento)];
Result := Str;
end;

function RoundNum(Valor:Extended;Decimais:Integer):Extended;
{Quando houver,Arredonda uma possivel terceira casa decimal em uma vari·vel}
var
  I:Integer;
  Multiplicador:Integer;
begin
  if Decimais > 15 then
  begin
  Decimais := 15;
  end
  else if Decimais < 0 then
  begin
  Decimais := 0;
  end;
  Multiplicador := 1;
  for I:=1 to Decimais do
  begin
  Multiplicador := Multiplicador*10;
  end;
Result := round(Valor*Multiplicador)/Multiplicador;
end;


end.

