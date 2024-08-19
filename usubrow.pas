unit uSubRow;

{$mode Delphi}

interface

uses
  Classes, SysUtils;

function UseSubString(aRow, aFromText, aToText, aPreTextSubLine,
  aRearTextSubLine: string;
  aChangeFirsChar, aUpperCase, aGoToNextIfNotALetter: boolean;
  out aRelease: string): boolean;

implementation

function UseSubString(aRow, aFromText, aToText, aPreTextSubLine,
  aRearTextSubLine: string;
  aChangeFirsChar, aUpperCase, aGoToNextIfNotALetter: boolean;
  out aRelease: string): boolean;
var
  subRow: string;
  nr: integer;
  i: integer;
begin

  Result := pos(aFromText, aRow) > 0;
  if not Result then
    exit;

  subRow := copy(aRow, pos(aFromText, aRow) + length(aFromText), length(aRow));
  if (aToText <> '') and (pos(aToText, subRow) > 0) then
    subRow := copy(subRow, 0, pos(aToText, subRow) - 1);


  if aChangeFirsChar then
    if length(subRow) > 0 then
    begin
      nr := 1;
      if aGoToNextIfNotALetter then
        if pos(LowerCase(subRow[nr]), 'abcdefghijklmnopqrstuvwxyzæøå') <= 0 then
          for I := 1 to length(subRow) do
          begin
            nr := I;
            if pos(LowerCase(subRow[I]), 'abcdefghijklmnopqrstuvwxyzæøå') > 0 then
              Break;
          end;

      if aUpperCase then
        subRow[nr] := UpCase(subRow[nr])
      else
        subRow[nr] := LowerCase(subRow[nr]);
    end;

    aRelease := aPreTextSubLine + subRow + aRearTextSubLine;

  if pos('{0}', aRow) > 0 then
    aRelease := StringReplace(aRow, '{0}', subRow, [rfIgnoreCase]);

  Result := True;

end;



end.
