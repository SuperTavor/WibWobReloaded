.class final Lcom/hangame/hsp/payment/teststore/TestStore$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

.field final synthetic val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    iput-object p3, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "hsp.payment.title.dialog.purchase"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "This is a test purchase. This purchase is not related on real payment.\nDo you want to buy this product?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "hsp.payment.btn.confirm"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/payment/teststore/TestStore$1$2;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/payment/teststore/TestStore$1$2;-><init>(Lcom/hangame/hsp/payment/teststore/TestStore$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "hsp.payment.btn.no"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/payment/teststore/TestStore$1$1;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/payment/teststore/TestStore$1$1;-><init>(Lcom/hangame/hsp/payment/teststore/TestStore$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->stopProgressDialog(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL300_REQUEST_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->updateClientStatus(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;)Z

    return-void
.end method
