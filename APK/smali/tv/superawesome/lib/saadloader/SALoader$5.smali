.class Ltv/superawesome/lib/saadloader/SALoader$5;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloaderInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/saadloader/SALoader;

.field final synthetic val$localListener:Ltv/superawesome/lib/saadloader/SALoaderInterface;

.field final synthetic val$response:Ltv/superawesome/lib/samodelspace/saad/SAResponse;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/saadloader/SALoader;Ltv/superawesome/lib/samodelspace/saad/SAResponse;Ltv/superawesome/lib/saadloader/SALoaderInterface;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/saadloader/SALoader$5;->this$0:Ltv/superawesome/lib/saadloader/SALoader;

    iput-object p2, p0, Ltv/superawesome/lib/saadloader/SALoader$5;->val$response:Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    iput-object p3, p0, Ltv/superawesome/lib/saadloader/SALoader$5;->val$localListener:Ltv/superawesome/lib/saadloader/SALoaderInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saDidDownloadFilesInList(Ljava/util/List;)V
    .locals 6

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Ltv/superawesome/lib/saadloader/SALoader$5;->val$response:Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAResponse;->ads:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v4, v1, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v4, v4, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v4, v4, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iget-object v5, v1, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v5, v5, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v5, v5, Ltv/superawesome/lib/samodelspace/saad/SADetails;->image:Ljava/lang/String;

    iput-object v5, v4, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->url:Ljava/lang/String;

    iget-object v4, v1, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v4, v4, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v5, v4, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v5, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->isDownloaded:Z

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iput-object v0, v1, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->path:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ltv/superawesome/lib/saadloader/SALoader$5;->val$localListener:Ltv/superawesome/lib/saadloader/SALoaderInterface;

    iget-object v1, p0, Ltv/superawesome/lib/saadloader/SALoader$5;->val$response:Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    invoke-interface {v0, v1}, Ltv/superawesome/lib/saadloader/SALoaderInterface;->saDidLoadAd(Ltv/superawesome/lib/samodelspace/saad/SAResponse;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_2
.end method
