.class Lcom/google/android/gms/games/internal/api/PlayersImpl$11;
.super Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;


# instance fields
.field final synthetic zzawR:Z

.field final synthetic zzawT:Ljava/lang/String;

.field final synthetic zzaxO:I


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$11;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 7

    const-string v2, "played_with"

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$11;->zzawT:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$11;->zzaxO:I

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$11;->zzawR:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method
