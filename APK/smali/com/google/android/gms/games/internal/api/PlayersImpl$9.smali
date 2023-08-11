.class Lcom/google/android/gms/games/internal/api/PlayersImpl$9;
.super Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;


# instance fields
.field final synthetic zzawT:Ljava/lang/String;

.field final synthetic zzaxO:I


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$9;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 7

    const/4 v5, 0x0

    const-string v2, "nearby"

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$9;->zzawT:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$9;->zzaxO:I

    move-object v0, p1

    move-object v1, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method
