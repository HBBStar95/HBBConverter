unit uCase;

{$mode Delphi}

interface

uses
  Classes, SysUtils;

function UseSetFirstLetterCase(arow: string;
  aSetFirstLetterCase, aUpperCase, aUseNextCharIfNotaLetter: boolean;
  out aResult: string): boolean;

implementation

function UseSetFirstLetterCase(arow: string;
  aSetFirstLetterCase, aUpperCase, aUseNextCharIfNotaLetter: boolean;
  out aResult: string): boolean;
var
  nr: integer;
  i: integer;
begin
  Result := False;
  if not aSetFirstLetterCase then
    exit;

  if length(aRow) > 0 then
  begin
    nr := 1;
    if aUseNextCharIfNotaLetter then
      if pos(LowerCase(aRow[nr]), 'abcdefghijklmnopqrstuvwxyzæøå') <= 0 then
        for I := 1 to length(aRow) do
        begin
          nr := I;
          if pos(LowerCase(aRow[I]), 'abcdefghijklmnopqrstuvwxyzæøå') > 0 then
            Break;
        end;

    if aUpperCase then
      aRow[nr] := upCase(arow[nr])
    else
      aRow[nr] := LowerCase(arow[nr]);
  end;
  aResult := arow;
  Result := True;
end;

end.
