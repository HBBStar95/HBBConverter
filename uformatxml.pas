unit uFormatXML;

{$mode Delphi}

interface

uses
  Classes, SysUtils, DOM, XMLRead, XMLWrite;

function FormatXML(const XML: string): string;

implementation


function FormatXML(const XML: string): string;
var
  Doc: TXMLDocument;
  InputStream, OutputStream: TStringStream;
begin
  try
    InputStream := TStringStream.Create(XML);
    OutputStream := TStringStream.Create('');
    try
      // Indlæs XML fra input-strengen
      ReadXMLFile(Doc, InputStream);
      // Skriv formateret XML til output-strøm
      WriteXMLFile(Doc, OutputStream);
      Result := OutputStream.DataString;
    finally
      Doc.Free;
      InputStream.Free;
      OutputStream.Free;
    end;

  except
    Result := XML;
  end;
end;



end.
