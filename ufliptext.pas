unit uFlipText;

{$mode Delphi}

interface

uses
  Classes, SysUtils, uRemoveText;

function FlipTextAroundThisText(aRow, aText, aRemoveTextEnd, aAddTextToEnd: string;
  out aResult: string): boolean;

implementation


function FlipTextAroundThisText(aRow, aText, aRemoveTextEnd, aAddTextToEnd: string;
  out aResult: string): boolean;
var
  pResult: string;
  preTekst: string;
  rearTekst: string;
begin
  Result := False;
  if aText = '' then
    exit;

  preTekst := copy(aRow, 0, pos(aText, aRow) - 1);
  rearTekst := copy(aRow, pos(aText, aRow) + length(aText), length(aRow));

  // Info : Remove flip text.
  if UseRemoveText(rearTekst, aText, pResult) then
    rearTekst := pResult;

  if UseRemoveTextToEnd(preTekst, aRemoveTextEnd, pResult) then
    preTekst := pResult;

  if aAddTextToEnd = '' then
    aResult := rearTekst + aText + preTekst + aRemoveTextEnd
  else
    aResult := rearTekst + aText + preTekst + aAddTextToEnd;
  Result := True;
end;

end.
