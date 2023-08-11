.class Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand$2;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;)V
    .locals 4

    const-string v0, "GooglePlayRedeemAddItemCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consumption finished. Purchase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v1, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand$2;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;

    invoke-static {v0}, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->access$200(Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;)Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getRedeemData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand$2;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;

    invoke-static {v0}, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->access$200(Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;)Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getReceipt(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setReceipt(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GooglePlayRedeemAddItemCommand"

    const-string v2, "Consumption successful. Provisioning."

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand$2$1;

    invoke-direct {v0, p0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand$2$1;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand$2;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "GooglePlayRedeemAddItemCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while consuming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while consuming => "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;->getResponse()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand$2$2;

    invoke-direct {v0, p0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand$2$2;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand$2;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
