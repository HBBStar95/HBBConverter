unit uReplaceText;

{$mode Delphi}

interface

uses
  Classes, SysUtils;
function UseReplaceText(aRow, aFromText, aToText: string; out aResult: string): boolean;

implementation


function UseReplaceText(aRow, aFromText, aToText: string; out aResult: string): boolean;
begin
  aResult := StringReplace(aRow, aFromText, aToText, [rfReplaceAll]);
  Result := True;
end;

end.
