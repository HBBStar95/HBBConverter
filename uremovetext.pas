unit uRemoveText;

{$mode Delphi}

interface

uses
  Classes, SysUtils;

function UseRemoveFromStartToText(aRow, aText: string; out aResult: string): boolean;
function UseRemoveTextToEnd(aRow, aText: string; out aResult: string): boolean;
function UseRemoveTextInText(aRow, aFromText, aToText: string; out aResult: string): boolean;
function UseRemoveText(aRow, aText: string; out aResult: string): boolean;
function UseRemoveNumberOfChars(aRow: string; aNumber: integer; out aResult: string): boolean;


implementation

function UseRemoveFromStartToText(aRow, aText: string; out aResult: string): boolean;
begin
  Result := (aText <> '') and (pos(aText, aRow) > 0);
  if Result then
    aResult := copy(aRow, pos(aText, aRow), length(aRow));
end;

function UseRemoveTextToEnd(aRow, aText: string; out aResult: string): boolean;
begin
  Result := (aText <> '') and (pos(aText, aRow) > 0);
  if Result then
    aResult := copy(aRow, 0, pos(aText, aRow) + length(aText) - 1);
end;

function UseRemoveTextInText(aRow, aFromText, aToText: string; out aResult: string): boolean;
var
  before: string;
  after: string;
  beforePos: integer;
  afterPos: integer;
begin

  Result := (pos(aFromText, aRow) > 0) and (pos(aToText, aRow) > 0);
  if Result then
  begin
    beforePos := pos(aFromText, aRow) - 1;
    afterPos := pos(aToText, aRow) + length(aToText);

    before := copy(aRow, 0, BeforePos);
    after := copy(aRow, AfterPos, length(aRow));

    aResult := before + after;
  end;

end;

function UseRemoveText(aRow, aText: string; out aResult: string): boolean;
begin
  Result := (pos(aText, aRow) > 0);
  if Result then
    aResult := StringReplace(aRow, aText, '', [rfReplaceAll]);
end;

function UseRemoveNumberOfChars(aRow: string; aNumber: integer; out aResult: string): boolean;
begin
  Result := False;
  if aNumber <= 0 then
    exit;

  aResult := copy(aRow, aNumber, length(aRow));
  Result := True;
end;


end.
