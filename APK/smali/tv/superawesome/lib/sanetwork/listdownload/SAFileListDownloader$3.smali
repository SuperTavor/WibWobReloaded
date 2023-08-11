.class Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$3;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sanetwork/file/SAFileDownloaderInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;

.field final synthetic val$i:I

.field final synthetic val$listener:Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItemInterface;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItemInterface;I)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$3;->this$0:Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;

    iput-object p2, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$3;->val$listener:Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItemInterface;

    iput p3, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$3;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saDidDownloadFile(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$3;->val$listener:Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItemInterface;

    iget v1, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$3;->val$i:I

    invoke-interface {v0, v1, p1, p2}, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItemInterface;->didDownloadFileAtIndex(IZLjava/lang/String;)V

    return-void
.end method
