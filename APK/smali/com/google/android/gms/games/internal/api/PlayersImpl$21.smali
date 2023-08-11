.class Lcom/google/android/gms/games/internal/api/PlayersImpl$21;
.super Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;


# instance fields
.field final synthetic zzawR:Z

.field final synthetic zzaxF:Ljava/lang/String;

.field final synthetic zzaxO:I

.field final synthetic zzaxP:Ljava/lang/String;


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$21;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 7

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$21;->zzaxP:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$21;->zzaxF:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$21;->zzaxO:I

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$21;->zzawR:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method
