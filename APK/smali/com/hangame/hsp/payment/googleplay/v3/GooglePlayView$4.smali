.class Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$4;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;)V
    .locals 8

    const-string v0, "GooglePlayView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consumption finished. Purchase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager;->getCurrentPaymentHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v1

    new-instance v0, Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;-><init>(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$4;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;

    invoke-static {v2}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->access$500(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;)Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setData(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$4;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;

    invoke-static {v2}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->access$500(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;)Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getReceipt(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setReceipt(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GooglePlayView"

    const-string v3, "Consumption successful. Provisioning."

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL420_FINISH_CONSUME:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v4, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-static {v2, v0, v3, v4}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->updateClientStatus(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;)Z

    new-instance v2, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$4$1;

    invoke-direct {v2, p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$4$1;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$4;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    invoke-static {v2}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "hsp.payment.msg.processing"

    invoke-static {v3}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->lock()V

    new-instance v2, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayAddItemCommand;

    invoke-direct {v2, p1}, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayAddItemCommand;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)V

    invoke-static {v2}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v7

    const-string v2, "Cannot start addItem"

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->LIBRARY_EXCEPTION:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x81003

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.give.item.fail"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->closeGooglePlayView()V

    goto :goto_0

    :cond_0
    const-string v2, "GooglePlayView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while consuming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while consuming => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;->getResponse()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL420_FINISH_CONSUME:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->UNKNOWN:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x81005

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.exception"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->closeGooglePlayView()V

    goto/16 :goto_0
.end method
