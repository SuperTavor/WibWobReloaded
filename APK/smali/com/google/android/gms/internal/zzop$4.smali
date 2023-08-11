.class Lcom/google/android/gms/internal/zzop$4;
.super Lcom/google/android/gms/internal/zzno$zza;


# instance fields
.field final synthetic zzarv:Lcom/google/android/gms/internal/zzop;

.field final synthetic zzary:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzop;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzop$4;->zzarv:Lcom/google/android/gms/internal/zzop;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzop$4;->zzary:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzno$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzK(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DailyTotalResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzop$4;->zzary:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/result/DailyTotalResult;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/result/DailyTotalResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzno;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzop$4;->zza(Lcom/google/android/gms/internal/zzno;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzno;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzop$4$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzop$4$1;-><init>(Lcom/google/android/gms/internal/zzop$4;)V

    new-instance v1, Lcom/google/android/gms/fitness/request/DailyTotalRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzop$4;->zzary:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/fitness/request/DailyTotalRequest;-><init>(Lcom/google/android/gms/internal/zznt;Lcom/google/android/gms/fitness/data/DataType;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzno;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zznz;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zznz;->zza(Lcom/google/android/gms/fitness/request/DailyTotalRequest;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzop$4;->zzK(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DailyTotalResult;

    move-result-object v0

    return-object v0
.end method
