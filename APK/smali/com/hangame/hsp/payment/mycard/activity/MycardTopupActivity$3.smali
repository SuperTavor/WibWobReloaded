.class Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity$3;->this$0:Lcom/hangame/hsp/payment/mycard/activity/MycardTopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v2

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    const-string v1, "Payment is canceled."

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getClientStatus(Ljava/lang/String;)Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    move-result-object v2

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->USER_CANCELED:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x80008

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.purchase.canceled"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->CANCEL:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setPurchaseResult(Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;)V

    invoke-static {v7}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->setCurrentPaymentHeader(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    return-void
.end method
