.class Lcom/google/android/gms/drive/internal/zzab$1;
.super Lcom/google/android/gms/drive/internal/zzab$zzd;


# instance fields
.field final synthetic zzalo:Z

.field final synthetic zzalp:Lcom/google/android/gms/drive/internal/zzab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzab;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzab$1;->zzalp:Lcom/google/android/gms/drive/internal/zzab;

    iput-boolean p3, p0, Lcom/google/android/gms/drive/internal/zzab$1;->zzalo:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/drive/internal/zzab$zzd;-><init>(Lcom/google/android/gms/drive/internal/zzab;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/internal/zzab$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzab$1;->zza(Lcom/google/android/gms/drive/internal/zzu;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/drive/internal/zzu;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzu;->zzrm()Lcom/google/android/gms/drive/internal/zzam;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/GetMetadataRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzab$1;->zzalp:Lcom/google/android/gms/drive/internal/zzab;

    iget-object v2, v2, Lcom/google/android/gms/drive/internal/zzab;->zzaiA:Lcom/google/android/gms/drive/DriveId;

    iget-boolean v3, p0, Lcom/google/android/gms/drive/internal/zzab$1;->zzalo:Z

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/GetMetadataRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Z)V

    new-instance v2, Lcom/google/android/gms/drive/internal/zzab$zzb;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/zzab$zzb;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/zzam;->zza(Lcom/google/android/gms/drive/internal/GetMetadataRequest;Lcom/google/android/gms/drive/internal/zzan;)V

    return-void
.end method
