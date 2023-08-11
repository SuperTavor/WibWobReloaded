.class Lcom/google/android/gms/internal/zzon$6;
.super Lcom/google/android/gms/internal/zznm$zza;


# instance fields
.field final synthetic zzarm:Lcom/google/android/gms/internal/zzon;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzon;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzon$6;->zzarm:Lcom/google/android/gms/internal/zzon;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zznm$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zzH(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/BleDevicesResult;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/BleDevicesResult;->zzP(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/BleDevicesResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zznm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzon$6;->zza(Lcom/google/android/gms/internal/zznm;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zznm;)V
    .locals 3

    new-instance v1, Lcom/google/android/gms/internal/zzon$zza;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzon$zza;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/internal/zzon$1;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zznm;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zznx;

    new-instance v2, Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;

    invoke-direct {v2, v1}, Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;-><init>(Lcom/google/android/gms/internal/zzow;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zznx;->zza(Lcom/google/android/gms/fitness/request/ListClaimedBleDevicesRequest;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzon$6;->zzH(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/BleDevicesResult;

    move-result-object v0

    return-object v0
.end method
