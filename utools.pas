unit uTools;

{$mode Delphi}

interface

uses
  SysUtils, Classes,
  {$IFDEF MSWINDOWS}
  Process, Windows;
  {$ENDIF}
  {$IFDEF LINUX}
  Process, BaseUnix;
  {$ENDIF}
  {$IFDEF DARWIN}
  Process;
  {$ENDIF}

procedure RestartApplication;
procedure CopyFile2(const SourceFileName, DestinationFileName: string);

implementation

procedure RestartApplication;
var
  Process: TProcess;
  I: Integer;
begin
  Process := TProcess.Create(nil);
  try
    // Set the executable to the current program
    Process.Executable := ParamStr(0);

    // Add all parameters to the new process
    for I := 1 to ParamCount do
      Process.Parameters.Add(ParamStr(I));

    Process.Execute;

    // Terminate the current instance
    {$IFDEF MSWINDOWS}
    ExitProcess(0);
    {$ENDIF}

    {$IFDEF LINUX}
    Halt(0);
    {$ENDIF}

    {$IFDEF DARWIN}
    Halt;
    {$ENDIF}
  finally
    Process.Free;
  end;
end;


procedure CopyFile2(const SourceFileName, DestinationFileName: string);
var
  SourceStream, DestStream: TFileStream;
begin
  try
    SourceStream := TFileStream.Create(SourceFileName, fmOpenRead or fmShareDenyWrite);
    try
      DestStream := TFileStream.Create(DestinationFileName, fmCreate);
      try
        DestStream.CopyFrom(SourceStream, SourceStream.Size);
      finally
        DestStream.Free;
      end;
    finally
      SourceStream.Free;
    end;
  except
    on E: Exception do
      Writeln('Error copying file: ', E.Message);
  end;
end;

end.

