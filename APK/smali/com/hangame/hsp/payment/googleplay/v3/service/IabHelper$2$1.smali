.class Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;

.field final synthetic val$inv_f:Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;

.field final synthetic val$result_f:Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2$1;->this$1:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;

    iput-object p2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2$1;->val$result_f:Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    iput-object p3, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2$1;->val$inv_f:Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2$1;->this$1:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;

    iget-object v0, v0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2;->val$listener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2$1;->val$result_f:Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$2$1;->val$inv_f:Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;)V

    return-void
.end method
