program FormatRows;

{$MODE Delphi}

uses
  Forms,
  Interfaces,
  UMainForm in 'UMainForm.pas', uRemoveText, uFlipText,
uReplaceText, uSubRow, uCase, uCSV, uSequencesNo {FMainForm};

  {$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMainForm, FMainForm);
  Application.Run;
end.