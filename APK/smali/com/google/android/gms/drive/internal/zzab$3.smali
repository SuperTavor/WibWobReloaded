.class Lcom/google/android/gms/drive/internal/zzab$3;
.super Lcom/google/android/gms/drive/internal/zzt$zza;


# instance fields
.field final synthetic zzalp:Lcom/google/android/gms/drive/internal/zzab;

.field final synthetic zzalq:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzab;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzab$3;->zzalp:Lcom/google/android/gms/drive/internal/zzab;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/zzab$3;->zzalq:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/android/gms/drive/internal/zzt$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzab$3;->zza(Lcom/google/android/gms/drive/internal/zzu;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/drive/internal/zzu;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzu;->zzrm()Lcom/google/android/gms/drive/internal/zzam;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzab$3;->zzalp:Lcom/google/android/gms/drive/internal/zzab;

    iget-object v2, v2, Lcom/google/android/gms/drive/internal/zzab;->zzaiA:Lcom/google/android/gms/drive/DriveId;

    iget-object v3, p0, Lcom/google/android/gms/drive/internal/zzab$3;->zzalq:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Ljava/util/List;)V

    new-instance v2, Lcom/google/android/gms/drive/internal/zzbt;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/zzbt;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/zzam;->zza(Lcom/google/android/gms/drive/internal/SetResourceParentsRequest;Lcom/google/android/gms/drive/internal/zzan;)V

    return-void
.end method
