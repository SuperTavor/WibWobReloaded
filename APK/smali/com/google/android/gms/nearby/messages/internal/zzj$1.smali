.class Lcom/google/android/gms/nearby/messages/internal/zzj$1;
.super Lcom/google/android/gms/nearby/messages/internal/zzj$zze;


# instance fields
.field final synthetic zzaQL:Lcom/google/android/gms/nearby/messages/internal/zzj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzj;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzj$1;->zzaQL:Lcom/google/android/gms/nearby/messages/internal/zzj;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzj$zze;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzj$1;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzE(Ljava/lang/Object;)Landroid/os/IBinder;
    .locals 1

    check-cast p1, Lcom/google/android/gms/nearby/messages/StatusCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzj$1;->zza(Lcom/google/android/gms/nearby/messages/StatusCallback;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method protected zza(Lcom/google/android/gms/nearby/messages/StatusCallback;)Landroid/os/IBinder;
    .locals 2

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzj$zzc;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/nearby/messages/internal/zzj$zzc;-><init>(Lcom/google/android/gms/nearby/messages/StatusCallback;Lcom/google/android/gms/nearby/messages/internal/zzj$1;)V

    return-object v0
.end method
