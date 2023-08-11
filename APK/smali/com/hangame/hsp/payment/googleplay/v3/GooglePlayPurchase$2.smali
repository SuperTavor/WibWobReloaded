.class Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$promoProductIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$2;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    iput-object p2, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$2;->val$promoProductIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v1

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$2;->val$activity:Landroid/app/Activity;

    const-string v2, "hsp.payment.msg.processing"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "GooglePlayPurchase"

    const-string v2, "GooglePlayPrepareCommand"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemPrepareCommand;

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$2;->val$promoProductIds:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemPrepareCommand;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v7

    const-string v0, "GooglePlayPurchase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GooglePlayPrepareCommand exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    const-string v2, "Fail to start GooglePlayPrepareCommand"

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->LIBRARY_EXCEPTION:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x81003

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.exception"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
