.class public Lcom/hangame/hsp/cgp/command/CompletePromotionCommand;
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

    sput-object v0, Lcom/hangame/hsp/cgp/command/CompletePromotionCommand;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hangame/hsp/cgp/command/CGPCommand;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    const-string v0, "CompletePromotionCommand"

    iput-object v0, p0, Lcom/hangame/hsp/cgp/command/CompletePromotionCommand;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/cgp/command/CompletePromotionCommand;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private requestMeshupCpltPmt(Lcom/hangame/hsp/cgp/request/HttpRequest;)Lcom/hangame/hsp/cgp/model/PromotionResultInfo;
    .locals 8

    new-instance v1, Lcom/hangame/hsp/cgp/model/PromotionResultInfo;

    invoke-direct {v1}, Lcom/hangame/hsp/cgp/model/PromotionResultInfo;-><init>()V

    new-instance v2, Lcom/hangame/hsp/cgp/command/CompletePromotionCommand$1;

    invoke-direct {v2, p0, v1}, Lcom/hangame/hsp/cgp/command/CompletePromotionCommand$1;-><init>(Lcom/hangame/hsp/cgp/command/CompletePromotionCommand;Lcom/hangame/hsp/cgp/model/PromotionResultInfo;)V

    new-instance v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqSingleGameRewardCompleted;

    invoke-direct {v3}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSingleGameRewardCompleted;-><init>()V

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqSingleGameRewardCompleted;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

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

    iput-wide v6, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqSingleGameRewardCompleted;->memberNo:J

    const-string v0, "gameNo"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqSingleGameRewardCompleted;->gameNo:I

    const-string v0, "promotionId"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqSingleGameRewardCompleted;->promotionId:I

    sget-object v4, Lcom/hangame/hsp/cgp/command/CompletePromotionCommand;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {v3, v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/hangame/hsp/cgp/command/CompletePromotionCommand;->lock:Ljava/lang/Object;

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

    const-string v2, "CompletePromotionCommand"

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
    .locals 10

    const/4 v9, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/hangame/hsp/cgp/command/CompletePromotionCommand;->checkRequestInstance()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/cgp/command/CompletePromotionCommand;->mHttpRequest:Lcom/hangame/hsp/cgp/request/HttpRequest;

    iget-object v0, v0, Lcom/hangame/hsp/cgp/request/HttpRequest;->parameterMap:Ljava/util/Map;

    const-string v1, "promotionId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->getInstance()Lcom/hangame/hsp/cgp/db/CGPDBManager;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->selectData(Landroid/content/Context;[Ljava/lang/String;)Lcom/hangame/hsp/cgp/db/CGPDBObject;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/db/CGPDBObject;->getPromoId()I

    move-result v2

    if-eq v2, v0, :cond_2

    invoke-static {}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->getInstance()Lcom/hangame/hsp/cgp/db/CGPDBManager;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/hangame/hsp/cgp/db/CGPDBObject;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v0, v5, v6}, Lcom/hangame/hsp/cgp/db/CGPDBObject;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->insert(Landroid/content/Context;Lcom/hangame/hsp/cgp/db/CGPDBObject;)Z

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/hangame/hsp/cgp/command/CompletePromotionCommand;->mHttpRequest:Lcom/hangame/hsp/cgp/request/HttpRequest;

    invoke-direct {p0, v2}, Lcom/hangame/hsp/cgp/command/CompletePromotionCommand;->requestMeshupCpltPmt(Lcom/hangame/hsp/cgp/request/HttpRequest;)Lcom/hangame/hsp/cgp/model/PromotionResultInfo;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v0, "CompletePromotionCommand"

    const-string v1, "No response from the CGP Server."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CompletePromotionCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to request the messsage notifying reward completion. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_2
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/db/CGPDBObject;->getPromoId()I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/db/CGPDBObject;->getStatus()I

    move-result v2

    if-ne v2, v6, :cond_1

    invoke-static {}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->getInstance()Lcom/hangame/hsp/cgp/db/CGPDBManager;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/hangame/hsp/cgp/db/CGPDBObject;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {v4, v0, v5, v6}, Lcom/hangame/hsp/cgp/db/CGPDBObject;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->update(Landroid/content/Context;Lcom/hangame/hsp/cgp/db/CGPDBObject;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/model/PromotionResultInfo;->getResult()I

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "CompletePromotionCommand"

    const-string v3, "completeReward success"

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/db/CGPDBObject;->getPromoId()I

    move-result v2

    if-ne v2, v0, :cond_4

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/db/CGPDBObject;->getStatus()I

    move-result v1

    if-ne v1, v9, :cond_4

    invoke-static {}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->getInstance()Lcom/hangame/hsp/cgp/db/CGPDBManager;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/hangame/hsp/cgp/db/CGPDBObject;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v0, v4, v5}, Lcom/hangame/hsp/cgp/db/CGPDBObject;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->update(Landroid/content/Context;Lcom/hangame/hsp/cgp/db/CGPDBObject;)Z

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->getInstance()Lcom/hangame/hsp/cgp/db/CGPDBManager;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/hangame/hsp/cgp/db/CGPDBManager;->delete(Landroid/content/Context;I)Z

    goto/16 :goto_0

    :cond_5
    if-ne v2, v8, :cond_6

    const-string v0, "CompletePromotionCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeReward error or one reward completed - Status : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v0, "CompletePromotionCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeReward error or one reward completed - Status : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
