.class Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver$GoogleIabBroadcastListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$3;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receivedBroadcast()V
    .locals 2

    const-string v0, "GooglePlayPurchase"

    const-string v1, "Received Broadcast Google PURCHASES_UPDATE Intent."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->access$002(Z)Z

    return-void
.end method
