.class Lcom/google/android/gms/internal/zzop$3;
.super Lcom/google/android/gms/internal/zzno$zza;


# instance fields
.field final synthetic zzarv:Lcom/google/android/gms/internal/zzop;

.field final synthetic zzarx:Lcom/google/android/gms/fitness/request/DataReadRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzop;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataReadRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzop$3;->zzarv:Lcom/google/android/gms/internal/zzop;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzop$3;->zzarx:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzno$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzJ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataReadResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzop$3;->zzarx:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/result/DataReadResult;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/request/DataReadRequest;)Lcom/google/android/gms/fitness/result/DataReadResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzno;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzop$3;->zza(Lcom/google/android/gms/internal/zzno;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzno;)V
    .locals 4

    new-instance v1, Lcom/google/android/gms/internal/zzop$zza;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzop$zza;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/internal/zzop$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzno;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zznz;

    new-instance v2, Lcom/google/android/gms/fitness/request/DataReadRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzop$3;->zzarx:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/DataReadRequest;-><init>(Lcom/google/android/gms/fitness/request/DataReadRequest;Lcom/google/android/gms/internal/zznu;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zznz;->zza(Lcom/google/android/gms/fitness/request/DataReadRequest;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzop$3;->zzJ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataReadResult;

    move-result-object v0

    return-object v0
.end method
