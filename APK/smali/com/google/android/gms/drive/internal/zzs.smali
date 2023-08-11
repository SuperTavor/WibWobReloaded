.class public Lcom/google/android/gms/drive/internal/zzs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelPendingActions(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    sget-object v0, Lcom/google/android/gms/drive/Drive;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/zzu;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/drive/internal/zzu;->cancelPendingActions(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public fetchDriveId(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzs$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzs$3;-><init>(Lcom/google/android/gms/drive/internal/zzs;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

.method public getAppFolder(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/drive/DriveFolder;
    .locals 2

    sget-object v0, Lcom/google/android/gms/drive/Drive;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/zzu;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/zzu;->zzrp()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client is not yet connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/zzu;->zzro()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzy;

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/internal/zzy;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFile(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/DriveFile;
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client must be connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/drive/internal/zzw;

    invoke-direct {v0, p2}, Lcom/google/android/gms/drive/internal/zzw;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-object v0
.end method

.method public getFolder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/DriveFolder;
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client must be connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/drive/internal/zzy;

    invoke-direct {v0, p2}, Lcom/google/android/gms/drive/internal/zzy;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-object v0
.end method

.method public getRootFolder(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/drive/DriveFolder;
    .locals 2

    sget-object v0, Lcom/google/android/gms/drive/Drive;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/zzu;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/zzu;->zzrp()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client is not yet connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/drive/internal/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/zzu;->zzrn()Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/drive/internal/zzy;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    return-object v1
.end method

.method public isAutobackupEnabled(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzs$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/drive/internal/zzs$5;-><init>(Lcom/google/android/gms/drive/internal/zzs;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

.method public newCreateFileActivityBuilder()Lcom/google/android/gms/drive/CreateFileActivityBuilder;
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/drive/CreateFileActivityBuilder;-><init>()V

    return-object v0
.end method

.method public newDriveContents(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    const/high16 v0, 0x20000000

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/drive/internal/zzs;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public newOpenFileActivityBuilder()Lcom/google/android/gms/drive/OpenFileActivityBuilder;
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/OpenFileActivityBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/drive/OpenFileActivityBuilder;-><init>()V

    return-object v0
.end method

.method public query(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Query must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/drive/internal/zzs$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzs$1;-><init>(Lcom/google/android/gms/drive/internal/zzs;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

.method public requestSync(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzs$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/drive/internal/zzs$4;-><init>(Lcom/google/android/gms/drive/internal/zzs;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzs$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzs$2;-><init>(Lcom/google/android/gms/drive/internal/zzs;Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method
