.class final Lcom/hangame/hsp/HSPDetailedProfileCache;
.super Ljava/lang/Object;


# static fields
.field private static COLUMS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HSPDetailedProfileCache"

.field private static sCache:Lcom/hangame/hsp/HSPDetailedProfileCache;


# instance fields
.field private final sDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/HSPDetailedProfileCache;->sCache:Lcom/hangame/hsp/HSPDetailedProfileCache;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "memberNo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "isAdmin"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "relationTypeFromMe"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "relationTypeToMe"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "isNicknameChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "age"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gender"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "todayWords"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exposeAge"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "exposeGender"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "gameUserData"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "phoneNo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/hangame/hsp/HSPDetailedProfileCache;->COLUMS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/hangame/hsp/HSPCacheManager;->getDbHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/HSPDetailedProfileCache;->sDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    const-string v0, "HSPDetailedProfileCache"

    const-string v1, "HSPDetailedProfileCache"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPDetailedProfileCache;
    .locals 3

    const-class v1, Lcom/hangame/hsp/HSPDetailedProfileCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfileCache;->sCache:Lcom/hangame/hsp/HSPDetailedProfileCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPDetailedProfileCache;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPDetailedProfileCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hangame/hsp/HSPDetailedProfileCache;->sCache:Lcom/hangame/hsp/HSPDetailedProfileCache;

    const-string v0, "HSPDetailedProfileCache"

    const-string v2, "getInstance"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfileCache;->sCache:Lcom/hangame/hsp/HSPDetailedProfileCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadData(Landroid/database/Cursor;)Lcom/hangame/hsp/HSPDetailedProfile;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Lcom/hangame/hsp/HSPDetailedProfile;

    invoke-direct {v3}, Lcom/hangame/hsp/HSPDetailedProfile;-><init>()V

    const-string v0, "memberNo"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/hangame/hsp/HSPDetailedProfile;->mMemberNo:J

    const-string v0, "isAdmin"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/hangame/hsp/HSPDetailedProfile;->mIsAdmin:Z

    const-string v0, "relationTypeFromMe"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPCacheManager;->getRelationType(I)Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    move-result-object v0

    iput-object v0, v3, Lcom/hangame/hsp/HSPDetailedProfile;->mRelationTypeFromMe:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    const-string v0, "relationTypeToMe"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPCacheManager;->getRelationType(I)Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    move-result-object v0

    iput-object v0, v3, Lcom/hangame/hsp/HSPDetailedProfile;->mRelationTypeToMe:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    const-string v0, "isNicknameChanged"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/hangame/hsp/HSPDetailedProfile;->mIsNicknameChanged:Z

    const-string v0, "age"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/hangame/hsp/HSPDetailedProfile;->mAge:I

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->HSP_GENDER_MALE:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v4, "gender"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->HSP_GENDER_MALE:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    iput-object v0, v3, Lcom/hangame/hsp/HSPDetailedProfile;->mGender:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    :goto_2
    const-string v0, "todayWords"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/hangame/hsp/HSPDetailedProfile;->mTodayWords:Ljava/lang/String;

    const-string v0, "exposeAge"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_3
    iput-boolean v0, v3, Lcom/hangame/hsp/HSPDetailedProfile;->mExposeAge:Z

    const-string v0, "exposeGender"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_5

    :goto_4
    iput-boolean v1, v3, Lcom/hangame/hsp/HSPDetailedProfile;->mExposeGender:Z

    const-string v0, "gameUserData"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/hangame/hsp/HSPDetailedProfile;->mGameUserData:Ljava/lang/String;

    const-string v0, "phoneNo"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/hangame/hsp/HSPDetailedProfile;->mPhoneNo:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/hangame/hsp/HSPDetailedProfile;->mPlayedGameNoList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v3, Lcom/hangame/hsp/HSPDetailedProfile;->mPunishmentInfoMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v3, Lcom/hangame/hsp/HSPDetailedProfile;->mIDPInfoMap:Ljava/util/Map;

    const-string v0, "HSPDetailedProfileCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HSPDetailedProfileCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPDetailedProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->HSP_GENDER_FEMALE:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v4, "gender"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->HSP_GENDER_FEMALE:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    iput-object v0, v3, Lcom/hangame/hsp/HSPDetailedProfile;->mGender:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    goto/16 :goto_2

    :cond_3
    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->HSP_GENDER_UNKNOWN:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    iput-object v0, v3, Lcom/hangame/hsp/HSPDetailedProfile;->mGender:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    goto/16 :goto_2

    :cond_4
    move v0, v2

    goto/16 :goto_3

    :cond_5
    move v1, v2

    goto :goto_4
.end method

.method private makeContentValues(Lcom/hangame/hsp/HSPDetailedProfile;)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "memberNo"

    iget-wide v2, p1, Lcom/hangame/hsp/HSPDetailedProfile;->mMemberNo:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "isAdmin"

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPDetailedProfile;->isAdmin()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "relationTypeFromMe"

    iget-object v2, p1, Lcom/hangame/hsp/HSPDetailedProfile;->mRelationTypeFromMe:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->getValue()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    const-string v1, "relationTypeToMe"

    iget-object v2, p1, Lcom/hangame/hsp/HSPDetailedProfile;->mRelationTypeToMe:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->getValue()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    const-string v1, "isNicknameChanged"

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPDetailedProfile;->isNicknameChanged()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "age"

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPDetailedProfile;->getAge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "gender"

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPDetailedProfile;->getGender()Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPDetailedProfile;->getTodayWords()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "todayWords"

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPDetailedProfile;->getTodayWords()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "exposeAge"

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPDetailedProfile;->isAgeExposed()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "exposeGender"

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPDetailedProfile;->isGenderExposed()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPDetailedProfile;->getGameUserData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "gameUserData"

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPDetailedProfile;->getGameUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p1, Lcom/hangame/hsp/HSPDetailedProfile;->mPhoneNo:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "phoneNo"

    iget-object v2, p1, Lcom/hangame/hsp/HSPDetailedProfile;->mPhoneNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/Long;)Z
    .locals 4

    const-string v0, "HSPDetailedProfileCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HSPDetailedProfileCache Delete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/HSPDetailedProfileCache;->sDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v0, "HSPDetailedProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "memberNo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1}, Lcom/hangame/hsp/HSPCacheManager;->dbClose(Landroid/database/sqlite/SQLiteDatabase;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteAll()Z
    .locals 3

    const/4 v2, 0x0

    const-string v0, "HSPDetailedProfileCache"

    const-string v1, "HSPDetailedProfileCache Delete All"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/HSPDetailedProfileCache;->sDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v0, "HSPDetailedProfile"

    invoke-virtual {v1, v0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1}, Lcom/hangame/hsp/HSPCacheManager;->dbClose(Landroid/database/sqlite/SQLiteDatabase;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Lcom/hangame/hsp/HSPDetailedProfile;)J
    .locals 4

    const-string v0, "HSPDetailedProfileCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HSPDetailedProfileCache Insert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPDetailedProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/HSPDetailedProfileCache;->sDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/hangame/hsp/HSPDetailedProfileCache;->makeContentValues(Lcom/hangame/hsp/HSPDetailedProfile;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "HSPDetailedProfile"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/hangame/hsp/HSPCacheManager;->dbClose(Landroid/database/sqlite/SQLiteDatabase;)V

    return-wide v2
.end method

.method public select(J)Lcom/hangame/hsp/HSPDetailedProfile;
    .locals 9

    const/4 v4, 0x0

    const-string v0, "HSPDetailedProfileCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HSPDetailedProfileCache select: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/HSPDetailedProfileCache;->sDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "HSPDetailedProfile"

    sget-object v2, Lcom/hangame/hsp/HSPDetailedProfileCache;->COLUMS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "memberNo="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/hangame/hsp/HSPDetailedProfileCache;->loadData(Landroid/database/Cursor;)Lcom/hangame/hsp/HSPDetailedProfile;

    move-result-object v4

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-static {v0}, Lcom/hangame/hsp/HSPCacheManager;->dbClose(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v4
.end method

.method public selectAll()Ljava/util/List;
    .locals 8

    const/4 v3, 0x0

    const-string v0, "HSPDetailedProfileCache"

    const-string v1, "HSPDetailedProfileCache selectAll "

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/HSPDetailedProfileCache;->sDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "HSPDetailedProfile"

    sget-object v2, Lcom/hangame/hsp/HSPDetailedProfileCache;->COLUMS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-direct {p0, v1}, Lcom/hangame/hsp/HSPDetailedProfileCache;->loadData(Landroid/database/Cursor;)Lcom/hangame/hsp/HSPDetailedProfile;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-static {v0}, Lcom/hangame/hsp/HSPCacheManager;->dbClose(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v3
.end method

.method public update(JLcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;)Z
    .locals 7

    const-string v0, "HSPDetailedProfileCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HSPDetailedProfileCache Update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->getValue()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/hangame/hsp/HSPDetailedProfileCache;->sDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "relationTypeFromMe"

    invoke-virtual {p3}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->getValue()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    const-string v3, "HSPDetailedProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "memberNo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1}, Lcom/hangame/hsp/HSPCacheManager;->dbClose(Landroid/database/sqlite/SQLiteDatabase;)V

    return v0
.end method
