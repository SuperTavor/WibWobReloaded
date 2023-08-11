.class Lcom/google/android/gms/internal/zzos$1;
.super Lcom/google/android/gms/internal/zznr$zza;


# instance fields
.field final synthetic zzarF:Lcom/google/android/gms/fitness/request/DataSourcesRequest;

.field final synthetic zzarG:Lcom/google/android/gms/internal/zzos;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzos;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataSourcesRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzos$1;->zzarG:Lcom/google/android/gms/internal/zzos;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzos$1;->zzarF:Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zznr$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzM(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataSourcesResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/DataSourcesResult;->zzQ(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataSourcesResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zznr;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzos$1;->zza(Lcom/google/android/gms/internal/zznr;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zznr;)V
    .locals 4

    new-instance v1, Lcom/google/android/gms/internal/zzos$zzb;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzos$zzb;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/internal/zzos$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zznr;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzoc;

    new-instance v2, Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzos$1;->zzarF:Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;-><init>(Lcom/google/android/gms/fitness/request/DataSourcesRequest;Lcom/google/android/gms/internal/zznv;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzoc;->zza(Lcom/google/android/gms/fitness/request/DataSourcesRequest;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzos$1;->zzM(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataSourcesResult;

    move-result-object v0

    return-object v0
.end method
