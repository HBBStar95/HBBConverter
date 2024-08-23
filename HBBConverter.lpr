program HBBConverter;

{$MODE Delphi}

uses
  Forms,
  Interfaces,
  UMainForm in 'UMainForm.pas', uRemoveText, uFlipText,
uReplaceText, uSubRow, uCase, uCSV, uSequencesNo, uSetup, uLanguage, uTools, uCopyText {FMainForm};

  {$R *.res}

begin
  Application.Title:='HBB Converter';
  Application.Initialize;
  Application.CreateForm(TFMainForm, FMainForm);
  Application.Run;
end.
