.class Lcom/google/android/gms/internal/zzon$4;
.super Lcom/google/android/gms/internal/zznm$zzc;


# instance fields
.field final synthetic zzarm:Lcom/google/android/gms/internal/zzon;

.field final synthetic zzarp:Lcom/google/android/gms/fitness/data/BleDevice;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzon;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/BleDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzon$4;->zzarm:Lcom/google/android/gms/internal/zzon;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzon$4;->zzarp:Lcom/google/android/gms/fitness/data/BleDevice;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zznm$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zznm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzon$4;->zza(Lcom/google/android/gms/internal/zznm;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zznm;)V
    .locals 5

    new-instance v1, Lcom/google/android/gms/internal/zzou;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzou;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zznm;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zznx;

    new-instance v2, Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzon$4;->zzarp:Lcom/google/android/gms/fitness/data/BleDevice;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/BleDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzon$4;->zzarp:Lcom/google/android/gms/fitness/data/BleDevice;

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;-><init>(Ljava/lang/String;Lcom/google/android/gms/fitness/data/BleDevice;Lcom/google/android/gms/internal/zzoj;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zznx;->zza(Lcom/google/android/gms/fitness/request/ClaimBleDeviceRequest;)V

    return-void
.end method
