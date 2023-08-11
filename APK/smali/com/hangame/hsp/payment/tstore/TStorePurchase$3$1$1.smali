.class Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skplanet/dodo/IapPlugin$RequestCallback;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1$1;->this$1:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1$1;->this$1:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TStore change_product_properties fail. identifier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    const-string v0, "TStorePurchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientStatusData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1$1;->this$1:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;

    iget-object v2, v2, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v2, v2, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1$1;->this$1:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v1, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1$1;->this$1:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v2

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v4

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->updateRetryTargetRetryCount(Landroid/content/Context;JJLjava/lang/String;)Z

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1$1;->this$1:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->sendClientStatus(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    return-void
.end method

.method public onResponse(Lcom/skplanet/dodo/IapResponse;)V
    .locals 4

    const-string v0, "TStorePurchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/skplanet/dodo/IapResponse;->getContentToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1$1;->this$1:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    const-string v1, "processRetryAddItem Success"

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    const-string v0, "TStorePurchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientStatusData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1$1;->this$1:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;

    iget-object v2, v2, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v2, v2, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1$1;->this$1:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1$1;->this$1:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;

    iget-object v1, v1, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v1, v1, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->updateClientStatus(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;)Z

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1$1;->this$1:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->sendClientStatus(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    return-void
.end method
