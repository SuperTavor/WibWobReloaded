.class Ltv/superawesome/sdk/views/SABannerAd$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/saadloader/SALoaderInterface;


# instance fields
.field final synthetic this$1:Ltv/superawesome/sdk/views/SABannerAd$2;


# direct methods
.method constructor <init>(Ltv/superawesome/sdk/views/SABannerAd$2;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/views/SABannerAd$2$1;->this$1:Ltv/superawesome/sdk/views/SABannerAd$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saDidLoadAd(Ltv/superawesome/lib/samodelspace/saad/SAResponse;)V
    .locals 3

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$2$1;->this$1:Ltv/superawesome/sdk/views/SABannerAd$2;

    iget-object v0, v0, Ltv/superawesome/sdk/views/SABannerAd$2;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-virtual {p1}, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->isValid()Z

    move-result v1

    invoke-static {v0, v1}, Ltv/superawesome/sdk/views/SABannerAd;->access$102(Ltv/superawesome/sdk/views/SABannerAd;Z)Z

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$2$1;->this$1:Ltv/superawesome/sdk/views/SABannerAd$2;

    iget-object v1, v0, Ltv/superawesome/sdk/views/SABannerAd$2;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-virtual {p1}, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;

    :goto_0
    invoke-virtual {v1, v0}, Ltv/superawesome/sdk/views/SABannerAd;->setAd(Ltv/superawesome/lib/samodelspace/saad/SAAd;)V

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$2$1;->this$1:Ltv/superawesome/sdk/views/SABannerAd$2;

    iget-object v0, v0, Ltv/superawesome/sdk/views/SABannerAd$2;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SABannerAd;->access$200(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/sdk/views/SAInterface;

    move-result-object v1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$2$1;->this$1:Ltv/superawesome/sdk/views/SABannerAd$2;

    iget v2, v0, Ltv/superawesome/sdk/views/SABannerAd$2;->val$placementId:I

    invoke-virtual {p1}, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ltv/superawesome/sdk/views/SAEvent;->adLoaded:Ltv/superawesome/sdk/views/SAEvent;

    :goto_1
    invoke-interface {v1, v2, v0}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Ltv/superawesome/sdk/views/SAEvent;->adFailedToLoad:Ltv/superawesome/sdk/views/SAEvent;

    goto :goto_1
.end method
