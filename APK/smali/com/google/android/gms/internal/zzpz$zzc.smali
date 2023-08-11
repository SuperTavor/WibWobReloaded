.class abstract Lcom/google/android/gms/internal/zzpz$zzc;
.super Lcom/google/android/gms/internal/zzlb$zza;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/panorama/Panorama;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzlb$zza;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected abstract zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzpy;)V
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpz$zzc;->zza(Lcom/google/android/gms/internal/zzqa;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzqa;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqa;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqa;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpy;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzpz$zzc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzpy;)V

    return-void
.end method
