.class public Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;
.super Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloaderInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;->context:Landroid/content/Context;

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;->listener:Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloaderInterface;

    iput-object p1, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;->context:Landroid/content/Context;

    new-instance v0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$1;

    invoke-direct {v0, p0}, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$1;-><init>(Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;)V

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;->listener:Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloaderInterface;

    return-void
.end method

.method static synthetic access$000(Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;)Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloaderInterface;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;->listener:Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloaderInterface;

    return-object v0
.end method

.method private getFile(Landroid/content/Context;ILjava/lang/String;Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItemInterface;)V
    .locals 2

    invoke-static {}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->getInstance()Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    move-result-object v0

    new-instance v1, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$3;

    invoke-direct {v1, p0, p4, p2}, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$3;-><init>(Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItemInterface;I)V

    invoke-virtual {v0, p1, p3, v1}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->downloadFileFrom(Landroid/content/Context;Ljava/lang/String;Ltv/superawesome/lib/sanetwork/file/SAFileDownloaderInterface;)V

    return-void
.end method


# virtual methods
.method public downloadListOfFiles(Ljava/util/List;Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloaderInterface;)V
    .locals 8

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;->listener:Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloaderInterface;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x1

    new-array v4, v0, [I

    aput v2, v4, v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v2, v5, :cond_1

    iget-object v7, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;->context:Landroid/content/Context;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    new-instance v0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader$2;-><init>(Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;ILjava/util/List;[II)V

    invoke-direct {p0, v7, v2, v6, v0}, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;->getFile(Landroid/content/Context;ILjava/lang/String;Ltv/superawesome/lib/sanetwork/listdownload/SAFileListItemInterface;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object p2, p0, Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloader;->listener:Ltv/superawesome/lib/sanetwork/listdownload/SAFileListDownloaderInterface;

    goto :goto_0

    :cond_1
    return-void
.end method
