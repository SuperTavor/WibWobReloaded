.class public final Lcom/hangame/hsp/HSPCacheManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPCacheManager"

.field private static sDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/HSPCacheManager;->sDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final checkMemberNoCanged()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPCacheManager;->useCacheData(J)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPCacheManager$1;

    invoke-direct {v0}, Lcom/hangame/hsp/HSPCacheManager$1;-><init>()V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static final declared-synchronized dbClose(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/HSPCacheManager;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ":memory:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const-string v0, "HSPCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DB Close!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static final declared-synchronized getDbHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 3

    const-class v1, Lcom/hangame/hsp/HSPCacheManager;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    const-string v0, "HSPCacheManager"

    const-string v2, "DatabaseHelper context is null"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/hangame/hsp/HSPCacheManager;->sDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_1

    const-string v0, "HSPCacheManager"

    const-string v2, "DatabaseHelper create!!"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPCacheManager$DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPCacheManager$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hangame/hsp/HSPCacheManager;->sDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_1
    sget-object v0, Lcom/hangame/hsp/HSPCacheManager;->sDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static final getIdpCode(Ljava/lang/String;)Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_TWITTER:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_TWITTER:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_FACEBOOK:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_FACEBOOK:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    goto :goto_0
.end method

.method static final getPunishmentType(Ljava/lang/String;)Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;->HSP_PUNISHTYPE_TODAYWORDS:Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;->HSP_PUNISHTYPE_TODAYWORDS:Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;->HSP_PUNISHTYPE_PROFILEIMAGE:Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;->HSP_PUNISHTYPE_PROFILEIMAGE:Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

    goto :goto_0
.end method

.method static final getRelationType(I)Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_NONE:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->getValue()B

    move-result v0

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_NONE:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_FOLLOW:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->getValue()B

    move-result v0

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_FOLLOW:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->getValue()B

    move-result v0

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_NONE:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    goto :goto_0
.end method

.method public static final declared-synchronized truncateAllTables()V
    .locals 4

    const-class v1, Lcom/hangame/hsp/HSPCacheManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/HSPMyProfile;->getInstance()Lcom/hangame/hsp/HSPMyProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPMyProfile;->clearInstance()V

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPSocialCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPSocialCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPSocialCache;->deleteAll()Z

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPAchievedCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPAchievedCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPAchievedCache;->deleteAll()Z

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPAchievementCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPAchievementCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPAchievementCache;->deleteAll()Z

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPRankingInfoCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPRankingInfoCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPRankingInfoCache;->deleteAll()Z

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPGameLogCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPGameLogCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPGameLogCache;->deleteAll()Z

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPGameCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPGameCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPGameCache;->deleteAll()Z

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPPunishmentCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPPunishmentCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPPunishmentCache;->deleteAll()Z

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPIdpInfoCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPIdpInfoCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPIdpInfoCache;->deleteAll()Z

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPPlayedGameNoCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPPlayedGameNoCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPPlayedGameNoCache;->deleteAll()Z

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPDetailedProfileCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPDetailedProfileCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPDetailedProfileCache;->deleteAll()Z

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPProfileCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPProfileCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPProfileCache;->deleteAll()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "HSPCacheManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static final useCache()Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getCacheTTLTime()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static final useCacheData(J)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getCacheTTLTime()I

    move-result v2

    const-string v3, "HSPCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cacheTTLTimeSec :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p0

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    int-to-long v2, v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
