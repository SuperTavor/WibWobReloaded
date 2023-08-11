.class final Ltv/superawesome/sdk/views/SAInterstitialAd$3;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sasession/SASessionInterface;


# instance fields
.field final synthetic val$loader:Ltv/superawesome/lib/saadloader/SALoader;

.field final synthetic val$placementId:I


# direct methods
.method constructor <init>(Ltv/superawesome/lib/saadloader/SALoader;I)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd$3;->val$loader:Ltv/superawesome/lib/saadloader/SALoader;

    iput p2, p0, Ltv/superawesome/sdk/views/SAInterstitialAd$3;->val$placementId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didFindSessionReady()V
    .locals 4

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAInterstitialAd$3;->val$loader:Ltv/superawesome/lib/saadloader/SALoader;

    iget v1, p0, Ltv/superawesome/sdk/views/SAInterstitialAd$3;->val$placementId:I

    invoke-static {}, Ltv/superawesome/sdk/views/SAInterstitialAd;->access$100()Ltv/superawesome/lib/sasession/SASession;

    move-result-object v2

    new-instance v3, Ltv/superawesome/sdk/views/SAInterstitialAd$3$1;

    invoke-direct {v3, p0}, Ltv/superawesome/sdk/views/SAInterstitialAd$3$1;-><init>(Ltv/superawesome/sdk/views/SAInterstitialAd$3;)V

    invoke-virtual {v0, v1, v2, v3}, Ltv/superawesome/lib/saadloader/SALoader;->loadAd(ILtv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/saadloader/SALoaderInterface;)V

    return-void
.end method
