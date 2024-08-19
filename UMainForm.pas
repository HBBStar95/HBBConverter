unit UMainForm;

interface

uses
  SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls,
  StdCtrls, Buttons, Clipbrd, ComCtrls, Menus, Spin, uFlipText,
  uReplaceText, uSubRow, uCase, uCSV, uSequencesNo;

type

  { TFMainForm }

  TFMainForm = class(TForm)
    OpenDialog1: TOpenDialog;
    Panel2: TPanel;
    Panel20: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label9: TLabel;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Afslut1: TMenuItem;
    ools1: TMenuItem;
    Exetute1: TMenuItem;
    SpeedButton4: TSpeedButton;
    N1: TMenuItem;
    Gemsettings1: TMenuItem;
    N2: TMenuItem;
    benfil1: TMenuItem;
    Sletfilter1: TMenuItem;
    SpeedButton7: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label4: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Edit4: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit1: TEdit;
    TabSheet3: TTabSheet;
    Panel5: TPanel;
    Label7: TLabel;
    Bevel2: TBevel;
    CBRow: TCheckBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    CheckBox1: TCheckBox;
    Panel4: TPanel;
    Label3: TLabel;
    Bevel1: TBevel;
    CBSubString: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    CheckBox2: TCheckBox;
    TabSheet4: TTabSheet;
    Label14: TLabel;
    Label15: TLabel;
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
    TabSheet6: TTabSheet;
    Label31: TLabel;
    Edit5: TEdit;
    Label32: TLabel;
    Edit6: TEdit;
    Klip1: TMenuItem;
    Label33: TLabel;
    Panel1: TPanel;
    Label34: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Label35: TLabel;
    Panel3: TPanel;
    Label36: TLabel;
    Label37: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Panel14: TPanel;
    Label38: TLabel;
    Label39: TLabel;
    Edit12: TEdit;
    Edit13: TEdit;
    Label40: TLabel;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    ScrollBox1: TScrollBox;
    Label6: TLabel;
    EPreText: TEdit;
    Label5: TLabel;
    ERearText: TEdit;
    Label10: TLabel;
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
    Label12: TLabel;
    Panel7: TPanel;
    Label13: TLabel;
    EReplace01ToAfter: TEdit;
    EReplace01FromAfter: TEdit;
    Panel8: TPanel;
    Label17: TLabel;
    EReplace02ToAfter: TEdit;
    EReplace02FromAfter: TEdit;
    Label16: TLabel;
    SpinEdit1: TSpinEdit;
    Label21: TLabel;
    Edit20: TEdit;
    Label23: TLabel;
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
    SBDataInRemoveDubLines: TSpeedButton;
    Memo1: TMemo;
    Panel17: TPanel;
    PFunctionsDataOut: TPanel;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Memo2: TMemo;
    ListView2: TListView;
    SpeedButton2: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Removeemptyrows1: TMenuItem;
    TabSheet7: TTabSheet;
    ScrollBox2: TScrollBox;
    Label41: TLabel;
    ESelectOnlyRowsContainingThis: TEdit;
    CBIgnoreOtherRows: TCheckBox;
    ProgressBar1: TProgressBar;
    CBSumAllLines: TCheckBox;
    Label42: TLabel;
    Panel18: TPanel;
    Panel19: TPanel;
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
    Label24: TLabel;
    Label26: TLabel;
    SpinEdit3: TSpinEdit;
    procedure CBRowChange(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure RadioButton4Change(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DataChangePreView(Sender: TObject);
    procedure CBRowClick(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure Sletfilter1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
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
    procedure SBDataInRemoveDubLinesClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Removeemptyrows1Click(Sender: TObject);
    procedure SBLeftMaximizeClick(Sender: TObject);
    procedure SBRightMaximizeClick(Sender: TObject);
    procedure SBRightNormalClick(Sender: TObject);

  private
    { Private declarations }
    CountNo: integer;
    FShowLeftOnly: boolean;
    FShowRightOnly: boolean;
  public
    { Public declarations }
    procedure PreView();
    function FormatRow(aRow: string): string;

  published
    { published declarations }
    property ShowLeftOnly: boolean read FShowLeftOnly write FShowLeftOnly;
    property ShowRightOnly: boolean read FShowRightOnly write FShowRightOnly;
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

procedure TFMainForm.CBRowClick(Sender: TObject);
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
      if not CBIgnoreOtherRows.Checked then
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
    CBSubString.Checked, RadioButton1.Checked, CheckBox2.Checked,
    {out} pResult) then
    aRow := pResult;

  // Info : Insert pre an d rear text.
  // Note :
  aRow := EPreText.Text + aRow + ERearText.Text;


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
  if UseSetFirstLetterCase(aRow, CBRow.Checked, RadioButton3.Checked,
    CheckBox1.Checked, pResult) then
    aRow := pResult;
  if GetColumnFromCSV(aRow, Edit11.Text, ComboBox1.Text,{out}pResult) then
    aRow := pResult;


  // Info : Insæt fortløbene nr efter x
  // Note :
  if SetSequencesNo(Memo1.Text, Edit24.Text, SpinEdit2.Value,
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
  ListView2.Width := PanelWidth;

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
  SBDataInRemoveDubLines.Width := ButtonWidth;

end;

procedure TFMainForm.PFunctionsDataOutResize(Sender: TObject);
var
  ButtonWidth: integer;
begin
  ButtonWidth := (PFunctionsDataOut.Width div 4) -
    ((Panel17.BorderSpacing.Around + panel17.BorderSpacing.Around) div 2);
  SpeedButton10.Width := ButtonWidth;
  SpeedButton11.Width := ButtonWidth;
  SpeedButton12.Width := ButtonWidth;
  SpeedButton13.Width := ButtonWidth;

end;

procedure TFMainForm.PreView();
begin
  Memo1Change(nil);
end;

procedure TFMainForm.RadioButton4Click(Sender: TObject);
begin
  PreView();
end;

procedure TFMainForm.Removeemptyrows1Click(Sender: TObject);
var
  stl: TStringList;
  I: integer;
begin
  stl := TStringList.Create();
  for I := 0 to Memo1.Lines.Count - 1 do
    if trim(Memo1.Lines[I]) <> '' then
      stl.Add(Memo1.Lines[I]);

  Memo1.Text := stl.Text;

  stl.Free;

end;

procedure TFMainForm.Sletfilter1Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  ERearText.Text := '';
  EPreText.Text := '';
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
  CheckBox1.Checked := False;
  CheckBox2.Checked := False;
  CBRow.Checked := False;
  CBSubString.Checked := False;
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
  CBIgnoreOtherRows.Checked := False;

end;

procedure TFMainForm.SpeedButton10Click(Sender: TObject);
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

  for I := 0 to Memo2.Lines.Count - 1 do
    if length(Memo2.Lines[I]) > maxRowLength then
      maxRowLength := length(Memo2.Lines[I]);

  for I := 0 to Memo2.Lines.Count - 1 do
  begin
    row := Memo2.Lines[I];
    rowLength := length(row);
    // if rowLength < maxRowLength then
    begin
      for t := rowLength downto 1 do
        if row[t] = '''' then
        begin
          preString := copy(row, 0, t - 1);
          rearString := copy(row, t, rowLength);
          row := preString + copy(space, 0, maxRowLength - rowLength) + rearString;
          Memo2.Lines[I] := row;
          Break;
        end;
    end;
  end;
end;

procedure TFMainForm.SpeedButton11Click(Sender: TObject);
var
  I: integer;
begin
  for I := 0 to Memo2.Lines.Count - 1 do
    Memo2.Lines[I] := trim(Memo2.Lines[I]);

end;

procedure TFMainForm.SpeedButton12Click(Sender: TObject);
var
  I: integer;
begin
  for I := 0 to Memo2.Lines.Count - 1 do
    Memo2.Lines[I] := #9 + Memo2.Lines[I];
end;

procedure TFMainForm.SpeedButton13Click(Sender: TObject);
begin
  ClipBoard.AsText := Memo2.Text;
end;

procedure TFMainForm.SBDataInPastClick(Sender: TObject);
begin
  Memo1.Text := ClipBoard.AsText;
end;

procedure TFMainForm.SBDataInRemoveDubLinesClick(Sender: TObject);
var
  stl: TStringList;
  t, I: integer;
  Found: boolean;
  row: string;
begin

  stl := TStringList.Create();
  for I := 0 to Memo1.Lines.Count - 1 do
  begin
    Found := False;
    row := Memo1.Lines[I];
    for t := 0 to stl.Count - 1 do
      if stl.Strings[t] = row then
      begin
        Found := True;
        Break;
      end;

    if not Found then
      stl.Add(row);
  end;

  Memo1.Text := stl.Text;
  stl.Free;

end;

procedure TFMainForm.SBDataInCopyClick(Sender: TObject);
begin
  ClipBoard.AsText := Memo1.Text;
end;

procedure TFMainForm.SBDataInDeleteClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

procedure TFMainForm.SBDataInTrimClick(Sender: TObject);
var
  I: integer;
begin
  for I := 0 to Memo1.Lines.Count - 1 do
    Memo1.Lines[I] := trim(Memo1.Lines[I]);

end;

procedure TFMainForm.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFMainForm.SpeedButton2Click(Sender: TObject);
var
  I: integer;
begin

  if not Memo1.Visible then
  begin
    Memo1.Visible := True;
    ListView2.Visible := False;
  end
  else
  begin
    Memo1.Visible := False;
    ListView2.Align := alLeft;
    ListView2.Left := -100;
    ListView2.Width := Memo1.Width;
    ListView2.Visible := True;
    ListView2.Items.Clear;
    for I := 0 to Memo1.Lines.Count - 1 do
    begin
      with ListView2.Items.Add do
      begin
        Caption := Memo1.Lines[I];
      end;
    end;
  end;
  SBDataInCopy.Enabled := Memo1.Visible;
  SBDataInPast.Enabled := Memo1.Visible;
  SBDataInDelete.Enabled := Memo1.Visible;
  SBDataInTrim.Enabled := Memo1.Visible;
  SBDataInRemoveDubLines.Enabled := Memo1.Visible;
end;

procedure TFMainForm.SpeedButton3Click(Sender: TObject);

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
  panel20.Visible := False;
  ProgressBar1.Max := Memo1.Lines.Count - 1;
  ProgressBar1.Position := 0;
  ProgressBar1.Visible := True;
  Application.ProcessMessages;

  CountNo := SpinEdit2.Value;
  Memo2.Lines.Clear;

  if Memo1.Visible then
  begin
    for I := 0 to Memo1.Lines.Count - 1 do
    begin
      ProgressBar1.Position := I;
      ProgressBar1.Update;
      Memo2.Lines.Add(FormatRow(Memo1.Lines[I]));
    end;
  end
  else if ListView2.SelCount > 0 then
    for I := 0 to ListView2.Items.Count - 1 do
    begin
      ProgressBar1.Position := I;
      ProgressBar1.Update;

      if ListView2.Items[I].Selected then
        Memo2.Lines.Add(FormatRow(ListView2.Items[I].Caption))
      else
        Memo2.Lines.Add(ListView2.Items[I].Caption);
    end;

  if CBSumAllLines.Checked then
    Memo2.Lines.Add(Format('Total : %.2f', [GetTotalFromRows(Memo2)]));

  ProgressBar1.Visible := False;
end;

procedure TFMainForm.SpeedButton14Click(Sender: TObject);
begin
end;

procedure TFMainForm.Memo1Change(Sender: TObject);
var
  i: integer;
begin
  Memo2.Lines.Clear;
  panel20.Visible := True;
  for I := 0 to Memo1.Lines.Count - 1 do
  begin
    ProgressBar1.Position := I;
    ProgressBar1.Update;
    Memo2.Lines.Add(FormatRow(Memo1.Lines[I]));
    if i > 9 then
      break;
  end;

end;

procedure TFMainForm.RadioButton4Change(Sender: TObject);
begin
end;

procedure TFMainForm.CBRowChange(Sender: TObject);
begin
end;



procedure TFMainForm.SpeedButton4Click(Sender: TObject);
begin
  if not OpenDialog1.Execute then
    exit;

  Memo1.Lines.LoadFromFile(OpenDialog1.FileName);

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

procedure TFMainForm.SpeedButton7Click(Sender: TObject);
var
  tmp: string;
begin
  tmp := Memo2.Text;
  Memo2.Text := Memo1.Text;
  Memo1.Text := tmp;
  if ListView2.Visible then
    SpeedButton2Click(Sender);

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
