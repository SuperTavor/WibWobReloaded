.class final Lcom/hangame/hsp/payment/core/util/PaymentUtil$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$6;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    iput-object p2, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$6;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$6;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$6;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/util/PaymentUtil$6;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->writeLog(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    return-void
.end method
