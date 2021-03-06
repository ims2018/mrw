@ECHO OFF

TITLE KEYSTORE CERFITICATE

ECHO CREATING KEYSTORE CERFITICATE

SET PKI_TOOLS_PATH=C:\PKI_Tools
SET CARD_READER_SERVICE_PATH=C:\ProgramFiles(x86)\DERMALOG\CardReaderService

SET PREFIX_EID=GHEID00
SET PREFIX_ICAO=GHICAO0
SET MRW_NUMBER=%username:~3,4%

COPY %PKI_Tools%\CVCTool\%PREFIX_EID%%MRW_NUMBER%*.p8 %CARD_READER_SERVICE_PATH%\Certificates_prod\eid
COPY %PKI_Tools%\CVCTool\%PREFIX_ICAO%%MRW_NUMBER%*.p8 %CARD_READER_SERVICE_PATH%\Certificates_prod\icao