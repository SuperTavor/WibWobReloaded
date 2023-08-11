.class Lcom/google/android/gms/nearby/messages/internal/zzj$zzc;
.super Lcom/google/android/gms/nearby/messages/internal/zzf$zza;


# instance fields
.field private final zzaQO:Lcom/google/android/gms/nearby/messages/StatusCallback;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/nearby/messages/StatusCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzf$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzj$zzc;->zzaQO:Lcom/google/android/gms/nearby/messages/StatusCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/nearby/messages/StatusCallback;Lcom/google/android/gms/nearby/messages/internal/zzj$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzj$zzc;-><init>(Lcom/google/android/gms/nearby/messages/StatusCallback;)V

    return-void
.end method


# virtual methods
.method public onPermissionChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzj$zzc;->zzaQO:Lcom/google/android/gms/nearby/messages/StatusCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/nearby/messages/StatusCallback;->onPermissionChanged(Z)V

    return-void
.end method
