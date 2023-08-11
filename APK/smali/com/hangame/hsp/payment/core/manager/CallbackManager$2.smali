.class final Lcom/hangame/hsp/payment/core/manager/CallbackManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Ljava/lang/Object;

.field final synthetic val$clientTxNo:J

.field final synthetic val$hspResult:Lcom/hangame/hsp/HSPResult;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;J)V
    .locals 1

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/manager/CallbackManager$2;->val$callback:Ljava/lang/Object;

    iput-object p2, p0, Lcom/hangame/hsp/payment/core/manager/CallbackManager$2;->val$hspResult:Lcom/hangame/hsp/HSPResult;

    iput-wide p3, p0, Lcom/hangame/hsp/payment/core/manager/CallbackManager$2;->val$clientTxNo:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getStoreId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/StoreId;->GOOGLE_CHECKOUT:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->cancelTimer()V

    :cond_0
    sget-object v0, Lcom/hangame/hsp/payment/core/manager/CallbackManager;->mHSPPaymentCB:Lcom/hangame/hsp/payment/core/manager/HSPPaymentCB;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/CallbackManager;->mHSPPaymentCB:Lcom/hangame/hsp/payment/core/manager/HSPPaymentCB;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/manager/HSPPaymentCB;->onAfterRedeemListener()V

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/payment/core/manager/CallbackManager$2;->val$callback:Ljava/lang/Object;

    check-cast v0, Lcom/hangame/hsp/payment/HSPPayment$HSPRedeemCB;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/manager/CallbackManager$2;->val$hspResult:Lcom/hangame/hsp/HSPResult;

    invoke-interface {v0, v1}, Lcom/hangame/hsp/payment/HSPPayment$HSPRedeemCB;->onRedeem(Lcom/hangame/hsp/HSPResult;)V

    iget-wide v0, p0, Lcom/hangame/hsp/payment/core/manager/CallbackManager$2;->val$clientTxNo:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->removeCallback(Ljava/lang/Long;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setProcessingPurchase(Z)V

    return-void
.end method
