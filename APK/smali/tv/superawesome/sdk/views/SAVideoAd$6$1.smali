.class Ltv/superawesome/sdk/views/SAVideoAd$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/saadloader/SALoaderInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/sdk/views/SAVideoAd$6;


# direct methods
.method constructor <init>(Ltv/superawesome/sdk/views/SAVideoAd$6;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/views/SAVideoAd$6$1;->this$0:Ltv/superawesome/sdk/views/SAVideoAd$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saDidLoadAd(Ltv/superawesome/lib/samodelspace/saad/SAResponse;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p1, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    iget-object v0, v2, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iget-boolean v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->isDownloaded:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {}, Ltv/superawesome/sdk/views/SAVideoAd;->access$900()Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Ltv/superawesome/sdk/views/SAVideoAd$6$1;->this$0:Ltv/superawesome/sdk/views/SAVideoAd$6;

    iget v3, v3, Ltv/superawesome/sdk/views/SAVideoAd$6;->val$placementId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-static {}, Ltv/superawesome/sdk/views/SAVideoAd;->access$1000()Ltv/superawesome/sdk/views/SAInterface;

    move-result-object v1

    iget-object v2, p0, Ltv/superawesome/sdk/views/SAVideoAd$6$1;->this$0:Ltv/superawesome/sdk/views/SAVideoAd$6;

    iget v2, v2, Ltv/superawesome/sdk/views/SAVideoAd$6;->val$placementId:I

    if-eqz v0, :cond_3

    sget-object v0, Ltv/superawesome/sdk/views/SAEvent;->adLoaded:Ltv/superawesome/sdk/views/SAEvent;

    :goto_3
    invoke-interface {v1, v2, v0}, Ltv/superawesome/sdk/views/SAInterface;->onEvent(ILtv/superawesome/sdk/views/SAEvent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    invoke-static {}, Ltv/superawesome/sdk/views/SAVideoAd;->access$900()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Ltv/superawesome/sdk/views/SAVideoAd$6$1;->this$0:Ltv/superawesome/sdk/views/SAVideoAd$6;

    iget v2, v2, Ltv/superawesome/sdk/views/SAVideoAd$6;->val$placementId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    sget-object v0, Ltv/superawesome/sdk/views/SAEvent;->adFailedToLoad:Ltv/superawesome/sdk/views/SAEvent;

    goto :goto_3
.end method
