.class public final Lcom/google/android/gms/appindexing/Action$Builder;
.super Lcom/google/android/gms/appindexing/Thing$Builder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/appindexing/Thing$Builder;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/appindexing/Thing$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appindexing/Thing$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/appindexing/Action;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/appindexing/Action$Builder;->zzRj:Landroid/os/Bundle;

    const-string v1, "object"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "setObject is required before calling build()."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/appindexing/Action$Builder;->zzRj:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "setType is required before calling build()."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/appindexing/Action$Builder;->zzRj:Landroid/os/Bundle;

    const-string v1, "object"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Must call setObject() with a valid name. Example: setObject(new Thing.Builder().setName(name).setUrl(url))"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Must call setObject() with a valid app URI. Example: setObject(new Thing.Builder().setName(name).setUrl(url))"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/appindexing/Action;

    iget-object v1, p0, Lcom/google/android/gms/appindexing/Action$Builder;->zzRj:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/appindexing/Action;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/appindexing/Action$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/android/gms/appindexing/Thing;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/appindexing/Action$Builder;->build()Lcom/google/android/gms/appindexing/Action;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/google/android/gms/appindexing/Thing;)Lcom/google/android/gms/appindexing/Action$Builder;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/appindexing/Thing$Builder;->put(Ljava/lang/String;Lcom/google/android/gms/appindexing/Thing;)Lcom/google/android/gms/appindexing/Thing$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appindexing/Action$Builder;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appindexing/Action$Builder;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/appindexing/Thing$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appindexing/Thing$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appindexing/Action$Builder;

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/String;Lcom/google/android/gms/appindexing/Thing;)Lcom/google/android/gms/appindexing/Thing$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/appindexing/Action$Builder;->put(Ljava/lang/String;Lcom/google/android/gms/appindexing/Thing;)Lcom/google/android/gms/appindexing/Action$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appindexing/Thing$Builder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/appindexing/Action$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appindexing/Action$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setActionStatus(Ljava/lang/String;)Lcom/google/android/gms/appindexing/Action$Builder;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actionStatus"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/appindexing/Thing$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appindexing/Thing$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appindexing/Action$Builder;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/appindexing/Action$Builder;
    .locals 1

    const-string v0, "name"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/appindexing/Thing$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appindexing/Thing$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appindexing/Action$Builder;

    return-object v0
.end method

.method public bridge synthetic setName(Ljava/lang/String;)Lcom/google/android/gms/appindexing/Thing$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appindexing/Action$Builder;->setName(Ljava/lang/String;)Lcom/google/android/gms/appindexing/Action$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setObject(Lcom/google/android/gms/appindexing/Thing;)Lcom/google/android/gms/appindexing/Action$Builder;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "object"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/appindexing/Thing$Builder;->put(Ljava/lang/String;Lcom/google/android/gms/appindexing/Thing;)Lcom/google/android/gms/appindexing/Thing$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appindexing/Action$Builder;

    return-object v0
.end method

.method public setUrl(Landroid/net/Uri;)Lcom/google/android/gms/appindexing/Action$Builder;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "url"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcom/google/android/gms/appindexing/Thing$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/appindexing/Thing$Builder;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setUrl(Landroid/net/Uri;)Lcom/google/android/gms/appindexing/Thing$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appindexing/Action$Builder;->setUrl(Landroid/net/Uri;)Lcom/google/android/gms/appindexing/Action$Builder;

    move-result-object v0

    return-object v0
.end method
