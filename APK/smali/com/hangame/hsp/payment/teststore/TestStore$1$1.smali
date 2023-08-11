.class Lcom/hangame/hsp/payment/teststore/TestStore$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/teststore/TestStore$1;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/teststore/TestStore$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1$1;->this$0:Lcom/hangame/hsp/payment/teststore/TestStore$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1$1;->this$0:Lcom/hangame/hsp/payment/teststore/TestStore$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    const-string v1, "user canceled"

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1$1;->this$0:Lcom/hangame/hsp/payment/teststore/TestStore$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    iget-object v1, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1$1;->this$0:Lcom/hangame/hsp/payment/teststore/TestStore$1;

    iget-object v1, v1, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL400_PREPAY_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->USER_CANCELED:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x80008

    iget-object v5, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1$1;->this$0:Lcom/hangame/hsp/payment/teststore/TestStore$1;

    iget-object v5, v5, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.purchase.canceled"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
