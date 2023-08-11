.class public Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "PaymentStateMachine"

.field private static isProcessingPurchase:Z

.field private static isServiceConnected:Z

.field private static isShowingProgressDialog:Z

.field private static notifyIdList:Ljava/util/List;

.field private static paymentActivity:Landroid/app/Activity;

.field private static paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

.field private static purchaseResult:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

.field private static sClientTxNo:J

.field private static timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->sClientTxNo:J

    sput-object v2, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    sput-object v2, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->paymentActivity:Landroid/app/Activity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->notifyIdList:Ljava/util/List;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->timer:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNotifyId(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->notifyIdList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static cancelTimer()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    const-string v0, "PaymentStateMachine"

    const-string v1, "Timer Canceled."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PaymentStateMachine"

    const-string v2, "cancelTimer exception : "

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static containProcessedNotificationId(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->notifyIdList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final declared-synchronized getClientTxNo(Landroid/content/Context;)J
    .locals 10

    const-wide/16 v8, 0x1

    const-wide/16 v6, 0x0

    const-class v1, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "Payment"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "clientTxNo"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    cmp-long v4, v2, v6

    if-nez v4, :cond_0

    const-wide/16 v2, 0x1

    sput-wide v2, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->sClientTxNo:J

    :goto_0
    const-string v2, "clientTxNo"

    sget-wide v4, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->sClientTxNo:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-wide v2, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->sClientTxNo:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :cond_0
    add-long/2addr v2, v8

    :try_start_1
    sput-wide v2, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->sClientTxNo:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;
    .locals 8

    const-class v7, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    if-nez v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    const-wide/16 v1, 0x0

    const-string v3, ""

    const-wide/16 v4, 0x0

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->makePaymentHeader(Lcom/hangame/hsp/payment/core/constant/ClientApiType;JLjava/lang/String;JLjava/lang/String;)Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    :cond_0
    sget-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static getNotifyIdList()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->notifyIdList:Ljava/util/List;

    return-object v0
.end method

.method public static getPaymentActivity()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->paymentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getPurchaseResult()Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->purchaseResult:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    return-object v0
.end method

.method public static getTimer()Ljava/util/Timer;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method public static isProcessingPurchase()Z
    .locals 1

    sget-boolean v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->isProcessingPurchase:Z

    return v0
.end method

.method public static isServiceConnected()Z
    .locals 1

    sget-boolean v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->isServiceConnected:Z

    return v0
.end method

.method public static isShowingProgressDialog()Z
    .locals 1

    sget-boolean v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->isShowingProgressDialog:Z

    return v0
.end method

.method public static declared-synchronized makeAndInsertPaymentHeader(Landroid/content/Context;Lcom/hangame/hsp/payment/core/constant/ClientApiType;JLjava/lang/String;JLjava/lang/String;)Lcom/hangame/hsp/payment/core/model/PaymentHeader;
    .locals 4

    const-class v1, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->NONE:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    sput-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->purchaseResult:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    invoke-static/range {p1 .. p7}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->makePaymentHeader(Lcom/hangame/hsp/payment/core/constant/ClientApiType;JLjava/lang/String;JLjava/lang/String;)Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    new-instance v2, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v2, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    const-string v3, "Purchase started."

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->insertClientStatus(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized makePaymentHeader(Lcom/hangame/hsp/payment/core/constant/ClientApiType;JLjava/lang/String;JLjava/lang/String;)Lcom/hangame/hsp/payment/core/model/PaymentHeader;
    .locals 6

    const-class v2, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->NONE:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    sput-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->purchaseResult:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    new-instance v0, Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-direct {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setCode(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setCurrentTime(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setEventNo(I)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setGameNo(I)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setMemberNo(J)V

    invoke-virtual {v0, p4, p5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setReceiverMemberNo(J)V

    invoke-virtual {v0, p3}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setProductId(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setRequestTime(J)V

    invoke-static {}, Lcom/hangame/hsp/HSPUtil;->getUniqueDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setRequester(Ljava/lang/String;)V

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL100_START_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setStatus(Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getStoreId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setStoreId(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setTxId(J)V

    invoke-virtual {v0, p1, p2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setClientTxNo(J)V

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setApiType(Lcom/hangame/hsp/payment/core/constant/ClientApiType;)V

    invoke-virtual {v0, p6}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setParaMap(Ljava/lang/String;)V

    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/hangame/hsp/util/NetworkUtil;->getSimOperator()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v1, "unknown"

    :cond_2
    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setPhoneOperator(Ljava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_0
    move-exception v1

    :try_start_4
    const-string v1, "unknown"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static resetState()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->NONE:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    sput-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->purchaseResult:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    sput-boolean v1, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->isShowingProgressDialog:Z

    invoke-static {v1}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setProcessingPurchase(Z)V

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method public static setCurrentPaymentHeader(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V
    .locals 0

    sput-object p0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    return-void
.end method

.method public static setNotifyIdList(Ljava/util/List;)V
    .locals 0

    sput-object p0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->notifyIdList:Ljava/util/List;

    return-void
.end method

.method public static setPaymentActivity(Landroid/app/Activity;)V
    .locals 0

    sput-object p0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->paymentActivity:Landroid/app/Activity;

    return-void
.end method

.method public static setProcessingPurchase(Z)V
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "PaymentStateMachine"

    const-string v1, "New Purchase has been processing."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sput-boolean p0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->isProcessingPurchase:Z

    return-void

    :cond_0
    const-string v0, "PaymentStateMachine"

    const-string v1, "The current purchase has finished."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setPurchaseResult(Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;)V
    .locals 3

    const-string v0, "PaymentStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPurchaseResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->purchaseResult:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    return-void
.end method

.method public static setServiceConnected(Z)V
    .locals 0

    sput-boolean p0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->isServiceConnected:Z

    return-void
.end method

.method public static setShowingProgressDialog(Z)V
    .locals 0

    sput-boolean p0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->isShowingProgressDialog:Z

    return-void
.end method

.method public static setTimer(Ljava/util/Timer;)V
    .locals 0

    sput-object p0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->timer:Ljava/util/Timer;

    return-void
.end method

.method public static startTimer(JJI)V
    .locals 4

    :try_start_0
    const-string v0, "PaymentStateMachine"

    const-string v1, "*******   starts Timer    *********"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$1;

    invoke-direct {v0, p4}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$1;-><init>(I)V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v1}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setTimer(Ljava/util/Timer;)V

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getTimer()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PaymentStateMachine"

    const-string v2, "startTimer exception : "

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static startTimer(Ljava/util/TimerTask;J)V
    .locals 3

    const-string v0, "PaymentStateMachine"

    const-string v1, "*******   starts Timer    *********"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const-string v0, "PaymentStateMachine"

    const-string v1, "TimerTask is null or time is unavailable."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setTimer(Ljava/util/Timer;)V

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getTimer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PaymentStateMachine"

    const-string v2, "startTimer exception : "

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
