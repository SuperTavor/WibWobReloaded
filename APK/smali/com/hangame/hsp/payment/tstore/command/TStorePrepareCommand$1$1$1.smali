.class Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$2:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1$1;->this$2:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v1

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    const-string v2, "TStorePrepare canceled."

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->USER_CANCELED:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x80008

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.purchase.canceled"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
