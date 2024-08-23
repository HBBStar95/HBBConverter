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
    FMainMenuFile: string;
    FMainMenuExit: string;
    FMainMenuOpenFile: string;
    FMainMenuTools: string;
    FMainMenuExecute: string;
    FMainMenuRemoveFilter: string;
    FMainMenuView: string;
    FMainMenuShowHideFilter: string;
    FMainMenuShowDataIn: string;
    FMainMenuShowDataOut: string;
    FMainMenuInsertCode: string;
    FMainMenuTheEntireStartingLine: string;
    FMainMenuCopyTextTo:String;

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
    FCopy: string;
    FInfo: string;
    FTabSheetMiscellaneousHeader: string;
    FTabSheetMiscellaneousSelectOnlyRowsContainingThis: string;
    FTabSheetMiscellaneousSum: string;
    FTabSheetMiscellaneousInsertConsecutiveNoAfter: string;
    FTabSheetMiscellaneousCreateNumberOfLinesPerInputLine: string;
    FTabSheetMiscellaneousIgnoreOtherRows: string;
    FTabSheetMiscellaneousSumAllLinesToATotal: string;
    FTabSheetCopyCopyTextTo: string;
    FMainMenuNormalView: string;
    FMsgProgramMustBeRestartedDoYouWantToRestartTheProgram: string;
    FMsgNotPossibleToCopyFileToSetupFolder: string;
    FMsgInsertCode2InYourDataInputOrInVonvateringsFilterCode2WillBeReplacedWithTheCopiedText: string;
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

    property MainMenuFile: string read FMainMenuFile write FMainMenuFile;
    property MainMenuExit: string read FMainMenuExit write FMainMenuExit;
    property MainMenuOpenFile: string read FMainMenuOpenFile write FMainMenuOpenFile;
    property MainMenuTools: string read FMainMenuTools write FMainMenutools;
    property MainMenuExecute: string read FMainMenuExecute write FMainMenuExecute;
    property MainMenuRemoveFilter: string read FMainMenuRemoveFilter write FMainMenuRemoveFilter;
    property MainMenuView: string read FMainMenuView write FMainMenuView;
    property MainMenuShowHideFilter: string read FMainMenuShowHideFilter write FMainMenuShowHideFilter;
    property MainMenuShowDataIn: string read FMainMenuShowDataIn write FMainMenuShowDataIn;
    property MainMenuShowDataOut: string read FMainMenuShowDataOut write FMainMenuShowDataOut;
    property MainMenuNormalView: string read FMainMenuNormalView write FMainMenuNormalView;
    property MainMenuInsertCode: string read FMainMenuInsertCode write FMainMenuInsertCode;
    property MainMenuTheEntireStartingLine: string read FMainMenuTheEntireStartingLine write FMainMenuTheEntireStartingLine;
    property MainMenuCopyTextTo:String read FMainMenuCopyTextTo write FMainMenuCopyTextTo;

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
    property Copy: string read FCopy write FCopy;
    property Info: string read FInfo write FInfo;

    property TabSheetMiscellaneousHeader: string read FTabSheetMiscellaneousHeader write FTabSheetMiscellaneousHeader;
    property TabSheetMiscellaneousSelectOnlyRowsContainingThis: string read FTabSheetMiscellaneousSelectOnlyRowsContainingThis write FTabSheetMiscellaneousSelectOnlyRowsContainingThis;
    property TabSheetMiscellaneousSum: string read FTabSheetMiscellaneousSum write FTabSheetMiscellaneousSum;
    property TabSheetMiscellaneousInsertConsecutiveNoAfter: string read FTabSheetMiscellaneousInsertConsecutiveNoAfter write FTabSheetMiscellaneousInsertConsecutiveNoAfter;
    property TabSheetMiscellaneousCreateNumberOfLinesPerInputLine: string read FTabSheetMiscellaneousCreateNumberOfLinesPerInputLine write FTabSheetMiscellaneousCreateNumberOfLinesPerInputLine;
    property TabSheetMiscellaneousIgnoreOtherRows: string read FTabSheetMiscellaneousIgnoreOtherRows write FTabSheetMiscellaneousIgnoreOtherRows;
    property TabSheetMiscellaneousSumAllLinesToATotal: string read FTabSheetMiscellaneousSumAllLinesToATotal write FTabSheetMiscellaneousSumAllLinesToATotal;

    property TabSheetCopyCopyTextTo: string read FTabSheetCopyCopyTextTo write FTabSheetCopyCopyTextTo;

    property MsgProgramMustBeRestartedDoYouWantToRestartTheProgram: string read FMsgProgramMustBeRestartedDoYouWantToRestartTheProgram write FMsgProgramMustBeRestartedDoYouWantToRestartTheProgram;

    property MsgNotPossibleToCopyFileToSetupFolder: string read FMsgNotPossibleToCopyFileToSetupFolder write FMsgNotPossibleToCopyFileToSetupFolder;
    property MsgInsertCode2InYourDataInputOrInVonvateringsFilterCode2WillBeReplacedWithTheCopiedText: string read FMsgInsertCode2InYourDataInputOrInVonvateringsFilterCode2WillBeReplacedWithTheCopiedText write FMsgInsertCode2InYourDataInputOrInVonvateringsFilterCode2WillBeReplacedWithTheCopiedText;

  end;


implementation

end.
