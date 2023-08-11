.class Lcom/google/android/gms/internal/zzot$4;
.super Lcom/google/android/gms/internal/zzns$zza;


# instance fields
.field final synthetic zzarQ:Lcom/google/android/gms/internal/zzot;

.field final synthetic zzarT:Lcom/google/android/gms/fitness/request/SessionReadRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzot;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/SessionReadRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzot$4;->zzarQ:Lcom/google/android/gms/internal/zzot;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzot$4;->zzarT:Lcom/google/android/gms/fitness/request/SessionReadRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzns$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzO(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionReadResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/SessionReadResult;->zzT(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionReadResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzns;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzot$4;->zza(Lcom/google/android/gms/internal/zzns;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzns;)V
    .locals 4

    new-instance v1, Lcom/google/android/gms/internal/zzot$zza;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzot$zza;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/internal/zzot$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzns;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzod;

    new-instance v2, Lcom/google/android/gms/fitness/request/SessionReadRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzot$4;->zzarT:Lcom/google/android/gms/fitness/request/SessionReadRequest;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/SessionReadRequest;-><init>(Lcom/google/android/gms/fitness/request/SessionReadRequest;Lcom/google/android/gms/internal/zzoh;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzod;->zza(Lcom/google/android/gms/fitness/request/SessionReadRequest;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzot$4;->zzO(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/SessionReadResult;

    move-result-object v0

    return-object v0
.end method
