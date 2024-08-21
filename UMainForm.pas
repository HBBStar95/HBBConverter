unit UMainForm;

interface

uses
  SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls,
  StdCtrls, Buttons, Clipbrd, ComCtrls, Menus, Spin, uFlipText,
  uReplaceText, uSubRow, uCase, uCSV, uSequencesNo, uSetup
  {$IFDEF WINDOWS}
  ,ShellApi
  , Windows
  {$ENDIF}
  {$IFDEF UNIX}
  ,Unix
  {$ENDIF}
  ;

type

  { TFMainForm }

  TFMainForm = class(TForm)
    OpenDialog1: TOpenDialog;
    Panel2: TPanel;
    PShowPreviewInfo: TPanel;
    SBExit: TSpeedButton;
    SBExecute: TSpeedButton;
    Label9: TLabel;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    MNAfslut: TMenuItem;
    ools1: TMenuItem;
    Exetute1: TMenuItem;
    SBOpenFile: TSpeedButton;
    N1: TMenuItem;
    Gemsettings1: TMenuItem;
    N2: TMenuItem;
    MNOpenFile: TMenuItem;
    Sletfilter1: TMenuItem;
    SBFlipViews: TSpeedButton;
    PageControl1: TPageControl;
    TSMain: TTabSheet;
    TSSubString: TTabSheet;
    LTSSubStringSelectTextFrom: TLabel;
    LTSSubStringSelectTextTo: TLabel;
    LTSSubStringPreTextOnSubString: TLabel;
    LTSSubStringRearTextOnSubString: TLabel;
    LTSSubStringInfo: TLabel;
    LTSSubStringInfoMessage: TLabel;
    Edit4: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit1: TEdit;
    TabSheet3: TTabSheet;
    Panel5: TPanel;
    LTSCaseRowAfterChange: TLabel;
    Bevel2: TBevel;
    CBTSCaseFirstCharInRow: TCheckBox;
    RBTSCaseRowUpperCase: TRadioButton;
    RBTSCaseRowLowerCase: TRadioButton;
    CBTSCaseGoToNextLetteIfNotALetterRow: TCheckBox;
    Panel4: TPanel;
    LTSCaseSubString: TLabel;
    Bevel1: TBevel;
    CBTSCaseFirstCharInSubString: TCheckBox;
    RBTSCaseSubStringUpperCase: TRadioButton;
    RBTSCaseSubStringLowerCase: TRadioButton;
    CBTSCaseGoToNextLetteIfNotALetterSubString: TCheckBox;
    TSCSV: TTabSheet;
    LTSCSVExtractColoumnNo: TLabel;
    LTSCSVDelimiter: TLabel;
    Edit11: TEdit;
    ComboBox1: TComboBox;
    SpeedButton5: TSpeedButton;
    View1: TMenuItem;
    Sidemenu1: TMenuItem;
    N3: TMenuItem;
    Main1: TMenuItem;
    Substring1: TMenuItem;
    Case1: TMenuItem;
    CSV1: TMenuItem;
    Gemtefiltre1: TMenuItem;
    N4: TMenuItem;
    TSClip: TTabSheet;
    LTSClipClipTextFromStartToMatch: TLabel;
    Edit5: TEdit;
    LTSClipClipTextFromMatchToEndLine: TLabel;
    Edit6: TEdit;
    Klip1: TMenuItem;
    LTSClipClip: TLabel;
    Panel1: TPanel;
    LTo3: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    LFrom3: TLabel;
    Panel3: TPanel;
    LTo2: TLabel;
    LFrom2: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Panel14: TPanel;
    LTo1: TLabel;
    LFrom1: TLabel;
    Edit12: TEdit;
    Edit13: TEdit;
    LTSClipClipText: TLabel;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    ScrollBox1: TScrollBox;
    LTSMainPreText: TLabel;
    ETSMainPreText: TEdit;
    LTSMainRearText: TLabel;
    ERearText: TEdit;
    LTSMainReplaceBefore: TLabel;
    Panel6: TPanel;
    Label11: TLabel;
    EReplace01ToBefore: TEdit;
    EReplace01FromBefore: TEdit;
    Panel9: TPanel;
    Label18: TLabel;
    EReplace02ToBefore: TEdit;
    EReplace02FromBefore: TEdit;
    Panel10: TPanel;
    Label19: TLabel;
    EReplace03ToBefore: TEdit;
    EReplace03FromBefore: TEdit;
    LTSMainReplaceAfter: TLabel;
    Panel7: TPanel;
    Label13: TLabel;
    EReplace01ToAfter: TEdit;
    EReplace01FromAfter: TEdit;
    Panel8: TPanel;
    Label17: TLabel;
    EReplace02ToAfter: TEdit;
    EReplace02FromAfter: TEdit;
    LTSMainTrimTextFromStart: TLabel;
    SpinEdit1: TSpinEdit;
    LTSMainFlipTextAroundThisText: TLabel;
    Edit20: TEdit;
    LTSMainDeleteStringFromEndLineAndSetOnNewLine: TLabel;
    Panel12: TPanel;
    Label22: TLabel;
    Edit21: TEdit;
    Edit22: TEdit;
    Panel11: TPanel;
    Label20: TLabel;
    EReplace03ToAfter: TEdit;
    EReplace03FromAfter: TEdit;
    Panel15: TPanel;
    Panel16: TPanel;
    PFunctionsDataIn: TPanel;
    SBDataInPast: TSpeedButton;
    SBDataInCopy: TSpeedButton;
    SBDataInDelete: TSpeedButton;
    SBDataInTrim: TSpeedButton;
    SBDataInRemoveDuplicates: TSpeedButton;
    MDataIn: TMemo;
    Panel17: TPanel;
    PFunctionsDataOut: TPanel;
    SBDataOutlignTextRight: TSpeedButton;
    SBDataOutTrim: TSpeedButton;
    SBDataOutAddTabLeft: TSpeedButton;
    SBDataOutCopy: TSpeedButton;
    MDataOut: TMemo;
    LVMultiselect: TListView;
    SBMultiSelect: TSpeedButton;
    SBHelp: TSpeedButton;
    SBRemoveFilter: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Removeemptyrows1: TMenuItem;
    TSMiscellaneous: TTabSheet;
    ScrollBox2: TScrollBox;
    LTSMiscellaneousSelectOnlyRowsContainingThis: TLabel;
    ESelectOnlyRowsContainingThis: TEdit;
    CBTSMiscellaneousIgnoreOtherRows: TCheckBox;
    ProgressBar1: TProgressBar;
    CBTSMiscellaneousSumAllLinesToATotal: TCheckBox;
    LTSMiscellaneousSum: TLabel;
    PDataIn: TPanel;
    PDataOut: TPanel;
    SBLeftMaximize: TSpeedButton;
    SBRightMaximize: TSpeedButton;
    SBLeftNormal: TSpeedButton;
    SBRightNormal: TSpeedButton;
    N5: TMenuItem;
    ShowonlyleftDatain1: TMenuItem;
    ShowonlyrightDataout1: TMenuItem;
    Shownormalview1: TMenuItem;
    Panel13: TPanel;
    Label25: TLabel;
    Edit24: TEdit;
    SpinEdit2: TSpinEdit;
    LTSMiscellaneousInsertConsecutiveNoAfter: TLabel;
    LTSMiscellaneousCreateNumberOfLinesPerInputLine: TLabel;
    SpinEdit3: TSpinEdit;
    procedure CBRowChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MDataInChange(Sender: TObject);
    procedure RadioButton4Change(Sender: TObject);
    procedure SBHelpClick(Sender: TObject);
    procedure SBExecuteClick(Sender: TObject);
    procedure SBExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SBOpenFileClick(Sender: TObject);
    procedure DataChangePreView(Sender: TObject);
    procedure CBTSCaseFirstCharInRowClick(Sender: TObject);
    procedure RBTSCaseRowLowerCaseClick(Sender: TObject);
    procedure Sletfilter1Click(Sender: TObject);
    procedure SBFlipViewsClick(Sender: TObject);
    procedure SBDataOutlignTextRightClick(Sender: TObject);
    procedure SBDataOutTrimClick(Sender: TObject);
    procedure SBDataOutAddTabLeftClick(Sender: TObject);
    procedure SBDataOutCopyClick(Sender: TObject);
    procedure SBDataInPastClick(Sender: TObject);
    procedure SBDataInCopyClick(Sender: TObject);
    procedure SBDataInDeleteClick(Sender: TObject);
    procedure SBDataInTrimClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Gemtefiltre1Click(Sender: TObject);
    procedure Main1Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure Substring1Click(Sender: TObject);
    procedure Case1Click(Sender: TObject);
    procedure CSV1Click(Sender: TObject);
    procedure Klip1Click(Sender: TObject);
    procedure PFunctionsDataInResize(Sender: TObject);
    procedure PFunctionsDataOutResize(Sender: TObject);
    procedure Panel15Resize(Sender: TObject);
    procedure SBDataInRemoveDuplicatesClick(Sender: TObject);
    procedure SBMultiSelectClick(Sender: TObject);
    procedure Removeemptyrows1Click(Sender: TObject);
    procedure SBLeftMaximizeClick(Sender: TObject);
    procedure SBRightMaximizeClick(Sender: TObject);
    procedure SBRightNormalClick(Sender: TObject);

  private
    { Private declarations }
    CountNo: integer;
    FShowLeftOnly: boolean;
    FShowRightOnly: boolean;
    FFlipedText: boolean;
  public
    { Public declarations }
    procedure PreView();
    function FormatRow(aRow: string): string;

  published
    { published declarations }
    property ShowLeftOnly: boolean read FShowLeftOnly write FShowLeftOnly;
    property ShowRightOnly: boolean read FShowRightOnly write FShowRightOnly;
    property FlipedText: boolean read FFlipedText write FFlipedText;
  end;

var
  FMainForm: TFMainForm;

implementation

{$R *.lfm}

uses uRemoveText, Themes;

procedure TFMainForm.Case1Click(Sender: TObject);
begin
  PageControl1.TabIndex := 2;
end;

procedure TFMainForm.CBTSCaseFirstCharInRowClick(Sender: TObject);
begin
end;

procedure TFMainForm.CSV1Click(Sender: TObject);
begin
  PageControl1.TabIndex := 3;
end;

procedure TFMainForm.DataChangePreView(Sender: TObject);
begin
  PreView();
end;

function TFMainForm.FormatRow(aRow: string): string;
var
  I: integer;
  tmpRow: string;
  preRow: string;
  pResult: string;
begin
  Result := '';
  if aRow = '' then
    exit;

  // Info : Indholder i linje.
  // Note :
  if ESelectOnlyRowsContainingThis.Text <> '' then
    if pos(ESelectOnlyRowsContainingThis.Text, aRow) <= 0 then
    begin
      if not CBTSMiscellaneousIgnoreOtherRows.Checked then
        Result := aRow;
      exit;
    end;

  preRow := aRow;

  // Info : Klip tekst væk fra start af linje
  // Note :
  if UseRemoveFromStartToText(aRow, Edit5.Text,{out}pResult) then
    aRow := pResult;

  // Info : Klip tekst væk fra slut af linje
  // Note :
  if UseRemoveTextToEnd(aRow, Edit6.Text,{out} pResult) then
    aRow := pResult;

  // Info : Klip tekst ud
  // Note :
  if UseRemoveTextInText(aRow, Edit13.Text, Edit12.Text, pResult) then
    aRow := pResult;

  // Info : Klip tekst ud
  // Note :
  if UseRemoveTextInText(aRow, Edit10.Text, Edit9.Text, pResult) then
    aRow := pResult;

  // Info : Klip tekst ud
  // Note :
  if UseRemoveTextInText(aRow, Edit8.Text, Edit7.Text, pResult) then
    aRow := pResult;

  // Info : Fjern tekst fra string linje 1
  // Note :
  if UseRemoveText(aRow, Edit14.Text,{out} pResult) then
    aRow := pResult;

  // Info : Fjern tekst fra string linje 2
  // Note :
  if UseRemoveText(aRow, Edit16.Text,{out} pResult) then
    aRow := pResult;

  // Info : Fjern tekst fra string linje 3
  // Note :
  if UseRemoveText(aRow, Edit15.Text,{out} pResult) then
    aRow := pResult;

  // Info : Flip tekst rundt om denne tekst
  // Note :
  if FlipTextAroundThisText(aRow, Edit20.Text, Edit22.Text, Edit21.Text, pResult) then
    aRow := pResult;


  if UseRemoveNumberOfChars(aRow, SpinEdit1.Value,{out}pResult) then
    aRow := pResult;

  if UseReplaceText(aRow, EReplace01FromBefore.Text,
    EReplace01ToBefore.Text,{out}pResult) then
    aRow := pResult;

  if UseReplaceText(aRow, EReplace02FromBefore.Text,
    EReplace02ToBefore.Text,{out}pResult) then
    aRow := pResult;

  if UseReplaceText(aRow, EReplace03FromBefore.Text,
    EReplace03ToBefore.Text,{out}pResult) then
    aRow := pResult;

  if UseSubString(aRow, Edit4.Text, Edit2.Text, Edit3.Text, Edit1.Text,
    CBTSCaseFirstCharInSubString.Checked, RBTSCaseSubStringUpperCase.Checked,
    CBTSCaseGoToNextLetteIfNotALetterSubString.Checked,
    {out} pResult) then
    aRow := pResult;

  // Info : Insert pre an d rear text.
  // Note :
  aRow := ETSMainPreText.Text + aRow + ERearText.Text;


  if UseReplaceText(aRow, EReplace01FromAfter.Text,
    EReplace01ToAfter.Text,{out}pResult) then
    aRow := pResult;
  if UseReplaceText(aRow, EReplace02FromAfter.Text,
    EReplace02ToAfter.Text,{out}pResult) then
    aRow := pResult;
  if UseReplaceText(aRow, EReplace03FromAfter.Text,
    EReplace03ToAfter.Text,{out}pResult) then
    aRow := pResult;


  // Info : Set første karakter til upper/Lower case
  // Note :
  if UseSetFirstLetterCase(aRow, CBTSCaseFirstCharInRow.Checked,
    RBTSCaseRowUpperCase.Checked, CBTSCaseGoToNextLetteIfNotALetterRow.Checked,
    pResult) then
    aRow := pResult;
  if GetColumnFromCSV(aRow, Edit11.Text, ComboBox1.Text,{out}pResult) then
    aRow := pResult;


  // Info : Insæt fortløbene nr efter x
  // Note :
  if SetSequencesNo(MDataIn.Text, Edit24.Text, SpinEdit2.Value,
    SpinEdit3.Value, pResult) then
    aRow := pResult;


  aRow := StringReplace(arow, '{1}', preRow, [rfReplaceAll]);
  Result := aRow;
end;

procedure TFMainForm.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TFMainForm.Gemtefiltre1Click(Sender: TObject);
begin
  PageControl1.TabIndex := 5;

end;

procedure TFMainForm.Klip1Click(Sender: TObject);
begin
  PageControl1.TabIndex := 4;
end;

procedure TFMainForm.Main1Click(Sender: TObject);
begin
  PageControl1.TabIndex := 0;
end;

procedure TFMainForm.SpinEdit1Change(Sender: TObject);
begin
end;

procedure TFMainForm.Panel15Resize(Sender: TObject);
var
  PanelWidth: integer;
begin
  if ShowLeftOnly or ShowRightOnly then
    PanelWidth := Panel15.Width //- (Panel15.Margins.Left + Panel15.Margins.Right)
  else
    PanelWidth := (Panel15.Width div 2);
  // - (Panel15.Margins.Left + Panel15.Margins.Right);
  Panel16.Width := PanelWidth;
  Panel17.Width := PanelWidth;
  LVMultiselect.Width := PanelWidth;
  LVMultiselect.Columns[0].Width := PanelWidth;

end;

procedure TFMainForm.PFunctionsDataInResize(Sender: TObject);
var
  ButtonWidth: integer;
begin
  ButtonWidth := (PFunctionsDataIn.Width div 5) -
    ((panel16.BorderSpacing.Around + panel16.BorderSpacing.Around) div 2);
  SBDataInCopy.Width := ButtonWidth;
  SBDataInPast.Width := ButtonWidth;
  SBDataInDelete.Width := ButtonWidth;
  SBDataInTrim.Width := ButtonWidth;
  SBDataInRemoveDuplicates.Width := ButtonWidth;

end;

procedure TFMainForm.PFunctionsDataOutResize(Sender: TObject);
var
  ButtonWidth: integer;
begin
  ButtonWidth := (PFunctionsDataOut.Width div 4) -
    ((Panel17.BorderSpacing.Around + panel17.BorderSpacing.Around) div 2);
  SBDataOutlignTextRight.Width := ButtonWidth;
  SBDataOutTrim.Width := ButtonWidth;
  SBDataOutAddTabLeft.Width := ButtonWidth;
  SBDataOutCopy.Width := ButtonWidth;

end;

procedure TFMainForm.PreView();
begin
  MDataInChange(nil);
end;

procedure TFMainForm.RBTSCaseRowLowerCaseClick(Sender: TObject);
begin
  PreView();
end;

procedure TFMainForm.Removeemptyrows1Click(Sender: TObject);
var
  stl: TStringList;
  I: integer;
begin
  stl := TStringList.Create();
  for I := 0 to MDataIn.Lines.Count - 1 do
    if trim(MDataIn.Lines[I]) <> '' then
      stl.Add(MDataIn.Lines[I]);

  MDataIn.Text := stl.Text;

  stl.Free;

end;

procedure TFMainForm.Sletfilter1Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  ERearText.Text := '';
  ETSMainPreText.Text := '';
  EReplace01ToBefore.Text := '';
  EReplace01FromBefore.Text := '';
  EReplace01ToAfter.Text := '';
  EReplace01FromAfter.Text := '';
  Edit11.Text := '';
  EReplace02ToAfter.Text := '';
  EReplace02FromAfter.Text := '';
  EReplace02ToBefore.Text := '';
  EReplace02FromBefore.Text := '';
  EReplace03ToBefore.Text := '';
  EReplace03FromBefore.Text := '';
  EReplace03ToAfter.Text := '';
  EReplace03FromAfter.Text := '';
  Edit20.Text := '';
  Edit21.Text := '';
  Edit22.Text := '';
  Edit24.Text := '';
  SpinEdit1.Value := 0;
  SpinEdit2.Value := 0;
  SpinEdit3.Value := 1;
  CBTSCaseGoToNextLetteIfNotALetterRow.Checked := False;
  CBTSCaseGoToNextLetteIfNotALetterSubString.Checked := False;
  CBTSCaseFirstCharInRow.Checked := False;
  CBTSCaseFirstCharInSubString.Checked := False;
  Edit24.Text := '';
  Edit5.Text := '';
  Edit6.Text := '';
  Edit13.Text := '';
  Edit10.Text := '';
  Edit8.Text := '';
  Edit12.Text := '';
  Edit9.Text := '';
  Edit7.Text := '';
  Edit14.Text := '';
  Edit16.Text := '';
  Edit15.Text := '';
  ESelectOnlyRowsContainingThis.Text := '';
  CBTSMiscellaneousIgnoreOtherRows.Checked := False;

end;

procedure TFMainForm.SBDataOutlignTextRightClick(Sender: TObject);
const
  space =
    '                                                                                                      ';
var
  maxRowLength: integer;
  I, t: integer;
  rowLength: integer;
  row: string;
  preString: string;
  rearString: string;
  ch: char;
  tmp: string;
begin
  tmp := InputBox('Højre stil ved char', 'Char', '''');
  if length(tmp) <= 0 then
    exit;
  ch := tmp[1];

  maxRowLength := 0;
  for I := 0 to MDataOut.Lines.Count - 1 do
    if length(MDataOut.Lines[I]) > maxRowLength then
      maxRowLength := length(MDataOut.Lines[I]);

  for I := 0 to MDataOut.Lines.Count - 1 do
  begin
    row := MDataOut.Lines[I];
    rowLength := length(row);
    // if rowLength < maxRowLength then
    begin
      for t := rowLength downto 1 do
        if row[t] = ch then
        begin
          preString := copy(row, 0, t - 1);
          rearString := copy(row, t, rowLength);
          row := preString + copy(space, 0, maxRowLength - rowLength) + rearString;
          MDataOut.Lines[I] := row;
          Break;
        end;
    end;
  end;
end;

procedure TFMainForm.SBDataOutTrimClick(Sender: TObject);
var
  I: integer;
begin
  for I := 0 to MDataOut.Lines.Count - 1 do
    MDataOut.Lines[I] := trim(MDataOut.Lines[I]);

end;

procedure TFMainForm.SBDataOutAddTabLeftClick(Sender: TObject);
var
  I: integer;
begin
  for I := 0 to MDataOut.Lines.Count - 1 do
    MDataOut.Lines[I] := #9 + MDataOut.Lines[I];
end;

procedure TFMainForm.SBDataOutCopyClick(Sender: TObject);
begin
  ClipBoard.AsText := MDataOut.Text;
end;

procedure TFMainForm.SBDataInPastClick(Sender: TObject);
begin
  MDataIn.Text := ClipBoard.AsText;
end;

procedure TFMainForm.SBDataInRemoveDuplicatesClick(Sender: TObject);
var
  stl: TStringList;
  t, I: integer;
  Found: boolean;
  row: string;
begin

  stl := TStringList.Create();
  for I := 0 to MDataIn.Lines.Count - 1 do
  begin
    Found := False;
    row := MDataIn.Lines[I];
    for t := 0 to stl.Count - 1 do
      if stl.Strings[t] = row then
      begin
        Found := True;
        Break;
      end;

    if not Found then
      stl.Add(row);
  end;

  MDataIn.Text := stl.Text;
  stl.Free;

end;

procedure TFMainForm.SBDataInCopyClick(Sender: TObject);
begin
  ClipBoard.AsText := MDataIn.Text;
end;

procedure TFMainForm.SBDataInDeleteClick(Sender: TObject);
begin
  MDataIn.Lines.Clear;
end;

procedure TFMainForm.SBDataInTrimClick(Sender: TObject);
var
  I: integer;
begin
  for I := 0 to MDataIn.Lines.Count - 1 do
    MDataIn.Lines[I] := trim(MDataIn.Lines[I]);

end;

procedure TFMainForm.SBExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFMainForm.SBMultiSelectClick(Sender: TObject);
var
  I: integer;
begin

  if not MDataIn.Visible then
  begin
    MDataIn.Visible := True;
    LVMultiselect.Visible := False;
  end
  else
  begin
    MDataIn.Visible := False;
    LVMultiselect.Align := alLeft;
    LVMultiselect.Left := -100;
    LVMultiselect.Width := MDataIn.Width;
    LVMultiselect.Visible := True;
    LVMultiselect.Items.Clear;
    for I := 0 to MDataIn.Lines.Count - 1 do
    begin
      with LVMultiselect.Items.Add do
      begin
        Caption := MDataIn.Lines[I];
      end;
    end;
  end;
  SBDataInCopy.Enabled := MDataIn.Visible;
  SBDataInPast.Enabled := MDataIn.Visible;
  SBDataInDelete.Enabled := MDataIn.Visible;
  SBDataInTrim.Enabled := MDataIn.Visible;
  SBDataInRemoveDuplicates.Enabled := MDataIn.Visible;
end;

procedure TFMainForm.SBExecuteClick(Sender: TObject);

  function GetTotalFromRows(aMemo: TMemo): real;
  var
    I: integer;
    number: string;
    row: string;
    t: integer;
  begin
    Result := 0;
    for I := 0 to aMemo.Lines.Count - 1 do
    begin
      row := aMemo.Lines[I];
      number := '';
      for t := 1 to length(row) do
      begin
        if pos(row[t], '1234567890,') > 0 then
          number := number + row[t];
      end;

      if number <> '' then
        Result := Result + StrToIntDef(number, 0);

    end;

  end;

var
  I: integer;
  row: string;
  subRow: string;
begin
  PShowPreviewInfo.Visible := False;
  ProgressBar1.Max := MDataIn.Lines.Count - 1;
  ProgressBar1.Position := 0;
  ProgressBar1.Visible := True;
  Application.ProcessMessages;

  CountNo := SpinEdit2.Value;
  MDataOut.Lines.Clear;

  if MDataIn.Visible then
  begin
    for I := 0 to MDataIn.Lines.Count - 1 do
    begin
      ProgressBar1.Position := I;
      ProgressBar1.Update;
      MDataOut.Lines.Add(FormatRow(MDataIn.Lines[I]));
    end;
  end
  else if LVMultiselect.SelCount > 0 then
    for I := 0 to LVMultiselect.Items.Count - 1 do
    begin
      ProgressBar1.Position := I;
      ProgressBar1.Update;

      if LVMultiselect.Items[I].Selected then
        MDataOut.Lines.Add(FormatRow(LVMultiselect.Items[I].Caption))
      else
        MDataOut.Lines.Add(LVMultiselect.Items[I].Caption);
    end;

  if CBTSMiscellaneousSumAllLinesToATotal.Checked then
    MDataOut.Lines.Add(Format('Total : %.2f', [GetTotalFromRows(MDataOut)]));

  ProgressBar1.Visible := False;
end;

procedure TFMainForm.SBHelpClick(Sender: TObject);
var
  URL: string;
begin
  URL := 'https://gitlab.com/Star95/format-rows/-/wikis/Format-rows';
  {$IFDEF WINDOWS}
  ShellExecute(0, 'open',PChar(URL) , nil, nil, SW_SHOWNORMAL);
  {$ENDIF}

  {$IFDEF LINUX}
    fpSystem('xdg-open ' + URL);
  {$ENDIF}

  {$IFDEF DARWIN}
    fpSystem('open ' + URL);
  {$ENDIF}
  //https://gitlab.com/Star95/format-rows/-/wikis/Format-rows
end;

procedure TFMainForm.MDataInChange(Sender: TObject);
var
  i: integer;
  setup: Tsetup;
begin
  setup := Tsetup.Create();
  if not setup.ShowPreview then
    exit;




  if FlipedText then
  begin
    FlipedText := False;
    exit;
  end;

  PShowPreviewInfo.Visible := True;

  MDataOut.Lines.Clear;

  if MDataIn.Visible then
  begin
    for I := 0 to MDataIn.Lines.Count - 1 do
    begin
      ProgressBar1.Position := I;
      ProgressBar1.Update;
      MDataOut.Lines.Add(FormatRow(MDataIn.Lines[I]));
      if i > setup.PreViewNumberOfRows - 1 then
        break;
    end;
  end
  else if LVMultiselect.SelCount > 0 then
    for I := 0 to LVMultiselect.Items.Count - 1 do
    begin
      ProgressBar1.Position := I;
      ProgressBar1.Update;

      if LVMultiselect.Items[I].Selected then
        MDataOut.Lines.Add(FormatRow(LVMultiselect.Items[I].Caption))
      else
        MDataOut.Lines.Add(LVMultiselect.Items[I].Caption);
      if i > setup.PreViewNumberOfRows - 1 then
        break;
    end;
end;

procedure TFMainForm.RadioButton4Change(Sender: TObject);
begin
end;

procedure TFMainForm.CBRowChange(Sender: TObject);
begin
end;

procedure TFMainForm.FormCreate(Sender: TObject);
var
  setup: Tsetup;
begin
  setup := Tsetup.Create();
  PShowPreviewInfo.Visible := setup.ShowPreview;
  PShowPreviewInfo.Caption := format(setup.Language.PanelPreViewInfo, [setup.PreViewNumberOfRows]);
  PDataIn.Caption := setup.Language.PanelDataIn;
  PDataOut.Caption := setup.Language.PanelDataOut;
  SBExit.Caption := setup.Language.ButtonExit;
  SBExecute.Caption := setup.Language.ButtonExecute;
  SBOpenFile.Caption := setup.Language.ButtonOpenFile;
  SBRemoveFilter.Caption := setup.Language.ButtonRemoveFilter;
  SBFlipViews.Caption := setup.Language.ButtonFlipView;
  SBMultiSelect.Caption := setup.Language.ButtonMultiSelect;
  SBHelp.Caption := setup.Language.ButtonHelp;
  SBDataInCopy.Caption := setup.Language.ButtonCopy;
  SBDataInPast.Caption := setup.Language.ButtonPast;
  SBDataInDelete.Caption := setup.Language.ButtonDelete;
  SBDataInTrim.Caption := setup.Language.ButtonTrim;
  SBDataInRemoveDuplicates.Caption := setup.Language.ButtonRemoveDuplicates;
  SBDataOutAddTabLeft.Caption := setup.Language.ButtonAddTabLeft;
  SBDataOutlignTextRight.Caption := setup.Language.ButtonAlignTextRight;
  SBDataOutCopy.Caption := setup.Language.ButtonCopy;
  SBDataOutTrim.Caption := setup.Language.ButtonTrim;
  // Info : Main menu
  // Note :
  MNAfslut.Caption := setup.Language.MainMenuExit;
  MNOpenFile.Caption := setup.Language.MainMenuOpenFile;
  // Info :Main
  // Note :
  TSMain.Caption := setup.Language.TabSheetMainHeader;
  LTSMainPreText.Caption := setup.Language.TabSheetMainPreText;
  LTSMainRearText.Caption := setup.Language.TabSheetMainRearText;
  LTSMainReplaceBefore.Caption := setup.Language.TabSheetMainReplaceBefore;
  LTSMainReplaceAfter.Caption := setup.Language.TabSheetMainReplaceAfter;
  LTSMainTrimTextFromStart.Caption := setup.Language.TabSheetMainTrimTextFromStart;
  LTSMainFlipTextAroundThisText.Caption :=
    setup.Language.TabSheetMainFlipTextAroundThisText;
  LTSMainDeleteStringFromEndLineAndSetOnNewLine.Caption :=
    setup.Language.TabSheetMainDeleteStringFromEndLineAndSetOnNewLine;
  // Info : Shop string
  // Note :
  TSSubString.Caption := setup.Language.TabSheetSubStringHeader;
  LTSSubStringSelectTextFrom.Caption := setup.Language.TabSheetSubStringSelectTextFrom;
  LTSSubStringSelectTextTo.Caption := setup.Language.TabSheetSubStringSelectTextTo;
  LTSSubStringPreTextOnSubString.Caption := setup.Language.TabSheetSubStringPreTextOnSubString;
  LTSSubStringRearTextOnSubString.Caption := setup.Language.TabSheetSubStringRearTextOnSubString;
  LTSSubStringInfo.Caption := setup.Language.TabSheetSubStringInfo;
  LTSSubStringInfoMessage.Caption := setup.Language.TabSheetSubStringInfoMessage;

  LTSCaseRowAfterChange.Caption := setup.Language.TabSheetCaseRowAfterChange;
  CBTSCaseFirstCharInRow.Caption := setup.Language.TabSheetCaseFirstCharInRow;
  RBTSCaseRowLowerCase.Caption := setup.Language.TabSheetCaseRowLowerCase;
  RBTSCaseRowUpperCase.Caption := setup.Language.TabSheetCaseRowUpperCase;
  CBTSCaseGoToNextLetteIfNotALetterRow.Caption := setup.Language.TabSheetCaseGoToNextLetteIfNotALetterRow;
  LTSCaseSubString.Caption := setup.Language.TabSheetCaseSubString;
  CBTSCaseFirstCharInSubString.Caption := setup.Language.TabSheetCaseFirstCharInSubString;
  RBTSCaseSubStringLowerCase.Caption := setup.Language.TabSheetCaseSubStringLowerCase;
  RBTSCaseSubStringUpperCase.Caption := setup.Language.TabSheetCaseSubStringUpperCase;
  CBTSCaseGoToNextLetteIfNotALetterSubString.Caption := setup.Language.TabSheetCaseGoToNextLetteIfNotALetterSubString;

  TSCSV.Caption := setup.Language.TabSheetCSVHeader;
  LTSCSVExtractColoumnNo.Caption := setup.Language.TabSheetCSVExtractColoumnNo;
  LTSCSVDelimiter.Caption := setup.Language.TabSheetCSVDelimiter;
  TSClip.Caption := setup.Language.TabSheetClipHeader;
  LTSClipClipTextFromStartToMatch.Caption := setup.Language.TabSheetClipClipTextFromStartToMatch;
  LTSClipClipTextFromMatchToEndLine.Caption := setup.Language.TabSheetClipClipTextFromMatchToEndLine;
  LTSClipClip.Caption := setup.Language.TabSheetClipClip;
  LTSClipClipText.Caption := setup.Language.TabSheetClipClipText;

  LFrom1.Caption := setup.Language.From;
  LFrom2.Caption := setup.Language.From;
  LFrom3.Caption := setup.Language.From;
  LTo1.Caption := setup.Language.To_;
  LTo2.Caption := setup.Language.To_;
  LTo3.Caption := setup.Language.To_;

  TSMiscellaneous.Caption:=setup.Language.TabSheetMiscellaneousHeader;
  LTSMiscellaneousSelectOnlyRowsContainingThis.Caption:=setup.Language.TabSheetMiscellaneousSelectOnlyRowsContainingThis;
  LTSMiscellaneousSum.Caption:=setup.Language.TabSheetMiscellaneousSum;
  LTSMiscellaneousInsertConsecutiveNoAfter.caption:=setup.Language.TabSheetMiscellaneousInsertConsecutiveNoAfter;
  LTSMiscellaneousCreateNumberOfLinesPerInputLine.caption:=setup.Language.TabSheetMiscellaneousCreateNumberOfLinesPerInputLine;
  CBTSMiscellaneousIgnoreOtherRows.caption :=setup.Language.TabSheetMiscellaneousIgnoreOtherRows;
  CBTSMiscellaneousSumAllLinesToATotal.caption :=setup.Language.TabSheetMiscellaneousSumAllLinesToATotal;
end;


procedure TFMainForm.SBOpenFileClick(Sender: TObject);
begin
  if not OpenDialog1.Execute then
    exit;

  MDataIn.Lines.LoadFromFile(OpenDialog1.FileName);

end;

procedure TFMainForm.SpeedButton5Click(Sender: TObject);
begin
  PageControl1.Visible := not PageControl1.Visible;
end;

procedure TFMainForm.SBLeftMaximizeClick(Sender: TObject);
begin
  ShowLeftOnly := True;
  SBLeftNormal.Visible := True;
  SBLeftMaximize.Visible := False;

  Panel16.Visible := True;
  Panel17.Visible := False;

  Panel15Resize(Sender);
end;

procedure TFMainForm.SBFlipViewsClick(Sender: TObject);
var
  tmp: string;
begin
  FlipedText := True;
  PShowPreviewInfo.Visible := False;
  tmp := MDataOut.Text;
  MDataOut.Text := MDataIn.Text;
  MDataIn.Text := tmp;
  if LVMultiselect.Visible then
    SBMultiSelectClick(Sender);

end;

procedure TFMainForm.SBRightMaximizeClick(Sender: TObject);
begin
  ShowRightOnly := True;
  Panel16.Visible := False;
  Panel17.Visible := True;
  SBRightMaximize.Visible := False;
  SBRightNormal.Visible := True;
  Panel15Resize(Sender);

end;

procedure TFMainForm.SBRightNormalClick(Sender: TObject);
begin
  ShowLeftOnly := False;
  ShowRightOnly := False;
  Panel16.Visible := True;
  Panel17.Visible := True;
  Panel15Resize(Sender);
  SBRightMaximize.Visible := True;
  SBRightNormal.Visible := False;
  SBLeftMaximize.Visible := True;
  SBLeftNormal.Visible := False;
end;


procedure TFMainForm.Substring1Click(Sender: TObject);
begin
  PageControl1.TabIndex := 1;
end;

end.
