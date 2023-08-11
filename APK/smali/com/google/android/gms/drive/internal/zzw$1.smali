.class Lcom/google/android/gms/drive/internal/zzw$1;
.super Lcom/google/android/gms/drive/internal/zzs$zzb;


# instance fields
.field final synthetic zzakX:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

.field final synthetic zzakY:Lcom/google/android/gms/drive/internal/zzw;

.field final synthetic zzakw:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzw;Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzw$1;->zzakY:Lcom/google/android/gms/drive/internal/zzw;

    iput p3, p0, Lcom/google/android/gms/drive/internal/zzw$1;->zzakw:I

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/zzw$1;->zzakX:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/zzs$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzw$1;->zza(Lcom/google/android/gms/drive/internal/zzu;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/drive/internal/zzu;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzu;->zzrm()Lcom/google/android/gms/drive/internal/zzam;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/OpenContentsRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzw$1;->zzakY:Lcom/google/android/gms/drive/internal/zzw;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/internal/zzw;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/drive/internal/zzw$1;->zzakw:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/OpenContentsRequest;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    new-instance v2, Lcom/google/android/gms/drive/internal/zzbl;

    iget-object v3, p0, Lcom/google/android/gms/drive/internal/zzw$1;->zzakX:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/drive/internal/zzbl;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/zzam;->zza(Lcom/google/android/gms/drive/internal/OpenContentsRequest;Lcom/google/android/gms/drive/internal/zzan;)Lcom/google/android/gms/drive/internal/DriveServiceResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/DriveServiceResponse;->zzrr()Lcom/google/android/gms/common/internal/zzq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/zzw$1;->zza(Lcom/google/android/gms/common/internal/zzq;)V

    return-void
.end method
