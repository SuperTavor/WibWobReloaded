.class Lcom/google/android/gms/internal/zzor$4;
.super Lcom/google/android/gms/internal/zznq$zzc;


# instance fields
.field final synthetic zzarC:Lcom/google/android/gms/internal/zzor;

.field final synthetic zzary:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzor;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzor$4;->zzarC:Lcom/google/android/gms/internal/zzor;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzor$4;->zzary:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zznq$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zznq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzor$4;->zza(Lcom/google/android/gms/internal/zznq;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zznq;)V
    .locals 5

    new-instance v1, Lcom/google/android/gms/internal/zzou;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzou;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zznq;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzob;

    new-instance v2, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzor$4;->zzary:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/fitness/request/UnsubscribeRequest;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/internal/zzoj;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzob;->zza(Lcom/google/android/gms/fitness/request/UnsubscribeRequest;)V

    return-void
.end method
