ALTER TABLE dbo.SatınAlınanDergi
DROP CONSTRAINT FK_SatınAlınanDergi_Dergi;

-- Yeni kısıtlamayı eklemek
ALTER TABLE dbo.SatınAlınanDergi
ADD CONSTRAINT FK_SatınAlınanDergi_Dergi
FOREIGN KEY (Dergi_Barkod_ID) REFERENCES dbo.Dergi(Dergi_Barkod_ID)
ON DELETE CASCADE;