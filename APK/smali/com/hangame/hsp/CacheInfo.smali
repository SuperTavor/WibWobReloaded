.class Lcom/hangame/hsp/CacheInfo;
.super Ljava/lang/Object;


# static fields
.field static final ACHIEVED_TABLE:Ljava/lang/String; = "HSPAchieved"

.field static final ACHIEVEMENT_TABLE:Ljava/lang/String; = "HSPAchievement"

.field static final CACHE_DB_NAME:Ljava/lang/String;

.field static final CACHE_DB_VERSION:I = 0x1

.field static final CREATE_ACHIEVED_TABLE:Ljava/lang/String; = "CREATE TABLE [HSPAchieved] (   [achievementID] VARCHAR(50) NOT NULL ON CONFLICT FAIL REFERENCES [HSPAchievement]([achievementID]) ON DELETE CASCADE ON UPDATE CASCADE MATCH FULL,    [gameNo] INT NOT NULL ON CONFLICT FAIL REFERENCES [HSPGame]([gameNo]) ON DELETE CASCADE ON UPDATE CASCADE MATCH FULL,    [memberNo] BIGINT NOT NULL ON CONFLICT FAIL REFERENCES [HSPProfile]([memberNo]) ON DELETE CASCADE ON UPDATE CASCADE MATCH FULL,    [isAchieved] BOOL DEFAULT (0),    UNIQUE([achievementID], [gameNo], [memberNo]) ON CONFLICT REPLACE)"

.field static final CREATE_ACHIEVEMENT_TABLE:Ljava/lang/String; = "CREATE TABLE [HSPAchievement] (   [achievementID] VARCHAR(50) NOT NULL ON CONFLICT FAIL,    [gameNo] INT NOT NULL ON CONFLICT FAIL REFERENCES [HSPGame]([gameNo]) ON DELETE CASCADE ON UPDATE CASCADE,    [title] VARCHAR(50),    [detail] VARCHAR(100),    [score] INT DEFAULT (0),    [achievedIconURL] VARCHAR(100),    [unachievedIconURL] VARCHAR(100),    [modifiedDate] DATETIME DEFAULT (CURRENT_TIMESTAMP),    UNIQUE([achievementID], [gameNo]) ON CONFLICT REPLACE)"

.field static final CREATE_DETAILED_PROFILE_TABLE:Ljava/lang/String; = "CREATE TABLE [HSPDetailedProfile] (   [memberNo] BIGINT NOT NULL ON CONFLICT FAIL UNIQUE ON CONFLICT REPLACE REFERENCES [HSPProfile]([memberNo]) ON DELETE CASCADE ON UPDATE CASCADE,    [isAdmin] BOOL DEFAULT (0),    [relationTypeFromMe] TINYINT,    [relationTypeToMe] TINYINT,    [isNicknameChanged] BOOL,    [age] SMALLINT,    [gender] VARCHAR(2),    [todayWords] NVARCHAR(50),    [exposeAge] BOOL,    [exposeGender] BOOL,    [gameUserData] VARCHAR(3000),    [phoneNo] VARCHAR(20),    [modifiedDate] DATETIME DEFAULT (CURRENT_TIMESTAMP))"

.field static final CREATE_GAME_LOG_TABLE:Ljava/lang/String; = "CREATE TABLE [HSPGameLog] (   [gameNo] INT NOT NULL ON CONFLICT FAIL,    [memberNo] BIGINT NOT NULL ON CONFLICT FAIL,    [firstPlayedDate] DATETIME,    [lastPlayedDate] DATETIME,    [modifiedDate] DATETIME DEFAULT (CURRENT_TIMESTAMP),    UNIQUE([gameNo], [memberNo]) ON CONFLICT REPLACE)"

.field static final CREATE_GAME_TABLE:Ljava/lang/String; = "CREATE TABLE [HSPGame] (   [gameNo] INT NOT NULL ON CONFLICT FAIL UNIQUE ON CONFLICT REPLACE,    [gameId] VARCHAR(20),    [name] VARCHAR(50),    [iconURL] VARCHAR(100),    [statusCode] VARCHAR(10),    [adminMemberNo] BIGINT,    [redirectionURL] VARCHAR(100),    [bundleId] VARCHAR(50),    [customURL] VARCHAR(100),    [marketURL] VARCHAR(100),    [modifiedDate] DATETIME DEFAULT (CURRENT_TIMESTAMP))"

.field static final CREATE_IDP_INFO_TABLE:Ljava/lang/String; = "CREATE TABLE [HSPIdpInfo] (   [memberNo] BIGINT NOT NULL ON CONFLICT FAIL REFERENCES [HSPProfile]([memberNo]) ON DELETE CASCADE ON UPDATE CASCADE,    [idpCode] VARCHAR(20) NOT NULL ON CONFLICT FAIL,    [idpId] VARCHAR(50),    [isExpose] BOOL,    UNIQUE([memberNo], [idpCode]) ON CONFLICT REPLACE)"

.field static final CREATE_PLAYED_GAME_NO_TABLE:Ljava/lang/String; = "CREATE TABLE [HSPPlayedGameNo] (   [memberNo] BIGINT NOT NULL ON CONFLICT FAIL REFERENCES [HSPProfile]([memberNo]) ON DELETE CASCADE ON UPDATE CASCADE,    [gameNo] INT NOT NULL ON CONFLICT FAIL,    UNIQUE([memberNo], [gameNo]) ON CONFLICT REPLACE)"

.field static final CREATE_PROFILE_TABLE:Ljava/lang/String; = "  CREATE TABLE [HSPProfile] (   [memberNo] BIGINT NOT NULL ON CONFLICT REPLACE UNIQUE ON CONFLICT REPLACE,  [isValid] BOOL DEFAULT (0),    [nickname] VARCHAR(50),    [exposeOnline] BOOL DEFAULT (0),    [lastLoginDate] DATETIME,    [recentPlayedGameNo] INTEGER,    [reservedData] VARCHAR(500),    [modifiedDate] DATETIME DEFAULT (CURRENT_TIMESTAMP))"

.field static final CREATE_PUNISHMENT_TABLE:Ljava/lang/String; = "CREATE TABLE [HSPPunishment] (   [memberNo] BIGINT NOT NULL ON CONFLICT FAIL REFERENCES [HSPProfile]([memberNo]) ON DELETE CASCADE ON UPDATE CASCADE,    [type] VARCHAR(20) NOT NULL ON CONFLICT FAIL,    [count] SMALLINT,    [endDate] DATETIME,    UNIQUE([memberNo], [type]) ON CONFLICT REPLACE)"

.field static final CREATE_RANKING_TABLE:Ljava/lang/String; = "CREATE TABLE [HSPRanking] (   [factor] INT NOT NULL ON CONFLICT FAIL,    [period] TINYINT NOT NULL ON CONFLICT FAIL,    [name] VARCHAR(50),    [unit] VARCHAR(10),    [reservedData] VARCHAR(500),    [gameNo] INT NOT NULL ON CONFLICT FAIL,    [repRanking] BOOL DEFAULT (0),   [modifiedDate] DATETIME DEFAULT (CURRENT_TIMESTAMP),    UNIQUE([factor], [period], [gameNo]) ON CONFLICT REPLACE)"

.field static final CREATE_SOCIAL_TABLE:Ljava/lang/String; = "CREATE TABLE [HSPSocial] (   [memberNo] BIGINT NOT NULL ON CONFLICT FAIL UNIQUE ON CONFLICT REPLACE,    [relationType] TINYINT NOT NULL ON CONFLICT FAIL,    [modifiedDate] DATETIME DEFAULT (CURRENT_TIMESTAMP))"

.field static final DETAILED_PROFILE_TABLE:Ljava/lang/String; = "HSPDetailedProfile"

.field static final DROP_ACHIEVED_TABLE:Ljava/lang/String; = "DROP TABLE HSPAchieved"

.field static final DROP_ACHIEVEMENT_TABLE:Ljava/lang/String; = "DROP TABLE HSPAchievement"

.field static final DROP_DETAILED_PROFILE_TABLE:Ljava/lang/String; = "DROP TABLE HSPDetailedProfile"

.field static final DROP_GAME_LOG_TABLE:Ljava/lang/String; = "DROP TABLE HSPGameLog"

.field static final DROP_GAME_TABLE:Ljava/lang/String; = "DROP TABLE HSPGame"

.field static final DROP_IDP_INFO_TABLE:Ljava/lang/String; = "DROP TABLE HSPIdpInfo"

.field static final DROP_PLAYED_GAME_NO_TABLE:Ljava/lang/String; = "DROP TABLE HSPPlayedGameNo"

.field static final DROP_PROFILE_TABLE:Ljava/lang/String; = "DROP TABLE HSPProfile"

.field static final DROP_PUNISHMENT_TABLE:Ljava/lang/String; = "DROP TABLE HSPPunishment"

.field static final DROP_RANKING_TABLE:Ljava/lang/String; = "DROP TABLE HSPRanking"

.field static final DROP_SOCIAL_TABLE:Ljava/lang/String; = "DROP TABLE HSPSocial"

.field static final GAME_LOG_TABLE:Ljava/lang/String; = "HSPGameLog"

.field static final GAME_TABLE:Ljava/lang/String; = "HSPGame"

.field static final IDP_INFO_TABLE:Ljava/lang/String; = "HSPIdpInfo"

.field static final KEY_ACHIEVED_ICON_URL:Ljava/lang/String; = "achievedIconURL"

.field static final KEY_ACHIEVEMENT_ID:Ljava/lang/String; = "achievementID"

.field static final KEY_ADMIN_MEMBER_NO:Ljava/lang/String; = "adminMemberNo"

.field static final KEY_AGE:Ljava/lang/String; = "age"

.field static final KEY_BUNDLE_ID:Ljava/lang/String; = "bundleId"

.field static final KEY_COUNT:Ljava/lang/String; = "count"

.field static final KEY_CUSTOM_URL:Ljava/lang/String; = "customURL"

.field static final KEY_DETAIL:Ljava/lang/String; = "detail"

.field static final KEY_END_DATE:Ljava/lang/String; = "endDate"

.field static final KEY_EXPOSE_AGE:Ljava/lang/String; = "exposeAge"

.field static final KEY_EXPOSE_GENDER:Ljava/lang/String; = "exposeGender"

.field static final KEY_EXPOSE_ONLINE:Ljava/lang/String; = "exposeOnline"

.field static final KEY_FACTOR:Ljava/lang/String; = "factor"

.field static final KEY_FIRST_PLAYED_DATE:Ljava/lang/String; = "firstPlayedDate"

.field static final KEY_GAMEUSER_DATA:Ljava/lang/String; = "gameUserData"

.field static final KEY_GAME_ID:Ljava/lang/String; = "gameId"

.field static final KEY_GAME_NO:Ljava/lang/String; = "gameNo"

.field static final KEY_GENDER:Ljava/lang/String; = "gender"

.field static final KEY_ICON_URL:Ljava/lang/String; = "iconURL"

.field static final KEY_IDP_CODE:Ljava/lang/String; = "idpCode"

.field static final KEY_IDP_ID:Ljava/lang/String; = "idpId"

.field static final KEY_IS_ACHIEVED:Ljava/lang/String; = "isAchieved"

.field static final KEY_IS_ADMIN:Ljava/lang/String; = "isAdmin"

.field static final KEY_IS_EXPOSE:Ljava/lang/String; = "isExpose"

.field static final KEY_IS_NICKNAME_CHANGED:Ljava/lang/String; = "isNicknameChanged"

.field static final KEY_IS_VALID:Ljava/lang/String; = "isValid"

.field static final KEY_LAST_LOGIN_DATE:Ljava/lang/String; = "lastLoginDate"

.field static final KEY_LAST_PLAYED_DATE:Ljava/lang/String; = "lastPlayedDate"

.field static final KEY_MARKET_URL:Ljava/lang/String; = "marketURL"

.field static final KEY_MEMBER_NO:Ljava/lang/String; = "memberNo"

.field static final KEY_NAME:Ljava/lang/String; = "name"

.field static final KEY_NICKNAME:Ljava/lang/String; = "nickname"

.field static final KEY_PERIOD:Ljava/lang/String; = "period"

.field static final KEY_PHONE_NO:Ljava/lang/String; = "phoneNo"

.field static final KEY_RECENT_PLAYED_GAME_NO:Ljava/lang/String; = "recentPlayedGameNo"

.field static final KEY_REDIRECTION_URL:Ljava/lang/String; = "redirectionURL"

.field static final KEY_RELATION_TYPE:Ljava/lang/String; = "relationType"

.field static final KEY_RELATION_TYPE_FROM_ME:Ljava/lang/String; = "relationTypeFromMe"

.field static final KEY_RELATION_TYPE_TO_ME:Ljava/lang/String; = "relationTypeToMe"

.field static final KEY_REP_RANKING:Ljava/lang/String; = "repRanking"

.field static final KEY_RESERED_DATA_DATE:Ljava/lang/String; = "reservedData"

.field static final KEY_RESERVED_DATA:Ljava/lang/String; = "reservedData"

.field static final KEY_SCORE:Ljava/lang/String; = "score"

.field static final KEY_STATUS_CODE:Ljava/lang/String; = "statusCode"

.field static final KEY_TITLE:Ljava/lang/String; = "title"

.field static final KEY_TODAY_WORDS:Ljava/lang/String; = "todayWords"

.field static final KEY_TYPE:Ljava/lang/String; = "type"

.field static final KEY_UNACHIEVED_ICON_URL:Ljava/lang/String; = "unachievedIconURL"

.field static final KEY_UNIT:Ljava/lang/String; = "unit"

.field static final PLAYED_GAME_NO_TABLE:Ljava/lang/String; = "HSPPlayedGameNo"

.field static final PROFILE_TABLE:Ljava/lang/String; = "HSPProfile"

.field static final PUNISHMENT_TABLE:Ljava/lang/String; = "HSPPunishment"

.field static final RANKING_TABLE:Ljava/lang/String; = "HSPRanking"

.field static final SOCIAL_TABLE:Ljava/lang/String; = "HSPSocial"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/CacheInfo;->CACHE_DB_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
