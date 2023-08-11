.class final Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processCheckProceeded(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V
    .locals 7

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->checkTx(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getPaymentStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v4, "RestoreTransactionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "RestoreTransactionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "RestoreTransactionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x81005

    if-ne v3, v1, :cond_0

    const-string v0, "RestoreTransactionManager"

    const-string v1, "requestCheckProceeded response is fail."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v3, :cond_1

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v2

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->deleteRetryTarget(Landroid/content/Context;JLjava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string v0, "RestoreTransactionManager"

    const-string v1, "CheckForcedProcessingResponse response null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processRetryAddItem(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V
    .locals 9

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v4

    const-string v1, "RestoreTransactionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storeAddInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "RestoreTransactionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiptInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getReceipt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getReceipt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->requestAddItem(Lcom/hangame/hsp/payment/core/model/PaymentHeader;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getPaymentStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v6, "RestoreTransactionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "RestoreTransactionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "code : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "RestoreTransactionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "message : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setCode(I)V

    invoke-virtual {p1, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setStatus(Ljava/lang/String;)V

    const v1, 0x81005

    if-eq v3, v1, :cond_0

    const v1, 0xaf000

    if-lt v3, v1, :cond_1

    :cond_0
    const-string v1, "RestoreTransactionManager"

    const-string v2, "processRetryAddItem retry !!"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v2

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->updateRetryTargetRetryCount(Landroid/content/Context;JJLjava/lang/String;)Z

    :goto_0
    return-void

    :cond_1
    if-nez v3, :cond_2

    const-string v0, "addItem success"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$2;->val$context:Landroid/content/Context;

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-static {v0, p1, v1, v2}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->updateClientStatus(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v2

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->deleteRetryTarget(Landroid/content/Context;JLjava/lang/String;)Z

    goto :goto_0
.end method

.method private sendClientStatus(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V
    .locals 3

    const-string v0, "RestoreTransactionManager"

    const-string v1, "Send the ClientStatusData List"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL100_START_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL300_REQUEST_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not any more progress on the previous state ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setData(Ljava/lang/String;)V

    const-string v0, "Ongoing status of the client reprocessing"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->sendClientStatus(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RestoreTransactionManager"

    const-string v2, "sendClientStateList Exception"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$2;->val$context:Landroid/content/Context;

    const-wide/16 v2, 0x0

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->deleteRetryTarget(Landroid/content/Context;JLjava/lang/String;)Z

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v2, v3, v1}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->selectRetryTargetList(Landroid/content/Context;J[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    const-string v3, "RestoreTransactionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clientStatusDataList size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->writeLog(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/StoreId;->T_STORE:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v3}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getStoreId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getReceipt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$2;->val$context:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->tstoreRestore(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RestoreTransactionManager"

    const-string v2, "sendClientStateList Exception"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void

    :cond_1
    :try_start_1
    sget-object v3, Lcom/hangame/hsp/payment/core/constant/StoreId;->JIUHAO:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v3}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getStoreId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/StoreId;->QIHOO:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v3}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getStoreId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-direct {p0, v0}, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$2;->processCheckProceeded(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    invoke-direct {p0, v0}, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$2;->processRetryAddItem(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    :goto_1
    invoke-direct {p0, v0}, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$2;->sendClientStatus(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/hangame/hsp/payment/core/constant/StoreId;->NAVER_APPS:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v3}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getStoreId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v0}, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$2;->processCheckProceeded(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getReceipt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, v0}, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$2;->processRetryAddItem(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isKakaoGame()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "service_user_id"

    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/auth/login/LoginService;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {v3}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->makeJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "receipt"

    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getReserved()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "signature"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "receipt"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->makeJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setData(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setReceipt(Ljava/lang/String;)V

    const-string v3, "RestoreTransactionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clientStatusDat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$2;->processRetryAddItem(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getReceipt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-direct {p0, v0}, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$2;->processCheckProceeded(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    invoke-direct {p0, v0}, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$2;->processRetryAddItem(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v4

    sget-object v6, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v6}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->deleteRetryTarget(Landroid/content/Context;JLjava/lang/String;)Z

    const-string v3, "No Receipt!! Restore transaction end!!!"

    invoke-virtual {v0, v3}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
