.class Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$QueryInventoryFinishedListener;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5$1;->this$1:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;)V
    .locals 3

    const-string v0, "GooglePlayPurchase"

    const-string v1, "Query inventory finished."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GooglePlayPurchase"

    const-string v1, "onQueryInventoryFinished failed."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5$1;->this$1:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5;

    iget-object v0, v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5;->val$googleProductInfoCB:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$GoogleProductInfoCB;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$GoogleProductInfoCB;->onProductInfos(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "GooglePlayPurchase"

    const-string v2, "onQueryInventoryFinished success."

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5$1;->this$1:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5;

    iget-object v0, v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5;->val$productIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/hangame/hsp/payment/googleplay/v3/model/SkuDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5$1;->this$1:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5;

    iget-object v0, v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5;->val$googleProductInfoCB:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$GoogleProductInfoCB;

    invoke-interface {v0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$GoogleProductInfoCB;->onProductInfos(Ljava/util/List;)V

    goto :goto_0
.end method
