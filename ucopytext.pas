unit uCopyText;

{$mode Delphi}

interface

uses
  Classes, SysUtils, uRemoveText;

function GetText(aRow, aFromText, aToText: string; out aResult: string): boolean;

implementation


function GetText(aRow, aFromText, aToText: string; out aResult: string): boolean;
var
  pText: string;
  tmp: string;
begin
  Result := False;
  if not UseRemoveFromStartToText(aRow, aFromText, pText) then
    exit;


  if not UseRemoveTextToEnd(pText, aToText,{out} aResult) then
    exit;

  Result := True;
end;


end.
