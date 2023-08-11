.class public Ltv/superawesome/lib/sanetwork/file/SAFileItem;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_RETRIES:S = 0x3s

.field private static final SA_KEY_PREFIX:Ljava/lang/String; = "sasdkkey_"


# instance fields
.field private diskName:Ljava/lang/String;

.field private diskUrl:Ljava/lang/String;

.field private isOnDisk:Z

.field private key:Ljava/lang/String;

.field private nrRetries:I

.field private responses:Ljava/util/List;

.field private urlKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->urlKey:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->key:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->diskName:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->diskUrl:Ljava/lang/String;

    iput-boolean v1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->isOnDisk:Z

    iput v1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->nrRetries:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->responses:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->urlKey:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->key:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->diskName:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->diskUrl:Ljava/lang/String;

    iput-boolean v1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->isOnDisk:Z

    iput v1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->nrRetries:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->responses:Ljava/util/List;

    iput-object p1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->urlKey:Ljava/lang/String;

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->urlKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->getNewDiskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->diskName:Ljava/lang/String;

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->diskName:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->diskUrl:Ljava/lang/String;

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->diskName:Ljava/lang/String;

    invoke-direct {p0, v0}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->getKeyForDiskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->key:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ltv/superawesome/lib/sanetwork/file/SAFileDownloaderInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->addResponse(Ltv/superawesome/lib/sanetwork/file/SAFileDownloaderInterface;)V

    return-void
.end method

.method private getFileExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getKeyForDiskName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sasdkkey__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNewDiskName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "samov_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0x1000c

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addResponse(Ltv/superawesome/lib/sanetwork/file/SAFileDownloaderInterface;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->responses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clearResponses()V
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->responses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getDiskName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->diskName:Ljava/lang/String;

    return-object v0
.end method

.method public getDiskUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->diskUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getNrRetries()I
    .locals 1

    iget v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->nrRetries:I

    return v0
.end method

.method public getResponses()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->responses:Ljava/util/List;

    return-object v0
.end method

.method public getUrlKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->urlKey:Ljava/lang/String;

    return-object v0
.end method

.method public hasRetriesRemaining()Z
    .locals 2

    iget v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->nrRetries:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public incrementNrRetries()V
    .locals 1

    iget v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->nrRetries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->nrRetries:I

    return-void
.end method

.method public isOnDisk()Z
    .locals 1

    iget-boolean v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->isOnDisk:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->urlKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->diskName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->diskUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDiskName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->diskName:Ljava/lang/String;

    return-void
.end method

.method public setDiskUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->diskUrl:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->key:Ljava/lang/String;

    return-void
.end method

.method public setOnDisk(Z)V
    .locals 0

    iput-boolean p1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->isOnDisk:Z

    return-void
.end method

.method public setUrlKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/sanetwork/file/SAFileItem;->urlKey:Ljava/lang/String;

    return-void
.end method
