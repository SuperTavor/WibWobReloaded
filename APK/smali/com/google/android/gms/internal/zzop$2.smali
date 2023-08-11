.class Lcom/google/android/gms/internal/zzop$2;
.super Lcom/google/android/gms/internal/zzno$zzc;


# instance fields
.field final synthetic zzarv:Lcom/google/android/gms/internal/zzop;

.field final synthetic zzarw:Lcom/google/android/gms/fitness/request/DataDeleteRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzop;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataDeleteRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzop$2;->zzarv:Lcom/google/android/gms/internal/zzop;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzop$2;->zzarw:Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzno$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzno;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzop$2;->zza(Lcom/google/android/gms/internal/zzno;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzno;)V
    .locals 4

    new-instance v1, Lcom/google/android/gms/internal/zzou;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzou;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzno;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zznz;

    new-instance v2, Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzop$2;->zzarw:Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;-><init>(Lcom/google/android/gms/fitness/request/DataDeleteRequest;Lcom/google/android/gms/internal/zzoj;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zznz;->zza(Lcom/google/android/gms/fitness/request/DataDeleteRequest;)V

    return-void
.end method
