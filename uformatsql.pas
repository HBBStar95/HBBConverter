unit uFormatSQL;

{$mode Delphi}
interface

uses
  Classes, SysUtils;

function FormatSQL(SQL: string): string;

implementation

function FormatSQL2(SQL: string): string;
var
  Keywords: array[0..8] of string = ('SELECT', 'FROM', 'WHERE', 'JOIN', 'ON', 'ORDER BY', 'GROUP BY', 'AND', 'OR');
  FormattedSQL, TempSQL: string;
  i: Integer;
  Line: string;
  Lines: TStringList;
begin
  TempSQL := SQL;

  // Tilføj linjeskift før hele nøgleord uden brug af regulære udtryk
  for i := Low(Keywords) to High(Keywords) do
    TempSQL := StringReplace(TempSQL, ' ' + Keywords[i] + ' ', sLineBreak + Keywords[i] + ' ', [rfReplaceAll, rfIgnoreCase]);

  Lines := TStringList.Create;
  try
    Lines.Text := TempSQL;
    FormattedSQL := '';

    // Juster linjerne med indrykning
    for i := 0 to Lines.Count - 1 do
    begin
      Line := Trim(Lines[i]);

      // Ingen indrykning for SELECT, FROM, WHERE, GROUP BY, ORDER BY
      if (Pos('SELECT', UpperCase(Line)) = 1) or
         (Pos('FROM', UpperCase(Line)) = 1) or
         (Pos('WHERE', UpperCase(Line)) = 1) or
         (Pos('GROUP BY', UpperCase(Line)) = 1) or
         (Pos('ORDER BY', UpperCase(Line)) = 1) then
      begin
        FormattedSQL := FormattedSQL + Line + sLineBreak;
      end
      // Én indrykning for JOIN, ON, AND, OR
      else if (Pos('JOIN', UpperCase(Line)) = 1) or
              (Pos('ON', UpperCase(Line)) = 1) or
              (Pos('AND', UpperCase(Line)) = 1) or
              (Pos('OR', UpperCase(Line)) = 1) then
      begin
        FormattedSQL := FormattedSQL + '  ' + Line + sLineBreak;
      end
      else
      begin
        // Ekstra indrykning for andre linjer
        FormattedSQL := FormattedSQL + '    ' + Line + sLineBreak;
      end;
    end;

    Result := Trim(FormattedSQL);
  finally
    Lines.Free;
  end;
end;

function FormatSQL(SQL: string): string;
var
  Keywords: array[0..8] of string = ('SELECT', 'FROM', 'WHERE', 'JOIN', 'ON', 'ORDER BY', 'GROUP BY', 'AND', 'OR');
  FormattedSQL, TempSQL: string;
  i: Integer;
  Line: string;
  Lines: TStringList;
begin
  TempSQL := SQL;

  // Insert line breaks before each keyword without using regular expressions
  for i := Low(Keywords) to High(Keywords) do
    TempSQL := StringReplace(TempSQL, ' ' + Keywords[i] + ' ', sLineBreak + Keywords[i] + ' ', [rfReplaceAll, rfIgnoreCase]);

  // Insert line breaks for inline subquery commas and keywords
  TempSQL := StringReplace(TempSQL, ', ', ',' + sLineBreak + '    ', [rfReplaceAll, rfIgnoreCase]);

  Lines := TStringList.Create;
  try
    Lines.Text := TempSQL;
    FormattedSQL := '';

    // Adjust lines with indentation
    for i := 0 to Lines.Count - 1 do
    begin
      Line := Trim(Lines[i]);

      // No indentation for SELECT, FROM, WHERE, GROUP BY, ORDER BY
      if (Pos('SELECT', UpperCase(Line)) = 1) or
         (Pos('FROM', UpperCase(Line)) = 1) or
         (Pos('WHERE', UpperCase(Line)) = 1) or
         (Pos('GROUP BY', UpperCase(Line)) = 1) or
         (Pos('ORDER BY', UpperCase(Line)) = 1) then
      begin
        FormattedSQL := FormattedSQL + Line + sLineBreak;
      end
      // One indentation for JOIN, ON, AND, OR
      else if (Pos('JOIN', UpperCase(Line)) = 1) or
              (Pos('ON', UpperCase(Line)) = 1) or
              (Pos('AND', UpperCase(Line)) = 1) or
              (Pos('OR', UpperCase(Line)) = 1) then
      begin
        FormattedSQL := FormattedSQL + '  ' + Line + sLineBreak;
      end
      // Extra indentation for comma-separated lines
      else if Line.StartsWith(',') then
      begin
        FormattedSQL := FormattedSQL + '    ' + Line + sLineBreak;
      end
      else
      begin
        // Default indentation for other lines
        FormattedSQL := FormattedSQL + '    ' + Line + sLineBreak;
      end;
    end;

    Result := Trim(FormattedSQL);
  finally
    Lines.Free;
  end;
end;




end.
