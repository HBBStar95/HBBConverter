unit uSetup;

{$mode Delphi}

interface

uses
  Classes, SysUtils, uLanguage, IniFiles;

type
  TSetup = class(TObject)
  private
    procedure LoadSettings();

  class var _instance: TSetup;
  public
    ShowPreview: boolean;
    PreViewNumberOfRows: integer;
    LanguageFileName: string;
    Language: TLanguage;
    function GetSettingsFilePath: string;
    class function Create: TSetup;
    destructor Destroy; override;
  end;


implementation


procedure TSetup.LoadSettings();
var
  Ini: TIniFile;

  function getBoolean(Section, Ident: string; Default: boolean): boolean;
  begin
    if INI.valueexists(Section, Ident) then
      Result := INI.ReadBool(Section, Ident, Default)
    else
    begin
      Result := Default;
      INI.WriteBool(Section, Ident, Default);
    end;
  end;

  function getInteger(Section, Ident: string; Default: integer): integer;
  begin
    if INI.valueexists(Section, Ident) then
      Result := INI.readInteger(Section, Ident, Default)
    else
    begin
      Result := Default;
      INI.WriteInteger(Section, Ident, Default);
    end;

  end;

  function getString(Section, Ident, Default: string): string;
  begin
    if INI.valueexists(Section, Ident) then
      Result := INI.ReadString(Section, Ident, Default)
    else
    begin
      Result := Default;
      INI.WriteString(Section, Ident, Default);
    end;

  end;

begin
  self.Language := TLanguage.Create();
  Ini := TIniFile.Create(Format(GetSettingsFilePath, ['settings.ini']));
  try
    ShowPreview := getBoolean('Setup', 'ShowPreview', True);
    PreViewNumberOfRows := getInteger('Setup', 'PreViewNumberOfRows', 10);
    LanguageFileName := getString('Setup', 'LanguageFileName', 'en-GB.ini');
  finally
    Ini.Free;
  end;

  Ini := TIniFile.Create(Format(GetSettingsFilePath, [LanguageFileName]));
  try
    // Info : Panels
    Language.PanelPreViewInfo :=
      getString('Panel', 'PreViewInfo', 'Preview only %d rows.');
    Language.PanelDataIn := getString('Panel', 'DataIn', 'Data in');
    Language.PanelDataOut := getString('Panel', 'DataOut', 'Data out');
    // Info : Buttons
    Language.ButtonExit := getString('Button', 'Exit', 'Exit');
    Language.ButtonExecute := getString('Button', 'Execute', 'Execute');
    Language.ButtonOpenFile := getString('Button', 'OpenFile', 'Open file');
    Language.ButtonRemoveFilter := getString('Button', 'RemoveFilter', 'Remove filter');
    Language.ButtonFlipView := getString('Button', 'FlipView', 'Flip view');
    Language.ButtonMultiSelect := getString('Button', 'MultiSelect', 'Multi Select');
    Language.ButtonHelp := getString('Button', 'Help', 'Help');
    Language.ButtonCopy := getString('Button', 'Copy', 'Copy');
    Language.ButtonPast := getString('Button', 'Past', 'Past');
    Language.ButtonDelete := getString('Button', 'Delete', 'Delete');
    Language.ButtonTrim := getString('Button', 'Trim', 'Trim');
    Language.ButtonRemoveDuplicates := getString('Button', 'RemoveDuplicates', 'Remove dup.');
    Language.ButtonAddTabLeft := getString('Button', 'AddTabLeft', 'Tab left');
    Language.ButtonAlignTextRight := getString('Button', 'AlignTextRight', 'Align right');
    // Info : Main menu
    Language.MainMenuFile:= getString('MainMenu', 'File', 'File');
    Language.MainMenuExit := getString('MainMenu', 'Exit', 'Exit');
    Language.MainMenuOpenFile := getString('MainMenu', 'OpenFile', 'Open file');
    Language.MainMenutools:= getString('MainMenu', 'Tools', 'Tools');
    Language.MainMenuExecute:= getString('MainMenu', 'Execute', 'Execute');
    Language.MainMenuRemoveFilter:= getString('MainMenu', 'RemoveFilter', 'Remove filter');
    Language.MainMenuView:= getString('MainMenu', 'View', 'View');
    Language.MainMenuShowHideFilter:= getString('MainMenu', 'ShowHideFilter', 'Filter (Show/Hide)');
    Language.MainMenuShowDataIn:= getString('MainMenu', 'ShowDataIn', 'Show only left (Data in)');
    Language.MainMenuShowDataOut:= getString('MainMenu', 'ShowDataOut', 'Show only right (Data Out)');
    Language.MainMenuNormalView:= getString('MainMenu', 'NormalView', 'Normal view');

    // Info : TabSheet
    Language.TabSheetMainHeader := getString('TabSheetMain', 'Header', 'Main');
    Language.TabSheetMainPreText := getString('TabSheetMain', 'PreText', 'Pre text');
    Language.TabSheetMainRearText := getString('TabSheetMain', 'RearText', 'Rear text');
    Language.TabSheetMainReplaceBefore := getString('TabSheetMain', 'ReplaceBefore', 'Replace (Before)');
    Language.TabSheetMainReplaceAfter := getString('TabSheetMain', 'ReplaceAfter', 'Replace (After)');
    Language.TabSheetMainTrimTextFromStart := getString('TabSheetMain', 'TrimTextFromStart', 'Trim text from start.');
    Language.TabSheetMainFlipTextAroundThisText := getString('TabSheetMain', 'FlipTextAroundThisText', 'Flip texst around this text (Before)');
    Language.TabSheetMainDeleteStringFromEndLineAndSetOnNewLine := getString('TabSheetMain', 'DeleteStringFromEndLineAndSetOnNewLine', 'Delete string from end line, and set on new line.');

    Language.TabSheetSubStringHeader := getString('TabSheetSubString', 'Header', 'SubString');
    Language.TabSheetSubStringSelectTextFrom := getString('TabSheetSubString', 'SelectTextFrom', 'Select text from');
    Language.TabSheetSubStringSelectTextTo := getString('TabSheetSubString', 'SelectTextTo', 'Select text to');
    Language.TabSheetSubStringPreTextOnSubString := getString('TabSheetSubString', 'PreTextOnSubString', 'Pre text on sub string');
    Language.TabSheetSubStringRearTextOnSubString := getString('TabSheetSubString', 'RearTextOnSubString', 'Rear text on sub string');
    Language.TabSheetSubStringInfo := getString('TabSheetSubString', 'Info', 'Info');
    Language.TabSheetSubStringInfoMessage := getString('TabSheetSubString', 'InfoMessage', 'By adding {1}, before line will be insertet.');

    Language.TabSheetCaseRowAfterChange := getString('TabSheetCase', 'RowAfterChange', 'Row after change');
    Language.TabSheetCaseFirstCharInRow := getString('TabSheetCase', 'FirstCharInRow', 'First char in row');
    Language.TabSheetCaseRowLowerCase := getString('TabSheetCase', 'RowLowerCase', 'Lower case');
    Language.TabSheetCaseRowUpperCase := getString('TabSheetCase', 'RowUpperCase', 'Upper case');
    Language.TabSheetCaseGoToNextLetteIfNotALetterRow := getString('TabSheetCase', 'GoToNextLetteIfNotALetterRow', 'Go to next , if not a letter.');
    Language.TabSheetCaseSubString := getString('TabSheetCase', 'SubString', 'SubString');
    Language.TabSheetCaseFirstCharInSubString := getString('TabSheetCase', 'FirstCharInSubString', 'First char in substring.');
    Language.TabSheetCaseSubStringLowerCase := getString('TabSheetCase', 'SubStringLowerCase', 'Lower case');
    Language.TabSheetCaseSubStringUpperCase := getString('TabSheetCase', 'SubStringUpperCase', 'Upper case');
    Language.TabSheetCaseGoToNextLetteIfNotALetterSubString := getString('TabSheetCase', 'GoToNextLetteIfNotALetterSubString', 'Go to next, if not a letter.');

    Language.TabSheetCSVHeader := getString('TabSheetCSV', 'Header', 'CSV');
    Language.TabSheetCSVExtractColoumnNo := getString('TabSheetCSV', 'ExtractColoumnNo', 'Extract coloumn no (1,2,3)');
    Language.TabSheetCSVDelimiter := getString('TabSheetCSV', 'Delimiter', 'Delimiter');

    Language.TabSheetClipHeader := getString('TabSheetClip', 'Header', 'Clip');
    Language.TabSheetClipClipTextFromStartToMatch := getString('TabSheetClip', 'ClipTextFromStartToMatch', 'Clip text, from start to match.');
    Language.TabSheetClipClipTextFromMatchToEndLine := getString('TabSheetClip', 'ClipTextFromMatchToEndLine', 'Clip text, from match to end of line.');
    Language.TabSheetClipClip := getString('TabSheetClip', 'Clip', 'Clip (Before)');

    Language.TabSheetClipClipText := getString('TabSheetClip', 'ClipText', 'Clip text (Before)');

    Language.From := getString('Global', 'From', 'From');
    Language.To_ := getString('Global', 'To', 'To');

    Language.TabSheetMiscellaneousHeader := getString('TabSheetMiscellaneous', 'Header', 'Miscellaneous');
    Language.TabSheetMiscellaneousSelectOnlyRowsContainingThis := getString('TabSheetMiscellaneous', 'TabSheetMiscellaneousSelectOnlyRowsContainingThis', 'Select only rows containing this.');
    Language.TabSheetMiscellaneousSum := getString('TabSheetMiscellaneous', 'TabSheetMiscellaneousSum', 'Sum');
    Language.TabSheetMiscellaneousInsertConsecutiveNoAfter := getString('TabSheetMiscellaneous', 'TabSheetMiscellaneousInsertConsecutiveNoAfter', 'Insert consecutive no after.');
    Language.TabSheetMiscellaneousCreateNumberOfLinesPerInputLine := getString('TabSheetMiscellaneous', 'TabSheetMiscellaneousCreateNumberOfLinesPerInputLine', 'Create number of lines per input line.');
    Language.TabSheetMiscellaneousIgnoreOtherRows := getString('TabSheetMiscellaneous', 'TabSheetMiscellaneousIgnoreOtherRows', 'Ignore other rows.');
    Language.TabSheetMiscellaneousSumAllLinesToATotal := getString('TabSheetMiscellaneous', 'TabSheetMiscellaneousSumAllLinesToATotal', 'Sum all lines to a total.');


  finally
    Ini.Free;
  end;

end;

class function TSetup.Create: TSetup;
begin
  if (_instance = nil) then
  begin
    _instance := inherited Create as Self;
    _instance.LoadSettings();
  end;
  Result := _instance;
end;

destructor TSetup.Destroy;
begin
  _instance := nil;
  inherited;
end;

function TSetup.GetSettingsFilePath: string;
var
  SettingsDir: string;
begin
  {$IFDEF Windows}
  SettingsDir := GetEnvironmentVariable('APPDATA'); // Dette vil returnere AppData\Roaming mappen.
  SettingsDir := IncludeTrailingPathDelimiter(SettingsDir) + 'FormatRows';
  {$ENDIF}

  {$IFDEF Linux}
  SettingsDir := GetEnvironmentVariable('HOME'); // Dette vil returnere brugerens hjemmemappe.
  SettingsDir := IncludeTrailingPathDelimiter(SettingsDir) + '.FormatRows';
  {$ENDIF}

  {$IFDEF Darwin}
 // macOS bruger 'Darwin' som systemidentifiering
  SettingsDir := GetEnvironmentVariable('HOME'); // Henter brugerens hjemmemappe.
  SettingsDir := IncludeTrailingPathDelimiter(SettingsDir) + 'Library/Application Support/FormatRows';
  {$ENDIF}

  // Opret mappen, hvis den ikke findes
  if not DirectoryExists(SettingsDir) then
    MkDir(SettingsDir);

  Result := IncludeTrailingPathDelimiter(SettingsDir) + '%s';
end;

end.
