unit uFormatJSON;

{$mode Delphi}

interface

uses
  Classes, SysUtils;

function FormatJSON(aText: string; aTab: boolean): string;

implementation

function FormatJSON(aText: string; aTab: boolean): string;

  function getTabs(aNumberOfTabs: integer): string;
  var
    i: integer;
  begin
    Result := '';
    for i := 0 to aNumberOfTabs - 1 do
      if aTab then
        Result := Result + #9
      else
        Result := Result + '  ';
  end;

var
  t: integer;
  TabCount: integer;
begin
  aText := StringReplace(aText, #13#10, '', [rfReplaceAll]);
  Result := '';
  TabCount := 0;
  for t := 1 to length(aText) do
  begin
    if (aText[t] = '{') or (aText[t] = '[') then
    begin
      Result := Result + aText[t] + #13#10;
      Inc(TabCount);
      Result := Result + getTabs(TabCount);

    end
    else
    if (aText[t] = '}') or (aText[t] = ']') then
    begin
      Result := Result + #13#10;
      Dec(TabCount);
      if TabCount < 0 then
        TabCount := 0;
      Result := Result + getTabs(TabCount);
      Result := Result + aText[t];

    end
    else
    if aText[t] = ',' then
    begin
      Result := Result + aText[t] + #13#10;
      Result := Result + getTabs(TabCount);
    end
    else
      Result := Result + aText[t];
  end;
end;

end.
