.class public Lcom/hangame/hsp/payment/core/model/ManifestInfo;
.super Ljava/lang/Object;


# instance fields
.field private activities:Ljava/util/List;

.field private metadatas:Ljava/util/List;

.field private minSdkVersion:I

.field private permissions:Ljava/util/List;

.field private receivers:Ljava/util/List;

.field private services:Ljava/util/List;

.field private storeId:Lcom/hangame/hsp/payment/core/constant/StoreId;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivities()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->activities:Ljava/util/List;

    return-object v0
.end method

.method public getMetadatas()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->metadatas:Ljava/util/List;

    return-object v0
.end method

.method public getMinSdkVersion()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->minSdkVersion:I

    return v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getReceivers()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->receivers:Ljava/util/List;

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->services:Ljava/util/List;

    return-object v0
.end method

.method public getStoreId()Lcom/hangame/hsp/payment/core/constant/StoreId;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->storeId:Lcom/hangame/hsp/payment/core/constant/StoreId;

    return-object v0
.end method

.method public setActivities(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->activities:Ljava/util/List;

    return-void
.end method

.method public setMetadatas(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->metadatas:Ljava/util/List;

    return-void
.end method

.method public setMinSdkVersion(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->minSdkVersion:I

    return-void
.end method

.method public setPermissions(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->permissions:Ljava/util/List;

    return-void
.end method

.method public setReceivers(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->receivers:Ljava/util/List;

    return-void
.end method

.method public setServices(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->services:Ljava/util/List;

    return-void
.end method

.method public setStoreId(Lcom/hangame/hsp/payment/core/constant/StoreId;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->storeId:Lcom/hangame/hsp/payment/core/constant/StoreId;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ManifestInfo [storeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->storeId:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minSdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->minSdkVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", permissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->permissions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->activities:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", services="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->services:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", receivers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->receivers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metadatas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/model/ManifestInfo;->metadatas:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
