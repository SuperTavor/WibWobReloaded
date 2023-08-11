.class Lcom/google/android/gms/games/internal/api/PlayersImpl$15;
.super Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;


# instance fields
.field final synthetic zzawR:Z

.field final synthetic zzaxO:I


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$15;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$15;->zzaxO:I

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$15;->zzawR:Z

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzc(Lcom/google/android/gms/internal/zzlb$zzb;IZZ)V

    return-void
.end method
