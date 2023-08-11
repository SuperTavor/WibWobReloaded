.class public final Lcom/hangame/hsp/util/TimestampUtil;
.super Ljava/lang/Object;


# static fields
.field private static final INITAIL_TIME:J = 0x0L

.field private static final KEY_LNC_NOTICE:Ljava/lang/String;

.field private static final KEY_LNC_UPDATE:Ljava/lang/String;

.field private static final KEY_NOTICE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "TimestampUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getGameVersion()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HSP_NOTICE_TIMESTAMP_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/hangame/hsp/util/TimestampUtil;->KEY_NOTICE:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HSP_LNC_NOTICE_TIMESTAMP_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/hangame/hsp/util/TimestampUtil;->KEY_LNC_NOTICE:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HSP_LNC_VERSION_UPDATE_TIMESTAMP_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/util/TimestampUtil;->KEY_LNC_UPDATE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadLncNoticeTimestamp()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/hangame/hsp/util/TimestampUtil;->KEY_LNC_NOTICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/TimestampUtil;->loadTimestamp(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadLncVersionUpdateTimeStamp()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/hangame/hsp/util/TimestampUtil;->KEY_LNC_UPDATE:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/TimestampUtil;->loadTimestamp(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/CalendarUtil;->getDateString8(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadNoticeTimeStamp()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/hangame/hsp/util/TimestampUtil;->KEY_NOTICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/TimestampUtil;->loadTimestamp(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/CalendarUtil;->getDateTimeString14(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static loadTimestamp(Ljava/lang/String;)J
    .locals 5

    invoke-static {}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "TimestampUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadTimestamp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public static saveLncNoticeTimestamp(J)Z
    .locals 2

    sget-object v0, Lcom/hangame/hsp/util/TimestampUtil;->KEY_LNC_NOTICE:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/hangame/hsp/util/TimestampUtil;->saveTimestamp(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static saveLncVersionUpdateTimeStamp()Z
    .locals 4

    sget-object v0, Lcom/hangame/hsp/util/TimestampUtil;->KEY_LNC_UPDATE:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/hangame/hsp/util/TimestampUtil;->saveTimestamp(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static saveNoticeTimestamp()Z
    .locals 4

    sget-object v0, Lcom/hangame/hsp/util/TimestampUtil;->KEY_NOTICE:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/hangame/hsp/util/TimestampUtil;->saveTimestamp(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method private static saveTimestamp(Ljava/lang/String;J)Z
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "TimestampUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveTimestamp :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
