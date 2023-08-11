.class Lcom/google/android/gms/internal/zzop$1;
.super Lcom/google/android/gms/internal/zzno$zzc;


# instance fields
.field final synthetic zzart:Lcom/google/android/gms/fitness/data/DataSet;

.field final synthetic zzaru:Z

.field final synthetic zzarv:Lcom/google/android/gms/internal/zzop;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzop;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSet;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzop$1;->zzarv:Lcom/google/android/gms/internal/zzop;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzop$1;->zzart:Lcom/google/android/gms/fitness/data/DataSet;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzop$1;->zzaru:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzno$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzno;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzop$1;->zza(Lcom/google/android/gms/internal/zzno;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzno;)V
    .locals 5

    new-instance v1, Lcom/google/android/gms/internal/zzou;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzou;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzno;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zznz;

    new-instance v2, Lcom/google/android/gms/fitness/request/DataInsertRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzop$1;->zzart:Lcom/google/android/gms/fitness/data/DataSet;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzop$1;->zzaru:Z

    invoke-direct {v2, v3, v1, v4}, Lcom/google/android/gms/fitness/request/DataInsertRequest;-><init>(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/internal/zzoj;Z)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zznz;->zza(Lcom/google/android/gms/fitness/request/DataInsertRequest;)V

    return-void
.end method
