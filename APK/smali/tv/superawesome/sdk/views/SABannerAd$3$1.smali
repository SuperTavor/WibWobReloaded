.class Ltv/superawesome/sdk/views/SABannerAd$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/saevents/SAViewableModule$Listener;


# instance fields
.field final synthetic this$1:Ltv/superawesome/sdk/views/SABannerAd$3;


# direct methods
.method constructor <init>(Ltv/superawesome/sdk/views/SABannerAd$3;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/views/SABannerAd$3$1;->this$1:Ltv/superawesome/sdk/views/SABannerAd$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saDidFindViewOnScreen(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$3$1;->this$1:Ltv/superawesome/sdk/views/SABannerAd$3;

    iget-object v0, v0, Ltv/superawesome/sdk/views/SABannerAd$3;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SABannerAd;->access$500(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/saevents/SAEvents;

    move-result-object v0

    invoke-virtual {v0}, Ltv/superawesome/lib/saevents/SAEvents;->triggerViewableImpressionEvent()V

    :cond_0
    return-void
.end method
