.class Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skplanet/dodo/IapPlugin$RequestCallback;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$tPurchase:Lcom/hangame/hsp/payment/tstore/TStorePurchase;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;Lcom/hangame/hsp/payment/tstore/TStorePurchase;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iput-object p2, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->val$tPurchase:Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    iput-object p3, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

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

    const-string v0, "TStorePurchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientStatusData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v2, v2, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->sendClientStatus(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    return-void
.end method

.method public onResponse(Lcom/skplanet/dodo/IapResponse;)V
    .locals 10

    const-string v0, "TStorePurchase"

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
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/SimpleJsonParser;->json2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "restoreStatusValue"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "TStorePurchase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentValidity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    if-gt v1, v0, :cond_1

    :cond_0
    const-string v2, "TStorePurchase"

    const-string v3, "\uc7ac\ucc98\ub9ac \ud544\uc694 \uc5c6\uc74c \uc0ad\uc81c!!!! "

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v2, v2, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", currentValidity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v1, v1, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v2

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->deleteRetryTarget(Landroid/content/Context;JLjava/lang/String;)Z

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->writeLog(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v1, v1, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RTRY TStore request_purchase_history fail. JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    const-string v0, "TStorePurchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientStatusData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v2, v2, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->writeLog(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v2, v2, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v4, v4, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v4}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getMemberNo()J

    move-result-wide v4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "signature"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "receipt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "MSIShgJS"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hangame/hsp/util/SecurityUtil;->makeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->makeJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "TStorePurchase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Encrypted Data : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->val$tPurchase:Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->val$appId:Ljava/lang/String;

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v3, v0}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->getStoreAddInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TStorePurchase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storeAddInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v1, v1, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v1

    invoke-static {v1, v0, v6}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->requestAddItem(Lcom/hangame/hsp/payment/core/model/PaymentHeader;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getPaymentStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v7, "TStorePurchase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "TStorePurchase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "code : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "TStorePurchase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "message : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v2, v2, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v2, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v0, v6}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setReceipt(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setStatus(Ljava/lang/String;)V

    const v0, 0x81005

    if-ne v3, v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    const-string v1, "processRetryAddItem purchaseResultMap : null"

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    const-string v0, "TStorePurchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientStatusData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v2, v2, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v1, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v2

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->updateRetryTargetRetryCount(Landroid/content/Context;JJLjava/lang/String;)Z

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->sendClientStatus(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    goto/16 :goto_0

    :cond_2
    if-nez v3, :cond_3

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v1, v1, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->val$appId:Ljava/lang/String;

    const-string v3, "subtract_points"

    const-string v4, "change_product_properties"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->getCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TStorePurchase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->val$tPurchase:Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->getPlugin()Lcom/skplanet/dodo/IapPlugin;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1$1;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1$1;-><init>(Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/skplanet/dodo/IapPlugin;->sendCommandRequest(Ljava/lang/String;Lcom/skplanet/dodo/IapPlugin$RequestCallback;)Landroid/os/Bundle;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRetryAddItem Fail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    const-string v0, "TStorePurchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientStatusData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v2, v2, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getDetailMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v1, v1, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getTxId()J

    move-result-wide v2

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/hangame/hsp/payment/core/db/PaymentDBManager;->deleteRetryTarget(Landroid/content/Context;JLjava/lang/String;)Z

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->sendClientStatus(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V

    goto/16 :goto_0
.end method
