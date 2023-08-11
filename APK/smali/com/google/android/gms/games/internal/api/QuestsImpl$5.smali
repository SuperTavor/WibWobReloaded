.class Lcom/google/android/gms/games/internal/api/QuestsImpl$5;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;


# instance fields
.field final synthetic zzawR:Z

.field final synthetic zzawT:Ljava/lang/String;

.field final synthetic zzaxo:I

.field final synthetic zzayb:[I

.field final synthetic zzayd:Ljava/lang/String;


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$5;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 7

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$5;->zzawT:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$5;->zzayd:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$5;->zzayb:[I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$5;->zzaxo:I

    iget-boolean v6, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$5;->zzawR:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;[IIZ)V

    return-void
.end method
