unit uSequencesNo;

{$mode Delphi}

interface

uses
  Classes, SysUtils;

function SetSequencesNo(aTextIn, aSetNoAfter: string; aStartNo,aNumber: integer;
  out aResult: string): boolean;

implementation


function SetSequencesNo(aTextIn, aSetNoAfter: string; aStartNo,aNumber: integer;
  out aResult: string): boolean;
var
  CountNo: integer;
  tmpRow :String;
  stl: TStringList;
  i:integer;
begin
  Result := False;
  if (aSetNoAfter = '') and (pos(aSetNoAfter, aTextIn) <= 0) then
    exit;
  stl := TStringList.Create();
  CountNo := aStartNo;
  for I := 0 to aNumber  do
  begin

    tmpRow := StringReplace(aTextIn, aSetNoAfter, aSetNoAfter + IntToStr(CountNo), []);
    Inc(CountNo);
    if I < aNumber then
      stl.Add(tmpRow);
  end;
  aResult:= stl.Text;
  result:= true;
  FreeAndNil(stl);

end;

end.
