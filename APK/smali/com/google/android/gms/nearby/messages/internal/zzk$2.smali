.class Lcom/google/android/gms/nearby/messages/internal/zzk$2;
.super Lcom/google/android/gms/nearby/messages/internal/zzk$zza;


# instance fields
.field final synthetic zzaQR:Lcom/google/android/gms/nearby/messages/StatusCallback;

.field final synthetic zzaQS:Lcom/google/android/gms/nearby/messages/internal/zzk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzk;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/StatusCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzk$2;->zzaQS:Lcom/google/android/gms/nearby/messages/internal/zzk;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzk$2;->zzaQR:Lcom/google/android/gms/nearby/messages/StatusCallback;

    invoke-direct {p0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzk$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzk$2;->zza(Lcom/google/android/gms/nearby/messages/internal/zzj;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/nearby/messages/internal/zzj;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzk$2;->zzaQR:Lcom/google/android/gms/nearby/messages/StatusCallback;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/nearby/messages/StatusCallback;)V

    return-void
.end method
