.class Lcom/hangame/hsp/payment/teststore/TestStore$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/teststore/TestStore$1;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/teststore/TestStore$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1$2;->this$0:Lcom/hangame/hsp/payment/teststore/TestStore$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1$2;->this$0:Lcom/hangame/hsp/payment/teststore/TestStore$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1$2;->this$0:Lcom/hangame/hsp/payment/teststore/TestStore$1;

    iget-object v1, v1, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL400_PREPAY_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->updateClientStatus(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;)Z

    iget-object v0, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1$2;->this$0:Lcom/hangame/hsp/payment/teststore/TestStore$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    const-string v1, "TestStore purchase success."

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1$2;->this$0:Lcom/hangame/hsp/payment/teststore/TestStore$1;

    iget-object v1, v1, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL410_FINISH_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->updateClientStatus(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;)Z

    new-instance v0, Lcom/hangame/hsp/payment/teststore/TestStore$1$2$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/payment/teststore/TestStore$1$2$1;-><init>(Lcom/hangame/hsp/payment/teststore/TestStore$1$2;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1$2;->this$0:Lcom/hangame/hsp/payment/teststore/TestStore$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$activity:Landroid/app/Activity;

    const-string v1, "hsp.payment.msg.processing"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :try_start_1
    new-instance v0, Lcom/hangame/hsp/payment/teststore/command/TestStoreAddItemCommand;

    invoke-direct {v0}, Lcom/hangame/hsp/payment/teststore/command/TestStoreAddItemCommand;-><init>()V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v7

    iget-object v0, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1$2;->this$0:Lcom/hangame/hsp/payment/teststore/TestStore$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    const-string v1, "TestStore error"

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1$2;->this$0:Lcom/hangame/hsp/payment/teststore/TestStore$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    iget-object v1, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1$2;->this$0:Lcom/hangame/hsp/payment/teststore/TestStore$1;

    iget-object v1, v1, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL400_PREPAY_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->LIBRARY_EXCEPTION:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x81003

    iget-object v5, p0, Lcom/hangame/hsp/payment/teststore/TestStore$1$2;->this$0:Lcom/hangame/hsp/payment/teststore/TestStore$1;

    iget-object v5, v5, Lcom/hangame/hsp/payment/teststore/TestStore$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.exception"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
