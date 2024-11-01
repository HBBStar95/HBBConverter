unit uCSharpJava;

{$mode Delphi}

interface

uses
  Classes, SysUtils;

function DataToCSharpJavaVar(aData: string; aBreakLine: boolean): string;

implementation

function DataToCSharpJavaVar(aData: string; aBreakLine: boolean): string;
var
  stlIn: TStringList;
  stlOut: TStringList;
  t: integer;
begin
  stlIn := TStringList.Create();
  stlOut := TStringList.Create();
  stlin.Text := aData;

  for t := 0 to stlIn.Count - 1 do
  begin
    if t = 0 then
      stlOut.Add('String result = "";');
    if aBreakLine then
      stlOut.Add('result = result+"' + stlin.strings[t] + '\n";')
    else
      stlOut.Add('result = result+"' + stlin.strings[t] + '";');
  end;

  Result := stlOut.Text;
  FreeAndNil(stlIn);
  FreeAndNil(stlOut);

end;

end.
