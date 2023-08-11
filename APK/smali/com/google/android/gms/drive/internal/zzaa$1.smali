.class Lcom/google/android/gms/drive/internal/zzaa$1;
.super Lcom/google/android/gms/drive/internal/zzaa$zzc;


# instance fields
.field final synthetic zzall:Lcom/google/android/gms/drive/internal/zzaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/zzaa;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/zzaa$1;->zzall:Lcom/google/android/gms/drive/internal/zzaa;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzaa$zzc;-><init>(Lcom/google/android/gms/drive/internal/zzaa;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/zzu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/zzaa$1;->zza(Lcom/google/android/gms/drive/internal/zzu;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/drive/internal/zzu;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/zzu;->zzrm()Lcom/google/android/gms/drive/internal/zzam;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/zzaa$zza;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/zzaa$1;->zzall:Lcom/google/android/gms/drive/internal/zzaa;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/google/android/gms/drive/internal/zzaa$zza;-><init>(Lcom/google/android/gms/drive/internal/zzaa;Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/drive/internal/zzaa$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/drive/internal/zzam;->zzd(Lcom/google/android/gms/drive/internal/zzan;)V

    return-void
.end method
