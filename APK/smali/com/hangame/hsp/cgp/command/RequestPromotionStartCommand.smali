.class public Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand;
.super Lcom/hangame/hsp/cgp/command/CGPCommand;


# static fields
.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hangame/hsp/cgp/command/CGPCommand;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    const-string v0, "RequestPromotionStartCommand"

    iput-object v0, p0, Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private requestMeshupStrtPmt(Lcom/hangame/hsp/cgp/request/HttpRequest;)Lcom/hangame/hsp/cgp/model/PromotionResultInfo;
    .locals 8

    new-instance v1, Lcom/hangame/hsp/cgp/model/PromotionResultInfo;

    invoke-direct {v1}, Lcom/hangame/hsp/cgp/model/PromotionResultInfo;-><init>()V

    new-instance v2, Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand$1;

    invoke-direct {v2, p0, v1}, Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand$1;-><init>(Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand;Lcom/hangame/hsp/cgp/model/PromotionResultInfo;)V

    new-instance v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqPromotionStart2;

    invoke-direct {v3}, Lcom/hangame/hsp/xdr/hsp13/request/ReqPromotionStart2;-><init>()V

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqPromotionStart2;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iget-object v4, p1, Lcom/hangame/hsp/cgp/request/HttpRequest;->parameterMap:Ljava/util/Map;

    const-string v0, "memberNo"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqPromotionStart2;->memberNo:J

    const-string v0, "gameNo"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqPromotionStart2;->gameNo:I

    const-string v0, "promotionId"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqPromotionStart2;->promotionId:I

    const-string v0, "deviceId"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqPromotionStart2;->deviceId:Ljava/lang/String;

    sget-object v4, Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {v3, v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand;->lock:Ljava/lang/Object;

    const-wide/32 v2, 0x157c0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v4

    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "RequestPromotionStartCommand"

    const-string v3, "requestCGPServer exception : "

    invoke-static {v2, v3, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand;->checkRequestInstance()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand;->mHttpRequest:Lcom/hangame/hsp/cgp/request/HttpRequest;

    invoke-direct {p0, v0}, Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand;->requestMeshupStrtPmt(Lcom/hangame/hsp/cgp/request/HttpRequest;)Lcom/hangame/hsp/cgp/model/PromotionResultInfo;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "RequestPromotionStartCommand"

    const-string v1, "No response from the CGP Server."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RequestPromotionStartCommand"

    const-string v2, "Fail to request the messsage notifying promotion starts."

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/hangame/hsp/cgp/model/PromotionResultInfo;->getResult()I

    move-result v0

    const-string v1, "RequestPromotionStartCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v0, "RequestPromotionStartCommand"

    const-string v1, "duplicated requestPromotionStart"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
