.class Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$2;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItemInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;

.field final synthetic val$filesDownloaded:Ljava/util/List;

.field final synthetic val$finalI:I

.field final synthetic val$max:I

.field final synthetic val$totalFilesDownloaded:[I


# direct methods
.method constructor <init>(Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;ILjava/util/List;[II)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;

    iput p2, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$2;->val$finalI:I

    iput-object p3, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$2;->val$filesDownloaded:Ljava/util/List;

    iput-object p4, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$2;->val$totalFilesDownloaded:[I

    iput p5, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$2;->val$max:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didDownloadFileAtIndex(IZLjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "SuperAwesome"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "List file at original index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$2;->val$finalI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " got put on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with Disk Url:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$2;->val$filesDownloaded:Ljava/util/List;

    new-instance v1, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItem;

    invoke-direct {v1, p1, p3}, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$2;->val$totalFilesDownloaded:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$2;->val$totalFilesDownloaded:[I

    aget v0, v0, v3

    iget v1, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$2;->val$max:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$2;->val$filesDownloaded:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$2;->val$filesDownloaded:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItem;

    invoke-virtual {v0}, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItem;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$2;->this$0:Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;

    invoke-static {v0}, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;->access$000(Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;)Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloaderInterface;

    move-result-object v0

    invoke-interface {v0, v1}, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloaderInterface;->saDidDownloadFilesInList(Ljava/util/List;)V

    :cond_1
    return-void
.end method
