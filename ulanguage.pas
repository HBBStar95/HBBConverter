unit uLanguage;

{$mode Delphi}

interface

uses
  Classes, SysUtils;

type
  TLanguage = class(TObject)
  private
    FPanelPreViewInfo: string;
    FPanelDataIn: string;
    FPanelDataOut: string;
    FButtonExit: string;
    FButtonExecute: string;
    FButtonOpenFile: string;
    FButtonRemoveFilter: string;
    FButtonFlipView: string;
    FButtonMultiSelect: string;
    FButtonHelp: string;
    FButtonCopy: string;
    FButtonPast: string;
    FButtonDelete: string;
    FButtonTrim: string;
    FButtonRemoveDuplicates: string;
    FButtonAddTabLeft: string;
    FButtonAlignTextRight: string;
    FMainMenuExit: string;
    FMainMenuOpenFile: string;
    FTabSheetMainHeader: string;
    FTabSheetMainPreText: string;
    FTabSheetMainRearText: string;
    FTabSheetMainReplaceBefore: string;
    FTabSheetMainReplaceAfter: string;
    FTabSheetMainTrimTextFromStart: string;
    FTabSheetMainFlipTextAroundThisText: string;
    FTabSheetMainDeleteStringFromEndLineAndSetOnNewLine: string;
    FTabSheetSubStringHeader: string;
    FTabSheetSubStringSelectTextFrom: string;
    FTabSheetSubStringSelectTextTo: string;
    FTabSheetSubStringPreTextOnSubString: string;
    FTabSheetSubStringRearTextOnSubString: string;
    FTabSheetSubStringInfo: string;
    FTabSheetSubStringInfoMessage: string;
    FTabSheetCaseRowAfterChange: string;
    FTabSheetCaseFirstCharInRow: string;
    FTabSheetCaseRowLowerCase: string;
    FTabSheetCaseRowUpperCase: string;
    FTabSheetCaseGoToNextLetteIfNotALetterRow: string;
    FTabSheetCaseSubString: string;
    FTabSheetCaseFirstCharInSubString: string;
    FTabSheetCaseSubStringLowerCase: string;
    FTabSheetCaseSubStringUpperCase: string;
    FTabSheetCaseGoToNextLetteIfNotALetterSubString: string;
    FTabSheetCSVHeader: string;
    FTabSheetCSVExtractColoumnNo: string;
    FTabSheetCSVDelimiter: string;
    FTabSheetClipHeader: string;
    FTabSheetClipClipTextFromStartToMatch: string;
    FTabSheetClipClipTextFromMatchToEndLine: string;
    FTabSheetClipClip: string;
    FTabSheetClipClipText: string;
    FFrom: string;
    FTo: string;
    FTabSheetMiscellaneousHeader:String;
    FTabSheetMiscellaneousSelectOnlyRowsContainingThis:String;
    FTabSheetMiscellaneousSum:String;
    FTabSheetMiscellaneousInsertConsecutiveNoAfter:String;
    FTabSheetMiscellaneousCreateNumberOfLinesPerInputLine:String;
    FTabSheetMiscellaneousIgnoreOtherRows:String;
    FTabSheetMiscellaneousSumAllLinesToATotal:String;

  public
  published
    property PanelPreViewInfo: string read FPanelPreViewInfo write FPanelPreViewInfo;
    property PanelDataIn: string read FPanelDataIn write FPanelDataIn;
    property PanelDataOut: string read FPanelDataOut write FPanelDataOut;
    property ButtonExit: string read FButtonExit write FButtonExit;
    property ButtonExecute: string read FButtonExecute write FButtonExecute;
    property ButtonOpenFile: string read FButtonOpenFile write FButtonOpenFile;
    property ButtonRemoveFilter: string read FButtonRemoveFilter write FButtonRemoveFilter;
    property ButtonFlipView: string read FButtonFlipView write FButtonFlipView;
    property ButtonMultiSelect: string read FButtonMultiSelect write FButtonMultiSelect;
    property ButtonHelp: string read FButtonHelp write FButtonHelp;
    property ButtonCopy: string read FButtonCopy write FButtonCopy;
    property ButtonPast: string read FButtonPast write FButtonPast;
    property ButtonDelete: string read FButtonDelete write FButtonDelete;
    property ButtonTrim: string read FButtonTrim write FButtonTrim;
    property ButtonRemoveDuplicates: string read FButtonRemoveDuplicates write FButtonRemoveDuplicates;
    property ButtonAddTabLeft: string read FButtonAddTabLeft write FButtonAddTabLeft;
    property ButtonAlignTextRight: string read FButtonAlignTextRight write FButtonAlignTextRight;
    property MainMenuExit: string read FMainMenuExit write FMainMenuExit;
    property MainMenuOpenFile: string read FMainMenuOpenFile write FMainMenuOpenFile;
    property TabSheetMainHeader: string read FTabSheetMainHeader write FTabSheetMainHeader;
    property TabSheetMainPreText: string read FTabSheetMainPreText write FTabSheetMainPreText;
    property TabSheetMainRearText: string read FTabSheetMainRearText write FTabSheetMainRearText;
    property TabSheetMainReplaceBefore: string read FTabSheetMainReplaceBefore write FTabSheetMainReplaceBefore;
    property TabSheetMainReplaceAfter: string read FTabSheetMainReplaceAfter write FTabSheetMainReplaceAfter;
    property TabSheetMainTrimTextFromStart: string read FTabSheetMainTrimTextFromStart write FTabSheetMainTrimTextFromStart;
    property TabSheetMainFlipTextAroundThisText: string read FTabSheetMainFlipTextAroundThisText write FTabSheetMainFlipTextAroundThisText;
    property TabSheetMainDeleteStringFromEndLineAndSetOnNewLine: string read FTabSheetMainDeleteStringFromEndLineAndSetOnNewLine write FTabSheetMainDeleteStringFromEndLineAndSetOnNewLine;
    property TabSheetSubStringHeader: string read FTabSheetSubStringHeader write FTabSheetSubStringHeader;
    property TabSheetSubStringSelectTextFrom: string read FTabSheetSubStringSelectTextFrom write FTabSheetSubStringSelectTextFrom;
    property TabSheetSubStringSelectTextTo: string read FTabSheetSubStringSelectTextTo write FTabSheetSubStringSelectTextTo;
    property TabSheetSubStringPreTextOnSubString: string read FTabSheetSubStringPreTextOnSubString write FTabSheetSubStringPreTextOnSubString;
    property TabSheetSubStringRearTextOnSubString: string read FTabSheetSubStringRearTextOnSubString write FTabSheetSubStringRearTextOnSubString;
    property TabSheetSubStringInfo: string read FTabSheetSubStringInfo write FTabSheetSubStringInfo;
    property TabSheetSubStringInfoMessage: string read FTabSheetSubStringInfoMessage write FTabSheetSubStringInfoMessage;
    property TabSheetCaseRowAfterChange: string read FTabSheetCaseRowAfterChange write FTabSheetCaseRowAfterChange;
    property TabSheetCaseFirstCharInRow: string read FTabSheetCaseFirstCharInRow write FTabSheetCaseFirstCharInRow;
    property TabSheetCaseRowLowerCase: string read FTabSheetCaseRowLowerCase write FTabSheetCaseRowLowerCase;
    property TabSheetCaseRowUpperCase: string read FTabSheetCaseRowUpperCase write FTabSheetCaseRowUpperCase;
    property TabSheetCaseGoToNextLetteIfNotALetterRow: string read FTabSheetCaseGoToNextLetteIfNotALetterRow write FTabSheetCaseGoToNextLetteIfNotALetterRow;
    property TabSheetCaseSubString: string read FTabSheetCaseSubString write FTabSheetCaseSubString;
    property TabSheetCaseFirstCharInSubString: string read FTabSheetCaseFirstCharInSubString write FTabSheetCaseFirstCharInSubString;
    property TabSheetCaseSubStringLowerCase: string read FTabSheetCaseSubStringLowerCase write FTabSheetCaseSubStringLowerCase;
    property TabSheetCaseSubStringUpperCase: string read FTabSheetCaseSubStringUpperCase write FTabSheetCaseSubStringUpperCase;
    property TabSheetCaseGoToNextLetteIfNotALetterSubString: string read FTabSheetCaseGoToNextLetteIfNotALetterSubString write FTabSheetCaseGoToNextLetteIfNotALetterSubString;


    property TabSheetCSVHeader: string read FTabSheetCSVHeader write FTabSheetCSVHeader;
    property TabSheetCSVExtractColoumnNo: string read FTabSheetCSVExtractColoumnNo write FTabSheetCSVExtractColoumnNo;
    property TabSheetCSVDelimiter: string read FTabSheetCSVDelimiter write FTabSheetCSVDelimiter;


    property TabSheetClipHeader: string read FTabSheetClipHeader write FTabSheetClipHeader;
    property TabSheetClipClipTextFromStartToMatch: string read FTabSheetClipClipTextFromStartToMatch write FTabSheetClipClipTextFromStartToMatch;
    property TabSheetClipClipTextFromMatchToEndLine: string read FTabSheetClipClipTextFromMatchToEndLine write FTabSheetClipClipTextFromMatchToEndLine;
    property TabSheetClipClip: string read FTabSheetClipClip write FTabSheetClipClip;
    property TabSheetClipClipText: string read FTabSheetClipClipText write FTabSheetClipClipText;


    property From: string read FFrom write FFrom;
    property To_: string read FTo write FTo;

    property TabSheetMiscellaneousHeader: string read FTabSheetMiscellaneousHeader write FTabSheetMiscellaneousHeader;
    property TabSheetMiscellaneousSelectOnlyRowsContainingThis: string read FTabSheetMiscellaneousSelectOnlyRowsContainingThis write FTabSheetMiscellaneousSelectOnlyRowsContainingThis;
    property TabSheetMiscellaneousSum: string read FTabSheetMiscellaneousSum write FTabSheetMiscellaneousSum;
    property TabSheetMiscellaneousInsertConsecutiveNoAfter: string read FTabSheetMiscellaneousInsertConsecutiveNoAfter write FTabSheetMiscellaneousInsertConsecutiveNoAfter;
    property TabSheetMiscellaneousCreateNumberOfLinesPerInputLine: string read FTabSheetMiscellaneousCreateNumberOfLinesPerInputLine write FTabSheetMiscellaneousCreateNumberOfLinesPerInputLine;
    property TabSheetMiscellaneousIgnoreOtherRows: string read FTabSheetMiscellaneousIgnoreOtherRows write FTabSheetMiscellaneousIgnoreOtherRows;
    property TabSheetMiscellaneousSumAllLinesToATotal: string read FTabSheetMiscellaneousSumAllLinesToATotal write FTabSheetMiscellaneousSumAllLinesToATotal;




  end;


implementation

end.
