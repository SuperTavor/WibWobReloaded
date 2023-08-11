.class public Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "RestoreTransactionManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static restoreTransaction(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->isProcessingPurchase()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RestoreTransactionManager"

    const-string v1, "RestoreTransaction is processing...."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1;

    invoke-direct {v0}, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$1;-><init>()V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v0, "RestoreTransactionManager"

    const-string v1, "Start to retry addItems API to StoreGateway"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$2;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/payment/core/manager/RestoreTransactionManager$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
