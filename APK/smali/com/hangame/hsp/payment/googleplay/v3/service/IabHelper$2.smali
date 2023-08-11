.class Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;ZLjava/util/List;Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    iput-boolean p2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;->val$listener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v1, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    const/4 v0, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v1, v0, v2}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    iget-boolean v3, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;->val$querySkuDetails:Z

    iget-object v4, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;
    :try_end_0
    .catch Lcom/hangame/hsp/payment/googleplay/v3/model/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    invoke-virtual {v2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->flagEndAsync()V

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    iget-boolean v2, v2, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->mDisposed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;->val$listener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$QueryInventoryFinishedListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v3, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2$1;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabException;->getResult()Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    move-result-object v1

    goto :goto_0
.end method
