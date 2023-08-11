.class Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;

.field final synthetic val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$2;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;

    iput-object p2, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$2;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$2;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    const-string v1, "Start google payments."

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$2;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->writeLog(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    return-void
.end method
