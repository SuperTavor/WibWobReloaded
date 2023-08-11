.class Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;

.field final synthetic val$result:Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$1;->this$1:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;

    iput-object p2, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$1;->val$result:Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to query inventory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$1;->val$result:Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$1;->val$result:Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;->getResponse()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->writeLog(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    return-void
.end method
