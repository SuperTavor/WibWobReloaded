.class Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$3;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$3;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$3$1;->this$1:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$3;

    iput-object p2, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$3$1;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$3$1;->this$1:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$3;

    iget-object v2, v0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$3;->val$singleListener:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$3$1;->this$1:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$3;

    iget-object v0, v0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$3$1;->val$results:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;

    invoke-interface {v2, v0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;->onConsumeFinished(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;)V

    return-void
.end method
