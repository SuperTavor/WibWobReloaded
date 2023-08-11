.class Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$4;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$4;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$4$1;->this$2:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    const-string v1, "Cancel payment before the start of google play."

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->writeLog(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    return-void
.end method
