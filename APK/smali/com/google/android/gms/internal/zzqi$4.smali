.class Lcom/google/android/gms/internal/zzqi$4;
.super Lcom/google/android/gms/internal/zzqi$zza;


# instance fields
.field final synthetic zzaSO:Lcom/google/android/gms/internal/zzqi;

.field final synthetic zzaSP:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqi;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Collection;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqi$4;->zzaSO:Lcom/google/android/gms/internal/zzqi;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqi$4;->zzaSP:Ljava/util/Collection;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzqi$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqi$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/plus/internal/zze;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqi$4;->zza(Lcom/google/android/gms/plus/internal/zze;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/plus/internal/zze;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi$4;->zzaSP:Ljava/util/Collection;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/plus/internal/zze;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/util/Collection;)V

    return-void
.end method
