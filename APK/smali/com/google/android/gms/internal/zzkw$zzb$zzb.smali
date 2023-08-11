.class public final Lcom/google/android/gms/internal/zzkw$zzb$zzb;
.super Lcom/google/android/gms/internal/zzkw$zza;


# instance fields
.field final synthetic zzZS:Lcom/google/android/gms/internal/zzkw$zzb;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzkw$zzb;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkw$zzb$zzb;->zzZS:Lcom/google/android/gms/internal/zzkw$zzb;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzkw$zzb;->zzZP:Lcom/google/android/gms/internal/zzkw;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzkw$zza;-><init>(Lcom/google/android/gms/internal/zzkw;Lcom/google/android/gms/internal/zzkw$1;)V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/zzkw;->zznm()Lcom/google/android/gms/cast/internal/zzl;

    move-result-object v0

    const-string v1, "onDisconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkw$zzb$zzb;->zzZS:Lcom/google/android/gms/internal/zzkw$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzkw$zzb;->zzZP:Lcom/google/android/gms/internal/zzkw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkw;->zza(Lcom/google/android/gms/internal/zzkw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkw$zzb$zzb;->zzZS:Lcom/google/android/gms/internal/zzkw$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzkw$zzc;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzabb:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzkw$zzc;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkw$zzb;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public onError(I)V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/zzkw;->zznm()Lcom/google/android/gms/cast/internal/zzl;

    move-result-object v0

    const-string v1, "onError: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/zzl;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkw$zzb$zzb;->zzZS:Lcom/google/android/gms/internal/zzkw$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzkw$zzb;->zzZP:Lcom/google/android/gms/internal/zzkw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkw;->zza(Lcom/google/android/gms/internal/zzkw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkw$zzb$zzb;->zzZS:Lcom/google/android/gms/internal/zzkw$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzkw$zzc;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzabd:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzkw$zzc;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkw$zzb;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
