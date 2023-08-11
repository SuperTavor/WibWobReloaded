.class Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1;

.field final synthetic val$purchase:Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1;Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1$1;->this$1:Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1;

    iput-object p2, p0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1$1;->val$purchase:Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1$1;->this$1:Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1;->val$googleStoreAction:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1$1;->val$purchase:Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getPaymentHeader(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v1, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "G"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v4}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setStatus(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1$1;->this$1:Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1;

    iget-object v2, v2, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1;->val$googleStoreAction:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setData(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1$1;->this$1:Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1;

    iget-object v2, v2, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1;->val$googleStoreAction:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    iget-object v3, p0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1$1;->val$purchase:Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    invoke-virtual {v2, v3}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getReceipt(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setReceipt(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1$1;->this$1:Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1;

    iget-object v2, v2, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1;->val$googleStoreAction:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    iget-object v3, p0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1$1;->val$purchase:Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    invoke-virtual {v2, v3, v0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->googlePlayAddItem(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;Lcom/hangame/hsp/payment/core/model/PaymentHeader;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getPaymentStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "RestoreTransactionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "RestoreTransactionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "RestoreTransactionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x81005

    if-ne v3, v2, :cond_0

    const-string v0, "GooglePlay RetryAddItem purchaseResultMap : null"

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    :goto_0
    const-string v0, "RestoreTransactionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientStatusData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->sendClientStatus(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    return-void

    :cond_0
    if-nez v3, :cond_1

    const-string v0, "GooglePlay RetryAddItem Success"

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GooglePlay RetryAddItem Fail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
