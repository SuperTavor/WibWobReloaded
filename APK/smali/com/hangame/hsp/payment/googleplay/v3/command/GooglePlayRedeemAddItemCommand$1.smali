.class Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand$1;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "GooglePlayRedeemAddItemCommand"

    const-string v1, "2) consumeAsync start"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand$1;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;

    invoke-static {v0}, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->access$200(Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;)Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getIabHelper()Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand$1;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;

    invoke-static {v1}, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->access$000(Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;)Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand$1;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;

    invoke-static {v2}, Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;->access$100(Lcom/hangame/hsp/payment/googleplay/v3/command/GooglePlayRedeemAddItemCommand;)Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->consumeAsync(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnConsumeFinishedListener;)V

    return-void
.end method
