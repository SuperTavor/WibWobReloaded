.class final Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    iput-object p2, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/SimpleJsonParser;->json2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "appid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v1

    check-cast v1, Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;->val$clientStatusData:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->getHeader()Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "request_purchase_history"

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->getCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TStorePurchase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->getPlugin()Lcom/skplanet/dodo/IapPlugin;

    move-result-object v3

    new-instance v4, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3$1;-><init>(Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;Lcom/hangame/hsp/payment/tstore/TStorePurchase;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lcom/skplanet/dodo/IapPlugin;->sendCommandRequest(Ljava/lang/String;Lcom/skplanet/dodo/IapPlugin$RequestCallback;)Landroid/os/Bundle;

    return-void
.end method
