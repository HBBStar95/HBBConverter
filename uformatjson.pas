unit uFormatJSON;

{$mode Delphi}

interface

uses
  Classes, SysUtils, fpjson, jsonparser;

function FormatJSON(const JSON: string): string;

implementation


function FormatJSON(const JSON: string): string;
var
  JSONData: TJSONData;
begin
  try
    JSONData := GetJSON(JSON);  // Læs JSON-strengen
    try
      Result := JSONData.FormatJSON([], 2);  // Formatér med 2 mellemrum for indryk
    finally
      JSONData.Free;
    end;

  except
    Result := JSON;
  end;
end;



end.
