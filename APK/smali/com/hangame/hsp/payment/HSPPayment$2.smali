.class final Lcom/hangame/hsp/payment/HSPPayment$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/payment/HSPPayment$HSPRedeemCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/HSPPayment$HSPRedeemCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/HSPPayment$2;->val$callback:Lcom/hangame/hsp/payment/HSPPayment$HSPRedeemCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported service store ID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->getStoreId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HSPPayment"

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/hangame/hsp/payment/HSPPayment$2;->val$callback:Lcom/hangame/hsp/payment/HSPPayment$HSPRedeemCB;

    const-string v2, "PAYMENTSERVICE"

    const/16 v3, 0x100a

    invoke-static {v2, v3, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/hangame/hsp/payment/HSPPayment$HSPRedeemCB;->onRedeem(Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
