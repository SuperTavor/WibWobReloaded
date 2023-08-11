.class Lcom/google/android/gms/internal/zzor$1;
.super Lcom/google/android/gms/internal/zznq$zza;


# instance fields
.field final synthetic zzarC:Lcom/google/android/gms/internal/zzor;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzor;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzor$1;->zzarC:Lcom/google/android/gms/internal/zzor;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zznq$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzL(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->zzS(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zznq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzor$1;->zza(Lcom/google/android/gms/internal/zznq;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zznq;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Lcom/google/android/gms/internal/zzor$zza;

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/internal/zzor$zza;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/internal/zzor$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zznq;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzob;

    new-instance v2, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/internal/zzoe;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzob;->zza(Lcom/google/android/gms/fitness/request/ListSubscriptionsRequest;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzor$1;->zzL(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;

    move-result-object v0

    return-object v0
.end method
