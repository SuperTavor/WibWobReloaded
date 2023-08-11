.class Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabSetupFinishedListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$4;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;)V
    .locals 3

    const-string v0, "GooglePlayPurchase"

    const-string v1, "Setup finished."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GooglePlayPurchase"

    const-string v1, "Setup successful"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$4;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getPurchaseListFromGooglePlay()Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->access$102(Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;)Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    const-string v0, "GooglePlayPurchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem setting up Google Play in-app billing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
