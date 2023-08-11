.class public final Lcom/hangame/hsp/mashup/HSPMashupService;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPMashupService"

.field private static sConnectionManager:Lcom/hangame/hsp/mashup/ConnectionManager;

.field private static sDefaultTimeout:J

.field private static sHeartBeatTask:Ljava/util/TimerTask;

.field private static sHeartBeatTimer:Ljava/util/Timer;

.field private static sIsLighthouse:Z

.field private static final sResponseHookerMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sResponseHookerMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/hangame/hsp/mashup/ConnectionManager;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sConnectionManager:Lcom/hangame/hsp/mashup/ConnectionManager;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sIsLighthouse:Z

    return v0
.end method

.method static synthetic access$200()Lcom/hangame/hsp/HSPResult;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->resume()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method

.method public static getBiData()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "os_no"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "telecom_cd"

    invoke-static {}, Lcom/hangame/hsp/util/NetworkUtil;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "game_ver"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform_sdk_ver"

    invoke-static {}, Lcom/hangame/hsp/HSPUtil;->getHSPVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "devicemodel"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "countrycode"

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "marketcode"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPConfiguration;->getMarketCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lorg/json/simple/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurTransactionId()J
    .locals 2

    sget-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sConnectionManager:Lcom/hangame/hsp/mashup/ConnectionManager;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sConnectionManager:Lcom/hangame/hsp/mashup/ConnectionManager;

    invoke-interface {v0}, Lcom/hangame/hsp/mashup/ConnectionManager;->getCurTransactionId()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static getHeartBeatPeriod()I
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getHeartBeatInterval()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->getHeartBeatTimeInterval()J

    move-result-wide v0

    long-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method

.method private static declared-synchronized getTransactionId()J
    .locals 6

    const-class v1, Lcom/hangame/hsp/mashup/HSPMashupService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    xor-long/2addr v2, v4

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static handleResponseHooker(I[B)Z
    .locals 3

    sget-object v1, Lcom/hangame/hsp/mashup/HSPMashupService;->sResponseHookerMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sResponseHookerMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sResponseHookerMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/mashup/HSPMashupService$ResponseHooker;

    invoke-interface {v0, p0, p1}, Lcom/hangame/hsp/mashup/HSPMashupService$ResponseHooker;->onReceiveResponse(I[B)V

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)Lcom/hangame/hsp/HSPResult;
    .locals 6

    const-class v1, Lcom/hangame/hsp/mashup/HSPMashupService;

    monitor-enter v1

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPConfiguration;->getTimeoutTCP()J

    move-result-wide v4

    invoke-static {p0, v0, v2, v4, v5}, Lcom/hangame/hsp/mashup/HSPMashupService;->initialize(Landroid/content/Context;ZLjava/lang/String;J)Lcom/hangame/hsp/HSPResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;ZLjava/lang/String;J)Lcom/hangame/hsp/HSPResult;
    .locals 7

    const/4 v1, 0x1

    const-class v2, Lcom/hangame/hsp/mashup/HSPMashupService;

    monitor-enter v2

    :try_start_0
    const-string v0, "HSPMashupService"

    const-string v3, "initialize"

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p3

    sput-wide v4, Lcom/hangame/hsp/mashup/HSPMashupService;->sDefaultTimeout:J

    sget-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sConnectionManager:Lcom/hangame/hsp/mashup/ConnectionManager;

    if-eqz v0, :cond_0

    const-string v0, "MASHUP"

    invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    if-ne p1, v1, :cond_3

    :try_start_1
    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLightHouseUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sIsLighthouse:Z

    :goto_2
    const-string v0, "HSPMashupService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize: sIsLighthouse : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/hangame/hsp/mashup/HSPMashupService;->sIsLighthouse:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sIsLighthouse:Z

    if-eqz v0, :cond_5

    if-ne p1, v1, :cond_4

    new-instance v0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;

    invoke-direct {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;-><init>()V

    sput-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sConnectionManager:Lcom/hangame/hsp/mashup/ConnectionManager;

    :goto_3
    invoke-static {}, Lcom/hangame/hsp/util/AndroidVersionUtil;->isHoneyCombAndAbove()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/hangame/hsp/mashup/HSPMashupService$1;

    invoke-direct {v1}, Lcom/hangame/hsp/mashup/HSPMashupService$1;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    const-string v0, "MASHUP"

    invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sIsLighthouse:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "HSPMashupService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "MASHUP"

    const/16 v1, 0x1005

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_4
    :try_start_3
    new-instance v0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;

    invoke-direct {v0, p2}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sConnectionManager:Lcom/hangame/hsp/mashup/ConnectionManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5
    :try_start_4
    const-string v0, "LAUNCHINGSERVICE"

    const v1, 0xf006

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public static makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/hangame/hsp/mashup/HSPMashupService;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;SZ)V

    return-void
.end method

.method public static makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;SZ)V
    .locals 3

    const/4 v2, 0x1

    iput-byte v2, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;->verMajor:B

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;->verMinor:B

    iput-short p1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;->verProtocol:S

    const/4 v0, 0x2

    iput v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;->osNo:I

    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->getTransactionId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;->transactionId:J

    if-ne p2, v2, :cond_0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v0

    iput v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;->gameNo:I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;->memberNo:J

    const-string v0, "HSPMashupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeHeader: sIsLighthouse : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/hangame/hsp/mashup/HSPMashupService;->sIsLighthouse:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sIsLighthouse:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getTicket()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;->authTicket:Ljava/lang/String;

    :cond_0
    new-instance v0, Lorg/json/simple/JSONObject;

    invoke-direct {v0}, Lorg/json/simple/JSONObject;-><init>()V

    const-string v1, "timezone"

    invoke-static {}, Lcom/hangame/hsp/util/TimeZoneUtil;->getUTCTimeZoneString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/simple/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;->reserved:Ljava/lang/String;

    return-void
.end method

.method public static makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/hangame/hsp/mashup/HSPMashupService;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;SZ)V

    return-void
.end method

.method public static putResponseHooker(ILcom/hangame/hsp/mashup/HSPMashupService$ResponseHooker;)V
    .locals 3

    sget-object v1, Lcom/hangame/hsp/mashup/HSPMashupService;->sResponseHookerMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sResponseHookerMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeResponseHooker(I)V
    .locals 3

    sget-object v1, Lcom/hangame/hsp/mashup/HSPMashupService;->sResponseHookerMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sResponseHookerMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static request(Ljava/lang/Object;[BJLcom/hangame/hsp/core/HSPResHandler;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/hangame/hsp/mashup/HSPMashupService;->request(Ljava/lang/Object;[BJLcom/hangame/hsp/core/HSPResHandler;Z)V

    return-void
.end method

.method public static request(Ljava/lang/Object;[BJLcom/hangame/hsp/core/HSPResHandler;Z)V
    .locals 8

    const-string v0, "HSPMashupService"

    const-string v1, "request"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/mashup/HSPMashupService$2;

    move v2, p5

    move-object v3, p4

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/hangame/hsp/mashup/HSPMashupService$2;-><init>(ZLcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;[BJ)V

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static request(Ljava/lang/Object;[BLcom/hangame/hsp/core/HSPResHandler;)V
    .locals 6

    sget-wide v2, Lcom/hangame/hsp/mashup/HSPMashupService;->sDefaultTimeout:J

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/hangame/hsp/mashup/HSPMashupService;->request(Ljava/lang/Object;[BJLcom/hangame/hsp/core/HSPResHandler;Z)V

    return-void
.end method

.method public static request(Ljava/lang/Object;[BLcom/hangame/hsp/core/HSPResHandler;Z)V
    .locals 6

    sget-wide v2, Lcom/hangame/hsp/mashup/HSPMashupService;->sDefaultTimeout:J

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/hangame/hsp/mashup/HSPMashupService;->request(Ljava/lang/Object;[BJLcom/hangame/hsp/core/HSPResHandler;Z)V

    return-void
.end method

.method private static requestOffline()Lcom/hangame/hsp/HSPResult;
    .locals 6

    sget-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sConnectionManager:Lcom/hangame/hsp/mashup/ConnectionManager;

    invoke-interface {v0}, Lcom/hangame/hsp/mashup/ConnectionManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->stopHeartBeatTask()V

    const-string v0, "MASHUP"

    invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetOffline;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetOffline;-><init>()V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetOffline;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetOffline;-><init>()V

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetOffline;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/mashup/HSPMashupService;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetOffline;->Save()[B

    move-result-object v0

    sget-object v2, Lcom/hangame/hsp/mashup/HSPMashupService;->sConnectionManager:Lcom/hangame/hsp/mashup/ConnectionManager;

    sget-wide v4, Lcom/hangame/hsp/mashup/HSPMashupService;->sDefaultTimeout:J

    invoke-interface {v2, v0, v4, v5}, Lcom/hangame/hsp/mashup/ConnectionManager;->syncCall([BJ)[B

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "HSPMashupService"

    const-string v1, "HSP Server timeout logout failed"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MASHUP"

    const/16 v1, 0x1002

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetOffline;->Load([BI)I

    const-string v0, "HSPMashupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ansSetOffline.header.status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetOffline;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "MASHUP"

    iget-object v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetOffline;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->stopHeartBeatTask()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HSPMashupService"

    const-string v2, "suspend failed"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "MASHUP"

    const/16 v1, 0x1010

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static requestSync([B)[B
    .locals 2

    sget-wide v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sDefaultTimeout:J

    invoke-static {p0, v0, v1}, Lcom/hangame/hsp/mashup/HSPMashupService;->requestSync([BJ)[B

    move-result-object v0

    return-object v0
.end method

.method public static requestSync([BJ)[B
    .locals 5

    const-string v0, "HSPMashupService"

    const-string v1, "requestSync"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sConnectionManager:Lcom/hangame/hsp/mashup/ConnectionManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/hangame/hsp/mashup/ConnectionManager;->syncCall([BJ)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const-string v1, "HSPMashupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSync returns: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "HSPMashupService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private static resume()Lcom/hangame/hsp/HSPResult;
    .locals 3

    const-string v0, "HSPMashupService"

    const-string v1, "resume()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sConnectionManager:Lcom/hangame/hsp/mashup/ConnectionManager;

    if-nez v0, :cond_0

    const-string v0, "HSPMashupService"

    const-string v1, "connection manager is not initialized"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MASHUP"

    const/16 v1, 0x1005

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setOnline()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->startHeartBeatTask()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->stopHeartBeatTask()V

    goto :goto_0
.end method

.method public static declared-synchronized startHeartBeatTask()V
    .locals 7

    const-class v6, Lcom/hangame/hsp/mashup/HSPMashupService;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sHeartBeatTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->stopHeartBeatTask()V

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->getHeartBeatPeriod()I

    move-result v4

    const-string v0, "HSPMashupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startHeartBeatTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/mashup/HSPMashupService$HeartBeatTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hangame/hsp/mashup/HSPMashupService$HeartBeatTimerTask;-><init>(Lcom/hangame/hsp/mashup/HSPMashupService$1;)V

    sput-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sHeartBeatTask:Ljava/util/TimerTask;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sHeartBeatTimer:Ljava/util/Timer;

    sget-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sHeartBeatTimer:Ljava/util/Timer;

    sget-object v1, Lcom/hangame/hsp/mashup/HSPMashupService;->sHeartBeatTask:Ljava/util/TimerTask;

    int-to-long v2, v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized stopHeartBeatTask()V
    .locals 3

    const-class v1, Lcom/hangame/hsp/mashup/HSPMashupService;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPMashupService"

    const-string v2, "stopHeartBeatTask"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sHeartBeatTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sHeartBeatTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sHeartBeatTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sHeartBeatTask:Ljava/util/TimerTask;
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

.method public static suspend()Lcom/hangame/hsp/HSPResult;
    .locals 2

    const-string v0, "HSPMashupService"

    const-string v1, "suspend()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sConnectionManager:Lcom/hangame/hsp/mashup/ConnectionManager;

    if-nez v0, :cond_0

    const-string v0, "HSPMashupService"

    const-string v1, "connection manager is not initialized"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MASHUP"

    const/16 v1, 0x1005

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->requestOffline()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method

.method public static syncCall([B)[B
    .locals 4

    sget-object v0, Lcom/hangame/hsp/mashup/HSPMashupService;->sConnectionManager:Lcom/hangame/hsp/mashup/ConnectionManager;

    sget-wide v2, Lcom/hangame/hsp/mashup/HSPMashupService;->sDefaultTimeout:J

    invoke-interface {v0, p0, v2, v3}, Lcom/hangame/hsp/mashup/ConnectionManager;->syncCall([BJ)[B

    move-result-object v0

    return-object v0
.end method
