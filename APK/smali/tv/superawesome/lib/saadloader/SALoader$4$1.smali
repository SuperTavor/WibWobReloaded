.class Ltv/superawesome/lib/saadloader/SALoader$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sanetwork/file/SAFileDownloaderInterface;


# instance fields
.field final synthetic this$1:Ltv/superawesome/lib/saadloader/SALoader$4;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/saadloader/SALoader$4;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/saadloader/SALoader$4$1;->this$1:Ltv/superawesome/lib/saadloader/SALoader$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saDidDownloadFile(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ltv/superawesome/lib/saadloader/SALoader$4$1;->this$1:Ltv/superawesome/lib/saadloader/SALoader$4;

    iget-object v0, v0, Ltv/superawesome/lib/saadloader/SALoader$4;->val$ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iput-object p2, v0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->path:Ljava/lang/String;

    iget-object v0, p0, Ltv/superawesome/lib/saadloader/SALoader$4$1;->this$1:Ltv/superawesome/lib/saadloader/SALoader$4;

    iget-object v0, v0, Ltv/superawesome/lib/saadloader/SALoader$4;->val$ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v1, v0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->isDownloaded:Z

    iget-object v0, p0, Ltv/superawesome/lib/saadloader/SALoader$4$1;->this$1:Ltv/superawesome/lib/saadloader/SALoader$4;

    iget-object v0, v0, Ltv/superawesome/lib/saadloader/SALoader$4;->val$localListener:Ltv/superawesome/lib/saadloader/SALoaderInterface;

    iget-object v1, p0, Ltv/superawesome/lib/saadloader/SALoader$4$1;->this$1:Ltv/superawesome/lib/saadloader/SALoader$4;

    iget-object v1, v1, Ltv/superawesome/lib/saadloader/SALoader$4;->val$response:Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    invoke-interface {v0, v1}, Ltv/superawesome/lib/saadloader/SALoaderInterface;->saDidLoadAd(Ltv/superawesome/lib/samodelspace/saad/SAResponse;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
