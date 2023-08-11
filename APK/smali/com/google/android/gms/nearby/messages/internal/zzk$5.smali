.class Lcom/google/android/gms/nearby/messages/internal/zzk$5;
.super Lcom/google/android/gms/nearby/messages/internal/zzk$zza;


# instance fields
.field final synthetic zzaQS:Lcom/google/android/gms/nearby/messages/internal/zzk;

.field final synthetic zzaQT:Lcom/google/android/gms/nearby/messages/Message;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzk;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzk$5;->zzaQS:Lcom/google/android/gms/nearby/messages/internal/zzk;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzk$5;->zzaQT:Lcom/google/android/gms/nearby/messages/Message;

    invoke-direct {p0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzk$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzk$5;->zza(Lcom/google/android/gms/nearby/messages/internal/zzj;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/nearby/messages/internal/zzj;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzk$5;->zzaQT:Lcom/google/android/gms/nearby/messages/Message;

    invoke-static {v0}, Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;->zza(Lcom/google/android/gms/nearby/messages/Message;)Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/nearby/messages/internal/MessageWrapper;)V

    return-void
.end method
