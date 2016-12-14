@ECHO OFF
IF "%1"=="" GOTO HELP
IF "%2"=="" GOTO HELP
bin\openssl ca -config AICA.cfg -batch -notext -extensions ext_client -days 365 -in %1 -out %2
GOTO END

:HELP
ECHO USAGE: sign_client infile.csr outfile.cer

:END