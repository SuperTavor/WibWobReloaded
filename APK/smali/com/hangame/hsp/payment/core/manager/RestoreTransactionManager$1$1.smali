.class Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1;

.field final synthetic val$googleStoreAction:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1;Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1;->this$0:Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1;

    iput-object p2, p0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1;->val$googleStoreAction:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;)V
    .locals 3

    invoke-virtual {p2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1$1;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1$1;-><init>(Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1$1;Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "RestoreTransactionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consumeAsync Fail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
