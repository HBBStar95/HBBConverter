unit uDetectTextFormat;

{$mode Delphi}

interface

uses
  Classes, SysUtils;
type
  TTextFormat = (tfUnknown, tfJSON, tfXML, tfSQL);
  function DetectTextFormat(const Text: string): TTextFormat;


implementation

function DetectTextFormat(const Text: string): TTextFormat;
var
  TrimmedText: string;
begin
  TrimmedText := Trim(Text);

  // Tjek for JSON format
  if ((TrimmedText.StartsWith('{') and TrimmedText.EndsWith('}')) or
      (TrimmedText.StartsWith('[') and TrimmedText.EndsWith(']'))) and
     (Pos(':', TrimmedText) > 0) then
  begin
    Exit(tfJSON);
  end;

  // Tjek for XML format
  if (TrimmedText.StartsWith('<') and TrimmedText.Contains('</')) then
  begin
    Exit(tfXML);
  end;

  // Tjek for SQL format
  if (Pos('SELECT', UpperCase(TrimmedText)) = 1) or
     (Pos('INSERT', UpperCase(TrimmedText)) = 1) or
     (Pos('UPDATE', UpperCase(TrimmedText)) = 1) or
     (Pos('DELETE', UpperCase(TrimmedText)) = 1) then
  begin
    Exit(tfSQL);
  end;

  // Hvis intet format kunne bestemmes
  Result := tfUnknown;
end;

end.

