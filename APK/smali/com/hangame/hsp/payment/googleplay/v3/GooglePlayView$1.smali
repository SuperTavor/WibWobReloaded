.class Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$QueryInventoryFinishedListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;)V
    .locals 6

    const-string v0, "GooglePlayView"

    const-string v1, "Query inventory finished."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GooglePlayView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to query inventory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$1;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$1;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;Lcom/hangame/hsp/payment/googleplay/v3/model/IabResult;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->closeGooglePlayView()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;

    invoke-static {v0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->access$000(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->getPurchase(Ljava/lang/String;)Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;

    invoke-static {v1, v0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->access$100(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GooglePlayView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "We have ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;

    invoke-static {v2}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->access$000(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Consuming it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;

    invoke-static {v0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->access$300(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;)Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;

    invoke-static {v1}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->access$000(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->getPurchase(Ljava/lang/String;)Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;

    invoke-static {v2}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->access$200(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;)Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->consumeAsync(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;)V

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$2;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$2;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->closeGooglePlayView()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/payment/core/manager/CacheManager;->isUseConfirmPopup()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GooglePlayView"

    const-string v1, "launchPurchaseFlow - isUseConfirmPopup: true"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "hsp.payment.msg.confirm.purchase"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hsp.payment.btn.yes"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$3;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$3;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;)V

    const-string v3, "hsp.payment.btn.no"

    invoke-static {v3}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$4;

    invoke-direct {v4, p0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$4;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;)V

    new-instance v5, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$5;

    invoke-direct {v5, p0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$5;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;)V

    invoke-static/range {v0 .. v5}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkCancelButton(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "GooglePlayView"

    const-string v1, "launchPurchaseFlow - isUseConfirmPopup: false"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;

    invoke-static {v0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->access$400(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;)V

    goto/16 :goto_0
.end method
