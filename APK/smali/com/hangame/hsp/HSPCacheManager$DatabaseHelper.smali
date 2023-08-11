.class final Lcom/hangame/hsp/HSPCacheManager$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/hangame/hsp/CacheInfo;->CACHE_DB_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "HSPCacheManager"

    const-string v1, "Table Create"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "  CREATE TABLE [HSPProfile] (   [memberNo] BIGINT NOT NULL ON CONFLICT REPLACE UNIQUE ON CONFLICT REPLACE,  [isValid] BOOL DEFAULT (0),    [nickname] VARCHAR(50),    [exposeOnline] BOOL DEFAULT (0),    [lastLoginDate] DATETIME,    [recentPlayedGameNo] INTEGER,    [reservedData] VARCHAR(500),    [modifiedDate] DATETIME DEFAULT (CURRENT_TIMESTAMP))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE [HSPDetailedProfile] (   [memberNo] BIGINT NOT NULL ON CONFLICT FAIL UNIQUE ON CONFLICT REPLACE REFERENCES [HSPProfile]([memberNo]) ON DELETE CASCADE ON UPDATE CASCADE,    [isAdmin] BOOL DEFAULT (0),    [relationTypeFromMe] TINYINT,    [relationTypeToMe] TINYINT,    [isNicknameChanged] BOOL,    [age] SMALLINT,    [gender] VARCHAR(2),    [todayWords] NVARCHAR(50),    [exposeAge] BOOL,    [exposeGender] BOOL,    [gameUserData] VARCHAR(3000),    [phoneNo] VARCHAR(20),    [modifiedDate] DATETIME DEFAULT (CURRENT_TIMESTAMP))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE [HSPPlayedGameNo] (   [memberNo] BIGINT NOT NULL ON CONFLICT FAIL REFERENCES [HSPProfile]([memberNo]) ON DELETE CASCADE ON UPDATE CASCADE,    [gameNo] INT NOT NULL ON CONFLICT FAIL,    UNIQUE([memberNo], [gameNo]) ON CONFLICT REPLACE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE [HSPIdpInfo] (   [memberNo] BIGINT NOT NULL ON CONFLICT FAIL REFERENCES [HSPProfile]([memberNo]) ON DELETE CASCADE ON UPDATE CASCADE,    [idpCode] VARCHAR(20) NOT NULL ON CONFLICT FAIL,    [idpId] VARCHAR(50),    [isExpose] BOOL,    UNIQUE([memberNo], [idpCode]) ON CONFLICT REPLACE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE [HSPPunishment] (   [memberNo] BIGINT NOT NULL ON CONFLICT FAIL REFERENCES [HSPProfile]([memberNo]) ON DELETE CASCADE ON UPDATE CASCADE,    [type] VARCHAR(20) NOT NULL ON CONFLICT FAIL,    [count] SMALLINT,    [endDate] DATETIME,    UNIQUE([memberNo], [type]) ON CONFLICT REPLACE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE [HSPGame] (   [gameNo] INT NOT NULL ON CONFLICT FAIL UNIQUE ON CONFLICT REPLACE,    [gameId] VARCHAR(20),    [name] VARCHAR(50),    [iconURL] VARCHAR(100),    [statusCode] VARCHAR(10),    [adminMemberNo] BIGINT,    [redirectionURL] VARCHAR(100),    [bundleId] VARCHAR(50),    [customURL] VARCHAR(100),    [marketURL] VARCHAR(100),    [modifiedDate] DATETIME DEFAULT (CURRENT_TIMESTAMP))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE [HSPGameLog] (   [gameNo] INT NOT NULL ON CONFLICT FAIL,    [memberNo] BIGINT NOT NULL ON CONFLICT FAIL,    [firstPlayedDate] DATETIME,    [lastPlayedDate] DATETIME,    [modifiedDate] DATETIME DEFAULT (CURRENT_TIMESTAMP),    UNIQUE([gameNo], [memberNo]) ON CONFLICT REPLACE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE [HSPRanking] (   [factor] INT NOT NULL ON CONFLICT FAIL,    [period] TINYINT NOT NULL ON CONFLICT FAIL,    [name] VARCHAR(50),    [unit] VARCHAR(10),    [reservedData] VARCHAR(500),    [gameNo] INT NOT NULL ON CONFLICT FAIL,    [repRanking] BOOL DEFAULT (0),   [modifiedDate] DATETIME DEFAULT (CURRENT_TIMESTAMP),    UNIQUE([factor], [period], [gameNo]) ON CONFLICT REPLACE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE [HSPAchievement] (   [achievementID] VARCHAR(50) NOT NULL ON CONFLICT FAIL,    [gameNo] INT NOT NULL ON CONFLICT FAIL REFERENCES [HSPGame]([gameNo]) ON DELETE CASCADE ON UPDATE CASCADE,    [title] VARCHAR(50),    [detail] VARCHAR(100),    [score] INT DEFAULT (0),    [achievedIconURL] VARCHAR(100),    [unachievedIconURL] VARCHAR(100),    [modifiedDate] DATETIME DEFAULT (CURRENT_TIMESTAMP),    UNIQUE([achievementID], [gameNo]) ON CONFLICT REPLACE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE [HSPAchieved] (   [achievementID] VARCHAR(50) NOT NULL ON CONFLICT FAIL REFERENCES [HSPAchievement]([achievementID]) ON DELETE CASCADE ON UPDATE CASCADE MATCH FULL,    [gameNo] INT NOT NULL ON CONFLICT FAIL REFERENCES [HSPGame]([gameNo]) ON DELETE CASCADE ON UPDATE CASCADE MATCH FULL,    [memberNo] BIGINT NOT NULL ON CONFLICT FAIL REFERENCES [HSPProfile]([memberNo]) ON DELETE CASCADE ON UPDATE CASCADE MATCH FULL,    [isAchieved] BOOL DEFAULT (0),    UNIQUE([achievementID], [gameNo], [memberNo]) ON CONFLICT REPLACE)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE [HSPSocial] (   [memberNo] BIGINT NOT NULL ON CONFLICT FAIL UNIQUE ON CONFLICT REPLACE,    [relationType] TINYINT NOT NULL ON CONFLICT FAIL,    [modifiedDate] DATETIME DEFAULT (CURRENT_TIMESTAMP))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string v0, "HSPCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading db from version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DROP TABLE HSPSocial"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE HSPAchieved"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE HSPAchievement"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE HSPRanking"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE HSPGameLog"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE HSPGame"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE HSPPunishment"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE HSPIdpInfo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE HSPPlayedGameNo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE HSPDetailedProfile"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE HSPProfile"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/hangame/hsp/HSPCacheManager$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
