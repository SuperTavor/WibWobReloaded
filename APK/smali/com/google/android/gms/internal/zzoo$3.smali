.class Lcom/google/android/gms/internal/zzoo$3;
.super Lcom/google/android/gms/internal/zznn$zzc;


# instance fields
.field final synthetic zzarr:Lcom/google/android/gms/internal/zzoo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzoo;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoo$3;->zzarr:Lcom/google/android/gms/internal/zzoo;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zznn$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zznn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzoo$3;->zza(Lcom/google/android/gms/internal/zznn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zznn;)V
    .locals 3

    new-instance v1, Lcom/google/android/gms/internal/zzou;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzou;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zznn;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzny;

    new-instance v2, Lcom/google/android/gms/fitness/request/DisableFitRequest;

    invoke-direct {v2, v1}, Lcom/google/android/gms/fitness/request/DisableFitRequest;-><init>(Lcom/google/android/gms/internal/zzoj;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzny;->zza(Lcom/google/android/gms/fitness/request/DisableFitRequest;)V

    return-void
.end method
