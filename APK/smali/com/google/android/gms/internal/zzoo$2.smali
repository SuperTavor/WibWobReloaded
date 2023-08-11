.class Lcom/google/android/gms/internal/zzoo$2;
.super Lcom/google/android/gms/internal/zznn$zza;


# instance fields
.field final synthetic zzarr:Lcom/google/android/gms/internal/zzoo;

.field final synthetic zzars:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzoo;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoo$2;->zzarr:Lcom/google/android/gms/internal/zzoo;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzoo$2;->zzars:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zznn$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzI(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/DataTypeResult;->zzR(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zznn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzoo$2;->zza(Lcom/google/android/gms/internal/zznn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zznn;)V
    .locals 4

    new-instance v1, Lcom/google/android/gms/internal/zzoo$zza;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzoo$zza;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/internal/zzoo$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zznn;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzny;

    new-instance v2, Lcom/google/android/gms/fitness/request/DataTypeReadRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzoo$2;->zzars:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/DataTypeReadRequest;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zznw;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzny;->zza(Lcom/google/android/gms/fitness/request/DataTypeReadRequest;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzoo$2;->zzI(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataTypeResult;

    move-result-object v0

    return-object v0
.end method
