.class Lcom/google/android/gms/nearby/messages/internal/zzk$6;
.super Lcom/google/android/gms/nearby/messages/internal/zzk$zza;


# instance fields
.field final synthetic zzaQS:Lcom/google/android/gms/nearby/messages/internal/zzk;

.field final synthetic zzaQV:Lcom/google/android/gms/nearby/messages/MessageListener;

.field final synthetic zzaQW:Lcom/google/android/gms/nearby/messages/SubscribeOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzk;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzk$6;->zzaQS:Lcom/google/android/gms/nearby/messages/internal/zzk;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzk$6;->zzaQV:Lcom/google/android/gms/nearby/messages/MessageListener;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/zzk$6;->zzaQW:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzk$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzk$6;->zza(Lcom/google/android/gms/nearby/messages/internal/zzj;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/nearby/messages/internal/zzj;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzk$6;->zzaQV:Lcom/google/android/gms/nearby/messages/MessageListener;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzk$6;->zzaQW:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/nearby/messages/internal/zzj;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/SubscribeOptions;[B)V

    return-void
.end method
