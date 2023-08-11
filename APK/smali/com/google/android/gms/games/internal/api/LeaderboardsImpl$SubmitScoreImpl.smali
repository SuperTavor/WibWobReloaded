.class public abstract Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$SubmitScoreImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public zzaj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$SubmitScoreImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$SubmitScoreImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$SubmitScoreImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$SubmitScoreImpl;->zzaj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;

    move-result-object v0

    return-object v0
.end method
