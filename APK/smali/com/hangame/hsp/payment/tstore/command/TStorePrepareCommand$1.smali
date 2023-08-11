.class Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skplanet/dodo/IapPlugin$RequestCallback;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$bodyText:Ljava/lang/String;

.field final synthetic val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

.field final synthetic val$hspUri:Lcom/hangame/hsp/ui/HSPUiUri;

.field final synthetic val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

.field final synthetic val$productName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand;Lcom/hangame/hsp/payment/core/model/PaymentHeader;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/ui/HSPUiUri;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->this$0:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand;

    iput-object p2, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    iput-object p3, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    iput-object p4, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$appId:Ljava/lang/String;

    iput-object p5, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$bodyText:Ljava/lang/String;

    iput-object p6, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$hspUri:Lcom/hangame/hsp/ui/HSPUiUri;

    iput-object p7, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$productName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TStore request_purchase_history fail. identifier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    const-string v0, "TStorePrepareTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientStatusData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->LIBRARY_EXCEPTION:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x81003

    iget-object v5, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.exception"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lcom/skplanet/dodo/IapResponse;)V
    .locals 8

    const-string v0, "TStorePrepareTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/skplanet/dodo/IapResponse;->getContentToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-interface {p1}, Lcom/skplanet/dodo/IapResponse;->getContentToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "product"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "validity"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setReserved(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setHeader(Lcom/hangame/hsp/payment/core/model/PaymentHeader;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    const-string v1, "Prepare success"

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-virtual {v4}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getReserved()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->getStoreAddInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->this$0:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand;

    invoke-static {v0}, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand;->access$000(Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->updateClientStatus(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;)Z

    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->isUseConfirmPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->this$0:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand;

    invoke-static {v0}, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand;->access$000(Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1$1;-><init>(Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->this$0:Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand;

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$hspUri:Lcom/hangame/hsp/ui/HSPUiUri;

    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$productName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand;->access$100(Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand;Lcom/hangame/hsp/ui/HSPUiUri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TStore request_purchase_history fail. JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    const-string v0, "TStorePrepareTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientStatusData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->LIBRARY_EXCEPTION:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    const v4, 0x81003

    iget-object v5, p0, Lcom/hangame/hsp/payment/tstore/command/TStorePrepareCommand$1;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v5}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hsp.payment.err.msg.exception"

    invoke-static {v6}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
