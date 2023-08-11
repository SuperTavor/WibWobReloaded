.class public Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;
.super Ljava/lang/Object;


# static fields
.field private static instance:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;


# instance fields
.field private final PREFERENCES:Ljava/lang/String;

.field private cleanupOnce:Z

.field private currentItem:Ltv/superawesome/lib/sanetwork/file/SAFileItem;

.field private isDownloaderBusy:Z

.field private printFull:Z

.field private printMid:Z

.field private printQuarter:Z

.field private printStart:Z

.field private printThird:Z

.field private queue:Ltv/superawesome/lib/sanetwork/file/SAFileQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    invoke-direct {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;-><init>()V

    sput-object v0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->instance:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MyPreferences"

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->PREFERENCES:Ljava/lang/String;

    new-instance v0, Ltv/superawesome/lib/sanetwork/file/SAFileQueue;

    invoke-direct {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileQueue;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->queue:Ltv/superawesome/lib/sanetwork/file/SAFileQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->currentItem:Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    iput-boolean v1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->isDownloaderBusy:Z

    iput-boolean v1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->cleanupOnce:Z

    iput-boolean v1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->printStart:Z

    iput-boolean v1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->printQuarter:Z

    iput-boolean v1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->printMid:Z

    iput-boolean v1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->printThird:Z

    iput-boolean v1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->printFull:Z

    return-void
.end method

.method static synthetic access$000(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Ltv/superawesome/lib/sanetwork/file/SAFileItem;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->currentItem:Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    return-object v0
.end method

.method static synthetic access$100(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Z
    .locals 1

    iget-boolean v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->printStart:Z

    return v0
.end method

.method static synthetic access$102(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;Z)Z
    .locals 0

    iput-boolean p1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->printStart:Z

    return p1
.end method

.method static synthetic access$200(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Z
    .locals 1

    iget-boolean v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->printQuarter:Z

    return v0
.end method

.method static synthetic access$202(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;Z)Z
    .locals 0

    iput-boolean p1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->printQuarter:Z

    return p1
.end method

.method static synthetic access$300(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Z
    .locals 1

    iget-boolean v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->printMid:Z

    return v0
.end method

.method static synthetic access$302(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;Z)Z
    .locals 0

    iput-boolean p1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->printMid:Z

    return p1
.end method

.method static synthetic access$400(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Z
    .locals 1

    iget-boolean v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->printThird:Z

    return v0
.end method

.method static synthetic access$402(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;Z)Z
    .locals 0

    iput-boolean p1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->printThird:Z

    return p1
.end method

.method static synthetic access$500(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Z
    .locals 1

    iget-boolean v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->printFull:Z

    return v0
.end method

.method static synthetic access$502(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;Z)Z
    .locals 0

    iput-boolean p1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->printFull:Z

    return p1
.end method

.method static synthetic access$602(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;Z)Z
    .locals 0

    iput-boolean p1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->isDownloaderBusy:Z

    return p1
.end method

.method static synthetic access$700(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->checkOnQueue(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)Ltv/superawesome/lib/sanetwork/file/SAFileQueue;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->queue:Ltv/superawesome/lib/sanetwork/file/SAFileQueue;

    return-object v0
.end method

.method private checkOnQueue(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->isDownloaderBusy:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->queue:Ltv/superawesome/lib/sanetwork/file/SAFileQueue;

    invoke-virtual {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileQueue;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->queue:Ltv/superawesome/lib/sanetwork/file/SAFileQueue;

    invoke-virtual {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileQueue;->getNext()Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->currentItem:Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->currentItem:Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->currentItem:Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    invoke-virtual {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->hasRetriesRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SuperAwesome"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start work on queue for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->currentItem:Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    invoke-virtual {v2}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->getDiskUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Try "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->currentItem:Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    invoke-virtual {v2}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->getNrRetries()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / 3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->isDownloaderBusy:Z

    iput-boolean v3, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->printFull:Z

    iput-boolean v3, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->printThird:Z

    iput-boolean v3, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->printMid:Z

    iput-boolean v3, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->printQuarter:Z

    iput-boolean v3, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->printStart:Z

    new-instance v0, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask;

    new-instance v1, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;

    invoke-direct {v1, p0, p1}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$2;-><init>(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask;-><init>(Landroid/content/Context;Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskInterface;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->currentItem:Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    invoke-virtual {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->getResponses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloaderInterface;

    const/4 v2, 0x0

    invoke-interface {v0, v3, v2}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloaderInterface;->saDidDownloadFile(ZLjava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->currentItem:Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    invoke-virtual {v0}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->clearResponses()V

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->queue:Ltv/superawesome/lib/sanetwork/file/SAFileQueue;

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->currentItem:Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    invoke-virtual {v0, v1}, Ltv/superawesome/lib/sanetwork/file/SAFileQueue;->removeFromQueue(Ltv/superawesome/lib/sanetwork/file/SAFileItem;)V

    invoke-direct {p0, p1}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->checkOnQueue(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private cleanup(Landroid/content/Context;)V
    .locals 8

    const/4 v2, 0x0

    const-string v0, "MyPreferences"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_1

    const-string v1, "SuperAwesome"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[true] | DEL | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-string v1, "SuperAwesome"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[false] | DEL | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public static getInstance()Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;
    .locals 1

    sget-object v0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->instance:Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;

    return-object v0
.end method


# virtual methods
.method public downloadFileFrom(Landroid/content/Context;Ljava/lang/String;Ltv/superawesome/lib/sanetwork/file/SAFileDownloaderInterface;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    :goto_0
    if-nez p1, :cond_2

    invoke-interface {p3, v0, v4}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloaderInterface;->saDidDownloadFile(ZLjava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance p3, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$1;

    invoke-direct {p3, p0}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader$1;-><init>(Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;)V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->cleanupOnce:Z

    if-nez v2, :cond_3

    iput-boolean v1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->cleanupOnce:Z

    invoke-direct {p0, p1}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->cleanup(Landroid/content/Context;)V

    :cond_3
    iget-object v2, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->queue:Ltv/superawesome/lib/sanetwork/file/SAFileQueue;

    invoke-virtual {v2, p2}, Ltv/superawesome/lib/sanetwork/file/SAFileQueue;->hasItemForURL(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "SuperAwesome"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL already exists in queue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->queue:Ltv/superawesome/lib/sanetwork/file/SAFileQueue;

    invoke-virtual {v2, p2}, Ltv/superawesome/lib/sanetwork/file/SAFileQueue;->itemForURL(Ljava/lang/String;)Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->isOnDisk()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v2}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->getDiskUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloaderInterface;->saDidDownloadFile(ZLjava/lang/String;)V

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_0

    invoke-virtual {v2, p3}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->addResponse(Ltv/superawesome/lib/sanetwork/file/SAFileDownloaderInterface;)V

    goto :goto_1

    :cond_6
    new-instance v1, Ltv/superawesome/lib/sanetwork/file/SAFileItem;

    invoke-direct {v1, p2, p3}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;-><init>(Ljava/lang/String;Ltv/superawesome/lib/sanetwork/file/SAFileDownloaderInterface;)V

    invoke-virtual {v1}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->isValid()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "SuperAwesome"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding new URL to queue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->queue:Ltv/superawesome/lib/sanetwork/file/SAFileQueue;

    invoke-virtual {v0, v1}, Ltv/superawesome/lib/sanetwork/file/SAFileQueue;->addToQueue(Ltv/superawesome/lib/sanetwork/file/SAFileItem;)V

    invoke-direct {p0, p1}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloader;->checkOnQueue(Landroid/content/Context;)V

    goto :goto_1

    :cond_7
    const-string v1, "SuperAwesome"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not adding new URL to queue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because it\'s not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3, v0, v4}, Ltv/superawesome/lib/sanetwork/file/SAFileDownloaderInterface;->saDidDownloadFile(ZLjava/lang/String;)V

    goto/16 :goto_1
.end method
