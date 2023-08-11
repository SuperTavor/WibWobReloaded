.class Lcom/google/android/gms/internal/zzos$2;
.super Lcom/google/android/gms/internal/zznr$zzc;


# instance fields
.field final synthetic zzarG:Lcom/google/android/gms/internal/zzos;

.field final synthetic zzarH:Lcom/google/android/gms/fitness/request/SensorRequest;

.field final synthetic zzarI:Lcom/google/android/gms/fitness/data/zzj;

.field final synthetic zzarJ:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzos;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/zzj;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzos$2;->zzarG:Lcom/google/android/gms/internal/zzos;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzos$2;->zzarH:Lcom/google/android/gms/fitness/request/SensorRequest;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzos$2;->zzarI:Lcom/google/android/gms/fitness/data/zzj;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzos$2;->zzarJ:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zznr$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zznr;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzos$2;->zza(Lcom/google/android/gms/internal/zznr;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zznr;)V
    .locals 6

    new-instance v1, Lcom/google/android/gms/internal/zzou;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzou;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zznr;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzoc;

    new-instance v2, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzos$2;->zzarH:Lcom/google/android/gms/fitness/request/SensorRequest;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzos$2;->zzarI:Lcom/google/android/gms/fitness/data/zzj;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzos$2;->zzarJ:Landroid/app/PendingIntent;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;-><init>(Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/zzj;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzoj;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzoc;->zza(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)V

    return-void
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzos$2;->zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method protected zzd(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method
