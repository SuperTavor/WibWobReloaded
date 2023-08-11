.class Ltv/superawesome/lib/saadloader/SALoader$4;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/savastparser/SAVASTParserInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/saadloader/SALoader;

.field final synthetic val$ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

.field final synthetic val$localListener:Ltv/superawesome/lib/saadloader/SALoaderInterface;

.field final synthetic val$response:Ltv/superawesome/lib/samodelspace/saad/SAResponse;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/saadloader/SALoader;Ltv/superawesome/lib/samodelspace/saad/SAAd;Ltv/superawesome/lib/saadloader/SALoaderInterface;Ltv/superawesome/lib/samodelspace/saad/SAResponse;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/saadloader/SALoader$4;->this$0:Ltv/superawesome/lib/saadloader/SALoader;

    iput-object p2, p0, Ltv/superawesome/lib/saadloader/SALoader$4;->val$ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iput-object p3, p0, Ltv/superawesome/lib/saadloader/SALoader$4;->val$localListener:Ltv/superawesome/lib/saadloader/SALoaderInterface;

    iput-object p4, p0, Ltv/superawesome/lib/saadloader/SALoader$4;->val$response:Ltv/superawesome/lib/samodelspace/saad/SAResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saDidParseVAST(Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V
    .locals 4

    iget-object v0, p0, Ltv/superawesome/lib/saadloader/SALoader$4;->val$ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iput-object p1, v0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->vastAd:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    iget-object v0, p0, Ltv/superawesome/lib/saadloader/SALoader$4;->val$ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iget-object v1, p1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->url:Ljava/lang/String;

    iput-object v1, v0, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->url:Ljava/lang/String;

    invoke-static {}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->getInstance()Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/lib/saadloader/SALoader$4;->this$0:Ltv/superawesome/lib/saadloader/SALoader;

    invoke-static {v1}, Ltv/superawesome/lib/saadloader/SALoader;->access$000(Ltv/superawesome/lib/saadloader/SALoader;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ltv/superawesome/lib/saadloader/SALoader$4;->val$ad:Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iget-object v2, v2, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->url:Ljava/lang/String;

    new-instance v3, Ltv/superawesome/lib/saadloader/SALoader$4$1;

    invoke-direct {v3, p0}, Ltv/superawesome/lib/saadloader/SALoader$4$1;-><init>(Ltv/superawesome/lib/saadloader/SALoader$4;)V

    invoke-virtual {v0, v1, v2, v3}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->downloadFileFrom(Landroid/content/Context;Ljava/lang/String;Ltv/superawesome/lib/sanetwork/file/SAFileDownloaderInterface;)V

    return-void
.end method
