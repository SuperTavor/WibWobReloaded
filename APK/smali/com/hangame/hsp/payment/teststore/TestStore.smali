.class public Lcom/hangame/hsp/payment/teststore/TestStore;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static purchase(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v1, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    new-instance v2, Lcom/hangame/hsp/payment/teststore/TestStore$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/hangame/hsp/payment/teststore/TestStore$1;-><init>(Landroid/app/Activity;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
