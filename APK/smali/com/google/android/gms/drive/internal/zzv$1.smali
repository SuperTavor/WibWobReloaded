.class Lcom/google/android/gms/drive/internal/zzv$1;
.super Lcom/google/android/gms/drive/internal/zzs$zzb;


# instance fields
.field final synthetic zzakU:Lcom/google/android/gms/drive/internal/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzv;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzv$1;->zzakU:Lcom/google/android/gms/drive/internal/zzv;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/zzs$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzv$1;->zza(Lcom/google/android/gms/drive/internal/zzu;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/drive/internal/zzu;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzu;->zzrm()Lcom/google/android/gms/drive/internal/zzam;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/OpenContentsRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzv$1;->zzakU:Lcom/google/android/gms/drive/internal/zzv;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/internal/zzv;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    const/high16 v3, 0x20000000

    iget-object v4, p0, Lcom/google/android/gms/drive/internal/zzv$1;->zzakU:Lcom/google/android/gms/drive/internal/zzv;

    invoke-static {v4}, Lcom/google/android/gms/drive/internal/zzv;->zza(Lcom/google/android/gms/drive/internal/zzv;)Lcom/google/android/gms/drive/Contents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/drive/Contents;->getRequestId()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/OpenContentsRequest;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    new-instance v2, Lcom/google/android/gms/drive/internal/zzbl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/drive/internal/zzbl;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/zzam;->zza(Lcom/google/android/gms/drive/internal/OpenContentsRequest;Lcom/google/android/gms/drive/internal/zzan;)Lcom/google/android/gms/drive/internal/DriveServiceResponse;

    return-void
.end method
