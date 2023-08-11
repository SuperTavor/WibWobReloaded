.class public Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPLaunchingService"

.field private static lncInitialized:Z

.field private static lncLastUpdated:J

.field private static mLaunchingInfoMap:Ljava/util/Map;

.field private static mLncRequestUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->lncInitialized:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->lncLastUpdated:J

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->mLaunchingInfoMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLanuchingState(Landroid/app/Activity;)Z
    .locals 1

    new-instance v0, Lcom/hangame/hsp/auth/lnc/LncStateManager;

    invoke-direct {v0}, Lcom/hangame/hsp/auth/lnc/LncStateManager;-><init>()V

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/auth/lnc/LncStateManager;->checkLncState(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getLaunchingInfoMap()Ljava/util/Map;
    .locals 2

    const-class v0, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->mLaunchingInfoMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getLaunchingInfoMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 6

    const-string v0, "getLaunchingInfos.json"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "getLaunchingInfos.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->mLncRequestUrl:Ljava/lang/String;

    const-string v0, "HSPLaunchingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP request url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->mLncRequestUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "Accept-Encoding"

    const-string v4, "gzip, compress"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->mLncRequestUrl:Ljava/lang/String;

    sget-object v3, Lcom/hangame/hsp/util/HttpUtil$ResponseType;->STRING:Lcom/hangame/hsp/util/HttpUtil$ResponseType;

    invoke-static {v2, v0, v3}, Lcom/hangame/hsp/util/HttpUtil;->queryRESTUrlWithGET(Ljava/lang/String;Ljava/util/List;Lcom/hangame/hsp/util/HttpUtil$ResponseType;)Lcom/hangame/hsp/util/HttpUtil$HttpResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/util/HttpUtil$HttpResult;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/util/HttpUtil$HttpResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "HSPLaunchingService"

    invoke-static {v2, v0}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/hangame/hsp/util/SimpleJsonParser;->json2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string v1, "HSPLaunchingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lnc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_1
    const-string v2, "HSPLaunchingService"

    const-string v3, "Fail to get launching server data"

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized getLaunchingInfoMap(Z)Z
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-class v3, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPConfiguration;->getAddressLaunching()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "HSPLaunchingService"

    const-string v2, "HSPCore.getInstance().getConfiguration().getAddressLaunching() is null"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    return v1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPConfiguration;->getLncRefreshTimeInterval()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-object v2, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->mLaunchingInfoMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    if-nez p0, :cond_1

    cmp-long v2, v6, v12

    if-lez v2, :cond_1

    sget-wide v10, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->lncLastUpdated:J

    sub-long v10, v8, v10

    cmp-long v2, v10, v6

    if-lez v2, :cond_4

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_5

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "gameNo"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "gameClientVersion"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/HSPCore;->getGameVersion()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "platformSdkVersion"

    invoke-static {}, Lcom/hangame/hsp/core/HSPVersion;->getHSPPlatformVersion()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "osType"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "osVersion"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "udid"

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getUdid(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "deviceModel"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "market"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/HSPConfiguration;->getMarketCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "lcnt"

    invoke-static {}, Lcom/hangame/hsp/util/TimestampUtil;->loadLncNoticeTimestamp()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "language"

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "locale"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/HSPConfiguration;->getLocale()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "country"

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "mobileCountry"

    invoke-static {}, Lcom/hangame/hsp/util/NetworkUtil;->getNetworkMobileCountry()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v2}, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->getLaunchingInfoMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->mLaunchingInfoMap:Ljava/util/Map;

    sget-object v2, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->mLaunchingInfoMap:Ljava/util/Map;

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->lncInitialized:Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/hangame/hsp/core/HSPInitializer;->lncInitialize()V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->lncInitialized:Z

    :cond_2
    sput-wide v8, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->lncLastUpdated:J

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getCurrentTime()J

    move-result-wide v4

    cmp-long v2, v4, v12

    if-lez v2, :cond_3

    invoke-static {v4, v5}, Lcom/hangame/hsp/util/TimestampUtil;->saveLncNoticeTimestamp(J)Z

    :cond_3
    :goto_2
    sget-object v2, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->mLaunchingInfoMap:Ljava/util/Map;

    if-eqz v2, :cond_6

    :goto_3
    move v1, v0

    goto/16 :goto_0

    :cond_4
    move v2, v1

    goto/16 :goto_1

    :cond_5
    const-string v2, "HSPLaunchingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Return alreay loaded launching info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->mLaunchingInfoMap:Ljava/util/Map;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method static getLncRequestUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->mLncRequestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static loadLaunchingInfo(Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService$1;-><init>(Lcom/hangame/hsp/core/HSPResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showLaunchingNotice(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager;

    invoke-direct {v0}, Lcom/hangame/hsp/auth/lnc/LncNoticeManager;-><init>()V

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/auth/lnc/LncNoticeManager;->showLncNoticeDialog(Landroid/app/Activity;)V

    return-void
.end method
