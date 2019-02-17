CREATE PACKAGE BlobFileUtils2
AS
BEGIN
  PROCEDURE SaveBlobToFile(ABlob BLOB, AFileName VARCHAR(255) CHARACTER SET WIN1251);

  FUNCTION LoadBlobFromFile(AFileName VARCHAR(255) CHARACTER SET WIN1251) RETURNS BLOB;
END^

CREATE PACKAGE BODY BlobFileUtils2
AS
BEGIN
  PROCEDURE SaveBlobToFile(ABlob BLOB, AFileName VARCHAR(255) CHARACTER SET WIN1251)
  EXTERNAL NAME 'BlobFileUtils2!SaveBlobToFile'
  ENGINE UDR;

  FUNCTION LoadBlobFromFile(AFileName VARCHAR(255) CHARACTER SET WIN1251) RETURNS BLOB
  EXTERNAL NAME 'BlobFileUtils2!LoadBlobFromFile'
  ENGINE UDR;
END^