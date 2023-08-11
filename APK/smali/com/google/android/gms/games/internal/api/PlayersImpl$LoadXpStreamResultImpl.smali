.class abstract Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadXpStreamResultImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# virtual methods
.method public zzar(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Players$LoadXpStreamResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadXpStreamResultImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadXpStreamResultImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadXpStreamResultImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadXpStreamResultImpl;->zzar(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Players$LoadXpStreamResult;

    move-result-object v0

    return-object v0
.end method
