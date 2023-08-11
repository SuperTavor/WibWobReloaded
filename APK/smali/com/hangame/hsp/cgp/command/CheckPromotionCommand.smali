.class public Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;
.super Lcom/hangame/hsp/cgp/command/CGPCommand;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isTimeout:Z

.field private mCallback:Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;

.field private mMapCallback:Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionMapCB;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JLcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hangame/hsp/cgp/command/CGPCommand;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    const-string v0, "CheckPromotionCommand"

    iput-object v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->isTimeout:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->mTimer:Ljava/util/Timer;

    iput-object p5, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->mCallback:Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JLcom/hangame/hsp/cgp/HSPCGP$CheckPromotionMapCB;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hangame/hsp/cgp/command/CGPCommand;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    const-string v0, "CheckPromotionCommand"

    iput-object v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->isTimeout:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->mTimer:Ljava/util/Timer;

    iput-object p5, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->mMapCallback:Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionMapCB;

    return-void
.end method

.method static synthetic access$002(Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->isTimeout:Z

    return p1
.end method

.method static synthetic access$100(Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;)Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->mCallback:Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;)Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionMapCB;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->mMapCallback:Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionMapCB;

    return-object v0
.end method

.method private respondCheckPromotionFail(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "CheckPromotionCommand"

    invoke-static {v0, p3}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$2;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$2;-><init>(Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CheckPromotionCommand"

    const-string v2, "respondCheckPromotionFail exception : "

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private respondCheckPromotionSuccess(Ljava/lang/Object;Lcom/hangame/hsp/cgp/response/CGPResponse;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$3;-><init>(Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;Ljava/lang/Object;Lcom/hangame/hsp/cgp/response/CGPResponse;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CheckPromotionCommand"

    const-string v2, "respondCheckPromotionSuccess exception : "

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPromotionTimer()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand$1;-><init>(Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;)V

    iget-object v1, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->mTimer:Ljava/util/Timer;

    const-wide/32 v2, 0x157c0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CheckPromotionCommand"

    const-string v2, "checkPromotionTimer exception : "

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->checkRequestInstance()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "CheckPromotionCommand"

    const-string v1, "********  check promotion step 1 : Timer Start ********"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->startPromotionTimer()V

    const-string v0, "CheckPromotionCommand"

    const-string v1, "********  check promotion step 2 : Request CGP Server - check promotion  ********"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->mHttpRequest:Lcom/hangame/hsp/cgp/request/HttpRequest;

    invoke-static {v0}, Lcom/hangame/hsp/cgp/processor/PromotionProcessor;->requestCGPServer(Lcom/hangame/hsp/cgp/request/HttpRequest;)Lcom/hangame/hsp/cgp/model/PromotionCheckInfo;

    move-result-object v0

    const-string v1, "CheckPromotionCommand"

    const-string v2, "********  check promotion step 3 : CGP Server Timeout Check ********"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->isTimeout:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->mContext:Ljava/lang/Object;

    const/16 v1, 0x3e9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultMap is null. Timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->isTimeout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->respondCheckPromotionFail(Ljava/lang/Object;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CheckPromotionCommand"

    const-string v2, "CheckPromotionCommand run exception : "

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v1, "CheckPromotionCommand"

    const-string v2, "********  check promotion step 4 : CGP data Check ********"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/hangame/hsp/cgp/model/PromotionCheckInfo;->getPromoInfoList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "CheckPromotionCommand"

    const-string v1, "Not exists any promotion."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    new-instance v0, Lcom/hangame/hsp/cgp/response/CGPResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hangame/hsp/cgp/response/CGPResponse;-><init>(I)V

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/cgp/core/CGPService;->setCgpResponse(Lcom/hangame/hsp/cgp/response/CGPResponse;)V

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/cgp/core/CGPService;->setPromotionMap(Ljava/util/HashMap;)V

    iget-object v1, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->mContext:Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->respondCheckPromotionSuccess(Ljava/lang/Object;Lcom/hangame/hsp/cgp/response/CGPResponse;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "CheckPromotionCommand"

    const-string v2, "********  check promotion step 5 : Get CGPResponse Object ********"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/hangame/hsp/cgp/processor/PromotionProcessor;->getCGPResponse(Lcom/hangame/hsp/cgp/model/PromotionCheckInfo;)Lcom/hangame/hsp/cgp/response/CGPResponse;

    move-result-object v1

    iget-boolean v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->isTimeout:Z

    if-nez v0, :cond_4

    if-nez v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->mContext:Ljava/lang/Object;

    const/16 v1, 0x3eb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting promotion info error. Timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->isTimeout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->respondCheckPromotionFail(Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "CheckPromotionCommand"

    const-string v2, "********  check promotion step 6 : Get PromotionInfo Object ********"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/hangame/hsp/cgp/processor/PromotionProcessor;->getPromotionInfo(Lcom/hangame/hsp/cgp/response/CGPResponse;)Ljava/util/HashMap;

    move-result-object v2

    iget-boolean v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->isTimeout:Z

    if-nez v0, :cond_6

    if-nez v2, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->mContext:Ljava/lang/Object;

    const/16 v1, 0x3ec

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting promotion info error. Timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->isTimeout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->respondCheckPromotionFail(Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "CheckPromotionCommand"

    const-string v3, "********  check promotion step 7 : Timer cancel ********"

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const-string v0, "CheckPromotionCommand"

    const-string v3, "********  check promotion step 8 : Check Client DB for Reward Validation ********"

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->mContext:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/hangame/hsp/cgp/processor/PromotionProcessor;->checkRewardDB(Ljava/lang/Object;Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->mContext:Ljava/lang/Object;

    const/16 v1, 0x3ee

    const-string v2, "Client DB Error."

    invoke-direct {p0, v0, v1, v2}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->respondCheckPromotionFail(Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "CheckPromotionCommand"

    const-string v3, "********  check promotion step 9 : Check Report Impression ********"

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->mContext:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/cgp/processor/PromotionProcessor;->checkReportImpression(Landroid/content/Context;Lcom/hangame/hsp/cgp/response/CGPResponse;Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->mContext:Ljava/lang/Object;

    const/16 v1, 0x3ef

    const-string v2, "Promotion & Reward info parsing error."

    invoke-direct {p0, v0, v1, v2}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->respondCheckPromotionFail(Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "CheckPromotionCommand"

    const-string v2, "********  check promotion step 11 : Response Success ********"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->mContext:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;->respondCheckPromotionSuccess(Ljava/lang/Object;Lcom/hangame/hsp/cgp/response/CGPResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
