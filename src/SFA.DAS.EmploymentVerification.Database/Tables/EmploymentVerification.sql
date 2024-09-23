﻿CREATE TABLE [dbo].[EmploymentVerification]
(
  EmploymentVerificationId BIGINT NOT NULL Identity(1,1) CONSTRAINT PK_EmploymentVerification PRIMARY KEY,
  CorrelationId UNIQUEIDENTIFIER NOT NULL CONSTRAINT UC_EmploymentVerification_CorrelationId UNIQUE,
  ApprenticeshipId BIGINT,
  Employed BIT,
  EmploymentCheckDate DATETIME2(7),
  EmploymentCheckRequestDate DATETIME2(7),
  RequestCompletionStatus SMALLINT,
  ErrorType VARCHAR(200),
  MessageSentDate DATE,
  MinDate DATE,
  MaxDate DATE,
  CheckTypeId SMALLINT NOT NULL,
  CreatedOn DATETIME2(7) DEFAULT GETDATE(),
  LastUpdatedOn DATETIME2(7) DEFAULT GETDATE(),
  CONSTRAINT FK_EmploymentVerification_CheckTypeId FOREIGN KEY (CheckTypeId)
        REFERENCES dbo.CheckType(CheckTypeId)
);
GO