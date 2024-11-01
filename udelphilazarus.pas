unit uDelphiLazarus;

{$mode Delphi}

interface

uses
  Classes, SysUtils;

function DataToDelphiLazarusVar(aData: string; aSQLCode: boolean; aBreakLine: boolean): string;

implementation



function DataToDelphiLazarusVar(aData: string; aSQLCode: boolean; aBreakLine: boolean): string;
var
  stlIn: TStringList;
  stlOut: TStringList;
  t: integer;
begin
  stlIn := TStringList.Create();
  stlOut := TStringList.Create();
  stlin.Text := aData;

  if aSQLCode then
  begin
    for t := 0 to stlIn.Count - 1 do
    begin
      if t = 0 then
        stlOut.Add('Sql.Clear();');
      stlOut.Add('SQL.Add(''' + stlin.strings[t] + ''');');
    end;
  end
  else
    for t := 0 to stlIn.Count - 1 do
    begin
      if t = 0 then
        stlOut.Add('Result:='''';');
      if aBreakLine then
        stlOut.Add('Result:=Concat(Result,''''' + stlin.strings[t] + ''''',#13#10);')
      else
        stlOut.Add('Result:=Concat(Result,''''' + stlin.strings[t] + ''''');');

    end;

  Result := stlOut.Text;
  FreeAndNil(stlIn);
  FreeAndNil(stlOut);

end;

end.
