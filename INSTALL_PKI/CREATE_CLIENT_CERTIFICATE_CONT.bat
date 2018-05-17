@ECHO OFF

TITLE CREATE CLIENT CERTIFICATE CONT.

REM Getting The USB Drive Letter
SET USB_DRIVE_LETTER=E
SET /P USB_DRIVE_LETTER="Enter the Drive Letter of your pendrive or press enter if it is drive E: "

SET C_PKI_TOOLS_DESTINATION=C:\PKI_Tools
SET IMPORT_CERT_EID=importcer-eidBATCH
SET IMPORT_CERT_ICAO=importcer-icaoBATCH

SET PREFIX_EID=GHEID00
SET PREFIX_ICAO=GHICAO0
SET MRW_NUMBER=%username:~3,4%

CD %C_PKI_TOOLS_DESTINATION%\CreateDVclientcert

%IMPORT_CERT_EID%
%IMPORT_CERT_ICAO%

DEL /q %C_PKI_TOOLS_DESTINATION%\KeyTool\*.pfx

COPY %C_PKI_TOOLS_DESTINATION%\CreateDVclientcert\%PREFIX_EID%*%MRW_NUMBER%.pfx %C_PKI_TOOLS_DESTINATION%\KeyTool
COPY %C_PKI_TOOLS_DESTINATION%\CreateDVclientcert\%PREFIX_ICAO%*%MRW_NUMBER%.pfx %C_PKI_TOOLS_DESTINATION%\KeyTool

PAUSE