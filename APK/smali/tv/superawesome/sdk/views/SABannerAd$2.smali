.class Ltv/superawesome/sdk/views/SABannerAd$2;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sasession/SASessionInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/sdk/views/SABannerAd;

.field final synthetic val$placementId:I


# direct methods
.method constructor <init>(Ltv/superawesome/sdk/views/SABannerAd;I)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/views/SABannerAd$2;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    iput p2, p0, Ltv/superawesome/sdk/views/SABannerAd$2;->val$placementId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didFindSessionReady()V
    .locals 4

    iget-object v0, p0, Ltv/superawesome/sdk/views/SABannerAd$2;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v0}, Ltv/superawesome/sdk/views/SABannerAd;->access$300(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/saadloader/SALoader;

    move-result-object v0

    iget v1, p0, Ltv/superawesome/sdk/views/SABannerAd$2;->val$placementId:I

    iget-object v2, p0, Ltv/superawesome/sdk/views/SABannerAd$2;->this$0:Ltv/superawesome/sdk/views/SABannerAd;

    invoke-static {v2}, Ltv/superawesome/sdk/views/SABannerAd;->access$000(Ltv/superawesome/sdk/views/SABannerAd;)Ltv/superawesome/lib/sasession/SASession;

    move-result-object v2

    new-instance v3, Ltv/superawesome/sdk/views/SABannerAd$2$1;

    invoke-direct {v3, p0}, Ltv/superawesome/sdk/views/SABannerAd$2$1;-><init>(Ltv/superawesome/sdk/views/SABannerAd$2;)V

    invoke-virtual {v0, v1, v2, v3}, Ltv/superawesome/lib/saadloader/SALoader;->loadAd(ILtv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/saadloader/SALoaderInterface;)V

    return-void
.end method
