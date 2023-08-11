.class Lcom/google/android/gms/internal/zzpz$1;
.super Lcom/google/android/gms/internal/zzpz$zza;


# instance fields
.field final synthetic zzaRy:Landroid/net/Uri;

.field final synthetic zzaRz:Lcom/google/android/gms/internal/zzpz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpz;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpz$1;->zzaRz:Lcom/google/android/gms/internal/zzpz;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpz$1;->zzaRy:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzpz$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzpy;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzpz$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzpz$zzb;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpz$1;->zzaRy:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzpy;->zza(Lcom/google/android/gms/internal/zzpx;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    return-void
.end method
