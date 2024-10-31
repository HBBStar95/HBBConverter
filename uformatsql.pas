unit uFormatSQL;

{$mode Delphi}
interface

uses
  Classes, SysUtils;

function FormatSQL(aRow: string): string;

implementation


function FormatSQL(aRow: string): string;
var
  stl : TStringlist;
  t:integer;
begin
  stl := Tstringlist.create();
  Result := aRow;
  Result := StringReplace(upperCase(Result), 'SELECT', 'SELECT' + #13#10, [rfReplaceAll]);
  Result := StringReplace(upperCase(Result), 'FROM', #13#10+'FROM' + #13#10, [rfReplaceAll]);
  Result := StringReplace(upperCase(Result), 'AND', #13#10 + '   AND', [rfReplaceAll]);
  Result := StringReplace(upperCase(Result), ',', #13#10 + '   ,', [rfReplaceAll]);
  Result := StringReplace(upperCase(Result), 'WHERE', #13#10+'WHERE' + #13#10, [rfReplaceAll]);

  stl.Text := result;
  for t:=stl.Count-1 downto 0 do
   Begin
     if trim(stl.Strings[t])='' then
      stl.Delete(t);
   end;
  result := stl.Text;
    Result := StringReplace(upperCase(Result), ';', ';'+#13#10, [rfReplaceAll]);

end;

end.
