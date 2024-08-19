unit uCSV;

{$mode Delphi}

interface

uses
  Classes, SysUtils;

function GetColumnFromCSV(aRow, aColomn, aDelemiter: string; out aResult: string): boolean;

implementation

function GetColumnFromCSV(aRow, aColomn, aDelemiter: string; out aResult: string): boolean;
var
  stl:TStringlist;
  stlout:TStringlist;
  csvNo:string;
  i:integer;
begin
  stl:=TStringlist.Create();
  stlout:= Tstringlist.create();
  // Info : Hvis det er csv.
  if (aColomn <> '') and (aDelemiter <> '') then
  begin
    stl.Delimiter := aDelemiter[1];
    stl.DelimitedText := arow;
    stlout.Delimiter := stl.Delimiter;
    csvNo := aColomn + ',';
    for I := 0 to stl.Count - 1 do
    begin
      if pos(IntToStr(I + 1) + ',', csvNo) > 0 then
      begin
        stlout.Add(stl.Strings[I]);
      end;

      if stlout.Count > 0 then
        aRow := stlout.DelimitedText;
    end;
  end;
    FreeAndNil(stl);
    FreeAndNil(stlout);

  aResult := aRow;
  Result := True;
end;

end.
