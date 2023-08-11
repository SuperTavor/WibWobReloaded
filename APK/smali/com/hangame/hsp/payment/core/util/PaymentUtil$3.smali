.class final Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;
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

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$lock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "PaymentUtil"

    const-string v2, "Context is null"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->selectClientStatus(Landroid/content/Context;J)Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$context:Landroid/content/Context;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->selectClientStatus(Landroid/content/Context;J)Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getClientTxNo()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getClientTxNo()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getReceipt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setReceipt(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v0, v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->updateClientStatusByClientTxNo(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Z

    const-string v0, "PaymentUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientStatus updated. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v3}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->clone()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    const-string v2, "PaymentUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clientStatusData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v4}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStoreId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getCode()I

    move-result v4

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL400_PREPAY_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->getValue()I

    move-result v5

    if-eq v4, v5, :cond_3

    :cond_1
    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_3

    :cond_2
    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL410_FINISH_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v5, v0, v6}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->access$100(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/PaymentHeader;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    :cond_4
    sget-object v5, Lcom/hangame/hsp/payment/core/constant/StoreId;->JIUHAO:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/StoreId;->QIHOO:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_5
    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->USER_CANCELED:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->getValue()I

    move-result v5

    if-eq v4, v5, :cond_6

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_7

    :cond_6
    iget-object v5, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v5, v0, v6}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->access$100(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/PaymentHeader;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    :cond_7
    sget-object v5, Lcom/hangame/hsp/payment/core/constant/StoreId;->T_STORE:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_10

    iget-object v5, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v5, v0, v6}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->access$100(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/PaymentHeader;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    :cond_8
    :goto_2
    sget-object v5, Lcom/hangame/hsp/payment/core/constant/StoreId;->NAVER_APPS:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL300_REQUEST_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_13

    iget-object v5, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v5, v0, v6}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->access$100(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/PaymentHeader;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    :cond_9
    :goto_3
    sget-object v5, Lcom/hangame/hsp/payment/core/constant/StoreId;->MYCARD:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->isTargetRtry()Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "PaymentUtil"

    const-string v6, "retryTarget"

    invoke-static {v5, v6}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v5, v0, v6}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->access$100(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/PaymentHeader;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    :cond_a
    :goto_4
    sget-object v5, Lcom/hangame/hsp/payment/core/constant/StoreId;->GOOGLE_CHECKOUT:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL420_FINISH_CONSUME:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v3}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v3}, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->getValue()I

    move-result v3

    if-eq v4, v3, :cond_b

    iget-object v3, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v6

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v6, v7, v5}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->deleteRetryTarget(Landroid/content/Context;JLjava/lang/String;)Z

    :cond_b
    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v3}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v3}, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->getValue()I

    move-result v3

    if-ne v4, v3, :cond_c

    iget-object v3, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v4

    sget-object v6, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v6}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->deleteRetryTarget(Landroid/content/Context;JLjava/lang/String;)Z

    :cond_c
    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v3}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->isTargetRtry()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v4

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v5, v0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->deleteRetryTarget(Landroid/content/Context;JLjava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_d
    :try_start_2
    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_5
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_e
    :try_start_3
    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v0, v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->insertClientStatus(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Z

    const-string v0, "PaymentUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientStatus inserted. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v3}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v0, v2}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->updateClientStatus(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Z

    const-string v0, "PaymentUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientStatus updated. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v3}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_10
    :try_start_4
    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->USER_CANCELED:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->getValue()I

    move-result v5

    if-eq v4, v5, :cond_12

    :cond_11
    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL300_REQUEST_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->USER_CANCELED:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_8

    :cond_12
    iget-object v5, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v6

    sget-object v8, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v8}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->deleteRetryTarget(Landroid/content/Context;JLjava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :try_start_5
    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    :cond_13
    :try_start_6
    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->USER_CANCELED:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->getValue()I

    move-result v5

    if-eq v4, v5, :cond_15

    :cond_14
    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL300_REQUEST_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->USER_CANCELED:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_9

    :cond_15
    iget-object v5, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v6

    sget-object v8, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v8}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->deleteRetryTarget(Landroid/content/Context;JLjava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    :try_start_7
    iget-object v2, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_16
    :try_start_8
    const-string v5, "PaymentUtil"

    const-string v6, "deleteRetryTarget"

    invoke-static {v5, v6}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v6

    sget-object v8, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v8}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->deleteRetryTarget(Landroid/content/Context;JLjava/lang/String;)Z

    goto/16 :goto_4

    :cond_17
    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->USER_CANCELED:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_a

    const-string v5, "PaymentUtil"

    const-string v6, "deleteRetryTarget"

    invoke-static {v5, v6}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v6

    sget-object v8, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v8}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->deleteRetryTarget(Landroid/content/Context;JLjava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_4
.end method
