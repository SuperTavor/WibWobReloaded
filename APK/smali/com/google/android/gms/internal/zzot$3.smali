.class Lcom/google/android/gms/internal/zzot$3;
.super Lcom/google/android/gms/internal/zzns$zzc;


# instance fields
.field final synthetic zzarQ:Lcom/google/android/gms/internal/zzot;

.field final synthetic zzarS:Lcom/google/android/gms/fitness/request/SessionInsertRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzot;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/SessionInsertRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzot$3;->zzarQ:Lcom/google/android/gms/internal/zzot;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzot$3;->zzarS:Lcom/google/android/gms/fitness/request/SessionInsertRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzns$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzns;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzot$3;->zza(Lcom/google/android/gms/internal/zzns;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzns;)V
    .locals 4

    new-instance v1, Lcom/google/android/gms/internal/zzou;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzou;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzns;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzod;

    new-instance v2, Lcom/google/android/gms/fitness/request/SessionInsertRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzot$3;->zzarS:Lcom/google/android/gms/fitness/request/SessionInsertRequest;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/SessionInsertRequest;-><init>(Lcom/google/android/gms/fitness/request/SessionInsertRequest;Lcom/google/android/gms/internal/zzoj;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzod;->zza(Lcom/google/android/gms/fitness/request/SessionInsertRequest;)V

    return-void
.end method
