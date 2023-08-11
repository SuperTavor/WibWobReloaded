.class abstract Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadProfileSettingsResultImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# virtual methods
.method protected zzap(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Players$LoadProfileSettingsResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadProfileSettingsResultImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadProfileSettingsResultImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadProfileSettingsResultImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadProfileSettingsResultImpl;->zzap(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Players$LoadProfileSettingsResult;

    move-result-object v0

    return-object v0
.end method
