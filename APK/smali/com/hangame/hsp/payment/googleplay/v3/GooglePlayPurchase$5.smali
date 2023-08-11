.class Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

.field final synthetic val$googleProductInfoCB:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$GoogleProductInfoCB;

.field final synthetic val$productIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;Ljava/util/List;Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$GoogleProductInfoCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    iput-object p2, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5;->val$productIds:Ljava/util/List;

    iput-object p3, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5;->val$googleProductInfoCB:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$GoogleProductInfoCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getIabHelper()Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5;->val$productIds:Ljava/util/List;

    new-instance v3, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5$1;

    invoke-direct {v3, p0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5$1;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GooglePlayPurchase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSkuDetailsAsync Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5;->val$googleProductInfoCB:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$GoogleProductInfoCB;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$GoogleProductInfoCB;->onProductInfos(Ljava/util/List;)V

    goto :goto_0
.end method
