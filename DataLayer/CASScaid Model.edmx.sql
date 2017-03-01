
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/26/2017 12:05:40
-- Generated from EDMX file: \\hamlet\UserShares\TSY\data\LakeJ\Documents\Build Tests\Web UI\CASScaid\DataLayer\CASScaid Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Te Kete Aronui];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ContentAuthorMappingAuthor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ContentAuthorMappings] DROP CONSTRAINT [FK_ContentAuthorMappingAuthor];
GO
IF OBJECT_ID(N'[dbo].[FK_TopicTypeCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TopicTypes] DROP CONSTRAINT [FK_TopicTypeCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_ContentContentAuthorMapping]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contents] DROP CONSTRAINT [FK_ContentContentAuthorMapping];
GO
IF OBJECT_ID(N'[dbo].[FK_ContentTopicMappingContent]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Contents] DROP CONSTRAINT [FK_ContentTopicMappingContent];
GO
IF OBJECT_ID(N'[dbo].[FK_WebsiteRSSFeedMappingEmailBox]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[WebsiteRSSFeedMappings] DROP CONSTRAINT [FK_WebsiteRSSFeedMappingEmailBox];
GO
IF OBJECT_ID(N'[dbo].[FK_WebsiteRSSFeedMappingRSSFeed]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[WebsiteRSSFeedMappings] DROP CONSTRAINT [FK_WebsiteRSSFeedMappingRSSFeed];
GO
IF OBJECT_ID(N'[dbo].[FK_TopicTypeTopic]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TopicTypes] DROP CONSTRAINT [FK_TopicTypeTopic];
GO
IF OBJECT_ID(N'[dbo].[FK_TopicWebsiteRSSFeedMapping]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Topics] DROP CONSTRAINT [FK_TopicWebsiteRSSFeedMapping];
GO
IF OBJECT_ID(N'[dbo].[FK_WebsiteRSSFeedMappingWebsite]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[WebsiteRSSFeedMappings] DROP CONSTRAINT [FK_WebsiteRSSFeedMappingWebsite];
GO
IF OBJECT_ID(N'[dbo].[FK_TopicContentTopicMapping_ContentTopicMappings]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TopicContentTopicMapping] DROP CONSTRAINT [FK_TopicContentTopicMapping_ContentTopicMappings];
GO
IF OBJECT_ID(N'[dbo].[FK_TopicContentTopicMapping_Topics]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TopicContentTopicMapping] DROP CONSTRAINT [FK_TopicContentTopicMapping_Topics];
GO
IF OBJECT_ID(N'[dbo].[FK_TopicTeam_Teams]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TopicTeam] DROP CONSTRAINT [FK_TopicTeam_Teams];
GO
IF OBJECT_ID(N'[dbo].[FK_TopicTeam_Topics]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TopicTeam] DROP CONSTRAINT [FK_TopicTeam_Topics];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Authors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Authors];
GO
IF OBJECT_ID(N'[dbo].[Categories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categories];
GO
IF OBJECT_ID(N'[dbo].[ContentAuthorMappings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ContentAuthorMappings];
GO
IF OBJECT_ID(N'[dbo].[Contents]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Contents];
GO
IF OBJECT_ID(N'[dbo].[ContentTopicMappings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ContentTopicMappings];
GO
IF OBJECT_ID(N'[dbo].[EmailBoxes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmailBoxes];
GO
IF OBJECT_ID(N'[dbo].[RSSFeeds]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RSSFeeds];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[Teams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Teams];
GO
IF OBJECT_ID(N'[dbo].[Topics]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Topics];
GO
IF OBJECT_ID(N'[dbo].[TopicTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TopicTypes];
GO
IF OBJECT_ID(N'[dbo].[WebsiteRSSFeedMappings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WebsiteRSSFeedMappings];
GO
IF OBJECT_ID(N'[dbo].[Websites]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Websites];
GO
IF OBJECT_ID(N'[dbo].[TopicContentTopicMapping]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TopicContentTopicMapping];
GO
IF OBJECT_ID(N'[dbo].[TopicTeam]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TopicTeam];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Authors'
CREATE TABLE [dbo].[Authors] (
    [AuthorID] int IDENTITY(1,1) NOT NULL,
    [AuthorName] nvarchar(max)  NOT NULL,
    [Website] nvarchar(max)  NOT NULL,
    [Blog] nvarchar(max)  NOT NULL,
    [ContentAuthorMappingContentAuthorID] int  NOT NULL
);
GO

-- Creating table 'Categories'
CREATE TABLE [dbo].[Categories] (
    [CategoryID] int IDENTITY(1,1) NOT NULL,
    [CategoryName] nvarchar(max)  NOT NULL,
    [TopicTypeID] int  NOT NULL
);
GO

-- Creating table 'ContentAuthorMappings'
CREATE TABLE [dbo].[ContentAuthorMappings] (
    [ContentAuthorMappingID] int IDENTITY(1,1) NOT NULL,
    [AuthorID] nvarchar(max)  NOT NULL,
    [ContentID] nvarchar(max)  NOT NULL,
    [ContentContentID] int  NOT NULL,
    [Author_AuthorID] int  NOT NULL
);
GO

-- Creating table 'Contents'
CREATE TABLE [dbo].[Contents] (
    [ContentID] int IDENTITY(1,1) NOT NULL,
    [Abstract] nvarchar(max)  NOT NULL,
    [ContentTopicMappingContentMappingID] int  NOT NULL,
    [ContentAuthorMappingContentAuthorID] int  NOT NULL,
    [ContentTopicMappingContentMapID] int  NOT NULL,
    [ContentTopicMappingContentMapID1] int  NOT NULL,
    [ContentAuthorMapping_ContentAuthorID] int  NOT NULL
);
GO

-- Creating table 'ContentTopicMappings'
CREATE TABLE [dbo].[ContentTopicMappings] (
    [ContentTopicMappingID] int IDENTITY(1,1) NOT NULL,
    [ContentID] nvarchar(max)  NOT NULL,
    [TopicID] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'EmailBoxes'
CREATE TABLE [dbo].[EmailBoxes] (
    [EmailBoxID] int IDENTITY(1,1) NOT NULL,
    [MailboxName] nvarchar(max)  NOT NULL,
    [MailboxAddress] nvarchar(max)  NOT NULL,
    [EmailAlert] nvarchar(max)  NOT NULL,
    [WebsiteRSSFeedMappingWebsiteFeedMapping] int  NOT NULL
);
GO

-- Creating table 'RSSFeeds'
CREATE TABLE [dbo].[RSSFeeds] (
    [RSSFeedID] int IDENTITY(1,1) NOT NULL,
    [RSSFeedName] nvarchar(max)  NOT NULL,
    [FeedURL] nvarchar(max)  NOT NULL,
    [FeedAlert] nvarchar(max)  NOT NULL,
    [Feed_Description] nvarchar(max)  NOT NULL,
    [Feed_Publication_Date] datetime  NOT NULL,
    [Feed_PermaLink] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'Teams'
CREATE TABLE [dbo].[Teams] (
    [TeamID] int IDENTITY(1,1) NOT NULL,
    [TeamName] nvarchar(max)  NOT NULL,
    [TeamPage] nvarchar(max)  NOT NULL,
    [TeamRequest] nvarchar(max)  NOT NULL,
    [TopicID] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Topics'
CREATE TABLE [dbo].[Topics] (
    [TopicID] int IDENTITY(1,1) NOT NULL,
    [TopicName] nvarchar(max)  NOT NULL,
    [TopicTypeID] nvarchar(max)  NOT NULL,
    [LinkDocument] nvarchar(max)  NOT NULL,
    [TeamRequest] nvarchar(max)  NOT NULL,
    [TeamID] nvarchar(max)  NOT NULL,
    [TeamTeamID] int  NOT NULL,
    [WebsiteRSSFeedMappingWebsiteFeedMapping] int  NOT NULL
);
GO

-- Creating table 'TopicTypes'
CREATE TABLE [dbo].[TopicTypes] (
    [TopicTypeID] int IDENTITY(1,1) NOT NULL,
    [TopicTypeName] nvarchar(max)  NOT NULL,
    [CategoryID] nvarchar(max)  NOT NULL,
    [TopicsTopicID] nvarchar(max)  NOT NULL,
    [Topics_TopicID] int  NOT NULL,
    [Category_CategoryID] int  NOT NULL
);
GO

-- Creating table 'WebsiteRSSFeedMappings'
CREATE TABLE [dbo].[WebsiteRSSFeedMappings] (
    [WebsiteRSSFeedMappingID] int IDENTITY(1,1) NOT NULL,
    [WebsiteID] nvarchar(max)  NOT NULL,
    [FeedID] nvarchar(max)  NOT NULL,
    [MailboxID] nvarchar(max)  NOT NULL,
    [TopicsTopicID] int  NOT NULL,
    [EmailBox_MailboxID] int  NOT NULL,
    [RSSFeed_FeedID] int  NOT NULL,
    [Website_WebsiteID] int  NOT NULL
);
GO

-- Creating table 'Websites'
CREATE TABLE [dbo].[Websites] (
    [WebsiteID] int IDENTITY(1,1) NOT NULL,
    [WebsiteName] nvarchar(max)  NOT NULL,
    [WebsiteURL] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TopicContentTopicMapping'
CREATE TABLE [dbo].[TopicContentTopicMapping] (
    [ContentTopicMappings_ContentTopicMappingID] int  NOT NULL,
    [Topics_TopicID] int  NOT NULL
);
GO

-- Creating table 'TopicTeam'
CREATE TABLE [dbo].[TopicTeam] (
    [Teams_TeamID] int  NOT NULL,
    [Topics_TopicID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [AuthorID] in table 'Authors'
ALTER TABLE [dbo].[Authors]
ADD CONSTRAINT [PK_Authors]
    PRIMARY KEY CLUSTERED ([AuthorID] ASC);
GO

-- Creating primary key on [CategoryID] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [PK_Categories]
    PRIMARY KEY CLUSTERED ([CategoryID] ASC);
GO

-- Creating primary key on [ContentAuthorMappingID] in table 'ContentAuthorMappings'
ALTER TABLE [dbo].[ContentAuthorMappings]
ADD CONSTRAINT [PK_ContentAuthorMappings]
    PRIMARY KEY CLUSTERED ([ContentAuthorMappingID] ASC);
GO

-- Creating primary key on [ContentID] in table 'Contents'
ALTER TABLE [dbo].[Contents]
ADD CONSTRAINT [PK_Contents]
    PRIMARY KEY CLUSTERED ([ContentID] ASC);
GO

-- Creating primary key on [ContentTopicMappingID] in table 'ContentTopicMappings'
ALTER TABLE [dbo].[ContentTopicMappings]
ADD CONSTRAINT [PK_ContentTopicMappings]
    PRIMARY KEY CLUSTERED ([ContentTopicMappingID] ASC);
GO

-- Creating primary key on [EmailBoxID] in table 'EmailBoxes'
ALTER TABLE [dbo].[EmailBoxes]
ADD CONSTRAINT [PK_EmailBoxes]
    PRIMARY KEY CLUSTERED ([EmailBoxID] ASC);
GO

-- Creating primary key on [RSSFeedID] in table 'RSSFeeds'
ALTER TABLE [dbo].[RSSFeeds]
ADD CONSTRAINT [PK_RSSFeeds]
    PRIMARY KEY CLUSTERED ([RSSFeedID] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [TeamID] in table 'Teams'
ALTER TABLE [dbo].[Teams]
ADD CONSTRAINT [PK_Teams]
    PRIMARY KEY CLUSTERED ([TeamID] ASC);
GO

-- Creating primary key on [TopicID] in table 'Topics'
ALTER TABLE [dbo].[Topics]
ADD CONSTRAINT [PK_Topics]
    PRIMARY KEY CLUSTERED ([TopicID] ASC);
GO

-- Creating primary key on [TopicTypeID] in table 'TopicTypes'
ALTER TABLE [dbo].[TopicTypes]
ADD CONSTRAINT [PK_TopicTypes]
    PRIMARY KEY CLUSTERED ([TopicTypeID] ASC);
GO

-- Creating primary key on [WebsiteRSSFeedMappingID] in table 'WebsiteRSSFeedMappings'
ALTER TABLE [dbo].[WebsiteRSSFeedMappings]
ADD CONSTRAINT [PK_WebsiteRSSFeedMappings]
    PRIMARY KEY CLUSTERED ([WebsiteRSSFeedMappingID] ASC);
GO

-- Creating primary key on [WebsiteID] in table 'Websites'
ALTER TABLE [dbo].[Websites]
ADD CONSTRAINT [PK_Websites]
    PRIMARY KEY CLUSTERED ([WebsiteID] ASC);
GO

-- Creating primary key on [ContentTopicMappings_ContentTopicMappingID], [Topics_TopicID] in table 'TopicContentTopicMapping'
ALTER TABLE [dbo].[TopicContentTopicMapping]
ADD CONSTRAINT [PK_TopicContentTopicMapping]
    PRIMARY KEY CLUSTERED ([ContentTopicMappings_ContentTopicMappingID], [Topics_TopicID] ASC);
GO

-- Creating primary key on [Teams_TeamID], [Topics_TopicID] in table 'TopicTeam'
ALTER TABLE [dbo].[TopicTeam]
ADD CONSTRAINT [PK_TopicTeam]
    PRIMARY KEY CLUSTERED ([Teams_TeamID], [Topics_TopicID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Author_AuthorID] in table 'ContentAuthorMappings'
ALTER TABLE [dbo].[ContentAuthorMappings]
ADD CONSTRAINT [FK_ContentAuthorMappingAuthor]
    FOREIGN KEY ([Author_AuthorID])
    REFERENCES [dbo].[Authors]
        ([AuthorID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ContentAuthorMappingAuthor'
CREATE INDEX [IX_FK_ContentAuthorMappingAuthor]
ON [dbo].[ContentAuthorMappings]
    ([Author_AuthorID]);
GO

-- Creating foreign key on [Category_CategoryID] in table 'TopicTypes'
ALTER TABLE [dbo].[TopicTypes]
ADD CONSTRAINT [FK_TopicTypeCategory]
    FOREIGN KEY ([Category_CategoryID])
    REFERENCES [dbo].[Categories]
        ([CategoryID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TopicTypeCategory'
CREATE INDEX [IX_FK_TopicTypeCategory]
ON [dbo].[TopicTypes]
    ([Category_CategoryID]);
GO

-- Creating foreign key on [ContentAuthorMapping_ContentAuthorID] in table 'Contents'
ALTER TABLE [dbo].[Contents]
ADD CONSTRAINT [FK_ContentContentAuthorMapping]
    FOREIGN KEY ([ContentAuthorMapping_ContentAuthorID])
    REFERENCES [dbo].[ContentAuthorMappings]
        ([ContentAuthorMappingID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ContentContentAuthorMapping'
CREATE INDEX [IX_FK_ContentContentAuthorMapping]
ON [dbo].[Contents]
    ([ContentAuthorMapping_ContentAuthorID]);
GO

-- Creating foreign key on [ContentTopicMappingContentMapID1] in table 'Contents'
ALTER TABLE [dbo].[Contents]
ADD CONSTRAINT [FK_ContentTopicMappingContent]
    FOREIGN KEY ([ContentTopicMappingContentMapID1])
    REFERENCES [dbo].[ContentTopicMappings]
        ([ContentTopicMappingID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ContentTopicMappingContent'
CREATE INDEX [IX_FK_ContentTopicMappingContent]
ON [dbo].[Contents]
    ([ContentTopicMappingContentMapID1]);
GO

-- Creating foreign key on [EmailBox_MailboxID] in table 'WebsiteRSSFeedMappings'
ALTER TABLE [dbo].[WebsiteRSSFeedMappings]
ADD CONSTRAINT [FK_WebsiteRSSFeedMappingEmailBox]
    FOREIGN KEY ([EmailBox_MailboxID])
    REFERENCES [dbo].[EmailBoxes]
        ([EmailBoxID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WebsiteRSSFeedMappingEmailBox'
CREATE INDEX [IX_FK_WebsiteRSSFeedMappingEmailBox]
ON [dbo].[WebsiteRSSFeedMappings]
    ([EmailBox_MailboxID]);
GO

-- Creating foreign key on [RSSFeed_FeedID] in table 'WebsiteRSSFeedMappings'
ALTER TABLE [dbo].[WebsiteRSSFeedMappings]
ADD CONSTRAINT [FK_WebsiteRSSFeedMappingRSSFeed]
    FOREIGN KEY ([RSSFeed_FeedID])
    REFERENCES [dbo].[RSSFeeds]
        ([RSSFeedID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WebsiteRSSFeedMappingRSSFeed'
CREATE INDEX [IX_FK_WebsiteRSSFeedMappingRSSFeed]
ON [dbo].[WebsiteRSSFeedMappings]
    ([RSSFeed_FeedID]);
GO

-- Creating foreign key on [Topics_TopicID] in table 'TopicTypes'
ALTER TABLE [dbo].[TopicTypes]
ADD CONSTRAINT [FK_TopicTypeTopic]
    FOREIGN KEY ([Topics_TopicID])
    REFERENCES [dbo].[Topics]
        ([TopicID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TopicTypeTopic'
CREATE INDEX [IX_FK_TopicTypeTopic]
ON [dbo].[TopicTypes]
    ([Topics_TopicID]);
GO

-- Creating foreign key on [WebsiteRSSFeedMappingWebsiteFeedMapping] in table 'Topics'
ALTER TABLE [dbo].[Topics]
ADD CONSTRAINT [FK_TopicWebsiteRSSFeedMapping]
    FOREIGN KEY ([WebsiteRSSFeedMappingWebsiteFeedMapping])
    REFERENCES [dbo].[WebsiteRSSFeedMappings]
        ([WebsiteRSSFeedMappingID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TopicWebsiteRSSFeedMapping'
CREATE INDEX [IX_FK_TopicWebsiteRSSFeedMapping]
ON [dbo].[Topics]
    ([WebsiteRSSFeedMappingWebsiteFeedMapping]);
GO

-- Creating foreign key on [Website_WebsiteID] in table 'WebsiteRSSFeedMappings'
ALTER TABLE [dbo].[WebsiteRSSFeedMappings]
ADD CONSTRAINT [FK_WebsiteRSSFeedMappingWebsite]
    FOREIGN KEY ([Website_WebsiteID])
    REFERENCES [dbo].[Websites]
        ([WebsiteID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WebsiteRSSFeedMappingWebsite'
CREATE INDEX [IX_FK_WebsiteRSSFeedMappingWebsite]
ON [dbo].[WebsiteRSSFeedMappings]
    ([Website_WebsiteID]);
GO

-- Creating foreign key on [ContentTopicMappings_ContentTopicMappingID] in table 'TopicContentTopicMapping'
ALTER TABLE [dbo].[TopicContentTopicMapping]
ADD CONSTRAINT [FK_TopicContentTopicMapping_ContentTopicMappings]
    FOREIGN KEY ([ContentTopicMappings_ContentTopicMappingID])
    REFERENCES [dbo].[ContentTopicMappings]
        ([ContentTopicMappingID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Topics_TopicID] in table 'TopicContentTopicMapping'
ALTER TABLE [dbo].[TopicContentTopicMapping]
ADD CONSTRAINT [FK_TopicContentTopicMapping_Topics]
    FOREIGN KEY ([Topics_TopicID])
    REFERENCES [dbo].[Topics]
        ([TopicID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TopicContentTopicMapping_Topics'
CREATE INDEX [IX_FK_TopicContentTopicMapping_Topics]
ON [dbo].[TopicContentTopicMapping]
    ([Topics_TopicID]);
GO

-- Creating foreign key on [Teams_TeamID] in table 'TopicTeam'
ALTER TABLE [dbo].[TopicTeam]
ADD CONSTRAINT [FK_TopicTeam_Teams]
    FOREIGN KEY ([Teams_TeamID])
    REFERENCES [dbo].[Teams]
        ([TeamID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Topics_TopicID] in table 'TopicTeam'
ALTER TABLE [dbo].[TopicTeam]
ADD CONSTRAINT [FK_TopicTeam_Topics]
    FOREIGN KEY ([Topics_TopicID])
    REFERENCES [dbo].[Topics]
        ([TopicID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TopicTeam_Topics'
CREATE INDEX [IX_FK_TopicTeam_Topics]
ON [dbo].[TopicTeam]
    ([Topics_TopicID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------