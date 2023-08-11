.class Lcom/google/android/gms/internal/zzkx$1;
.super Lcom/google/android/gms/internal/zzla$zza;


# instance fields
.field final synthetic zzZU:Lcom/google/android/gms/internal/zzla;

.field final synthetic zzZV:Lcom/google/android/gms/internal/zzkx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkx;Lcom/google/android/gms/internal/zzla;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkx$1;->zzZV:Lcom/google/android/gms/internal/zzkx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzkx$1;->zzZU:Lcom/google/android/gms/internal/zzla;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzla$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzbg(I)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/zzkx;->zznm()Lcom/google/android/gms/cast/internal/zzl;

    move-result-object v0

    const-string v1, "onRemoteDisplayEnded"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkx$1;->zzZU:Lcom/google/android/gms/internal/zzla;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkx$1;->zzZU:Lcom/google/android/gms/internal/zzla;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzla;->zzbg(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkx$1;->zzZV:Lcom/google/android/gms/internal/zzkx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Lcom/google/android/gms/internal/zzkx;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkx$1;->zzZV:Lcom/google/android/gms/internal/zzkx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Lcom/google/android/gms/internal/zzkx;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;->onRemoteDisplayEnded(Lcom/google/android/gms/common/api/Status;)V

    :cond_1
    return-void
.end method
