.class Lcom/google/android/gms/internal/zzot$6;
.super Lcom/google/android/gms/internal/zzns$zzc;


# instance fields
.field final synthetic zzarJ:Landroid/app/PendingIntent;

.field final synthetic zzarQ:Lcom/google/android/gms/internal/zzot;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzot;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzot$6;->zzarQ:Lcom/google/android/gms/internal/zzot;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzot$6;->zzarJ:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzns$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzns;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzot$6;->zza(Lcom/google/android/gms/internal/zzns;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzns;)V
    .locals 4

    new-instance v1, Lcom/google/android/gms/internal/zzou;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzou;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzns;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzod;

    new-instance v2, Lcom/google/android/gms/fitness/request/SessionUnregistrationRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzot$6;->zzarJ:Landroid/app/PendingIntent;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/SessionUnregistrationRequest;-><init>(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzoj;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzod;->zza(Lcom/google/android/gms/fitness/request/SessionUnregistrationRequest;)V

    return-void
.end method
