.class final Lcom/hangame/hsp/payment/core/util/PaymentUtil$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$4;->val$lock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$4;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$4;->val$lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$4;->val$context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "PaymentUtil"

    const-string v2, "Context is null"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$4;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PaymentUtil"

    const-string v2, "getClientStateDBInsertionCommand : Insert RTRY State. storeId"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$4;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v0, v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->insertRetryTarget(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Z

    :goto_1
    const-string v0, "PaymentUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientStatus inserted. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$4;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v3}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$4;->val$lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$4;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v0, v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->insertClientStatus(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
