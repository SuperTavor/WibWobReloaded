.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;


# instance fields
.field final synthetic zzVb:Lcom/google/android/gms/common/api/Status;

.field final synthetic zzaxD:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl$1;->zzaxD:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeaderboard()Lcom/google/android/gms/games/leaderboard/Leaderboard;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScores()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/google/android/gms/common/data/DataHolder;->zzbu(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
