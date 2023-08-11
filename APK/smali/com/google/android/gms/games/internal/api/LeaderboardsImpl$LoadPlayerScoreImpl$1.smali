.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadPlayerScoreImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;


# instance fields
.field final synthetic zzVb:Lcom/google/android/gms/common/api/Status;

.field final synthetic zzaxC:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadPlayerScoreImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadPlayerScoreImpl;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadPlayerScoreImpl$1;->zzaxC:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadPlayerScoreImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadPlayerScoreImpl$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScore()Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadPlayerScoreImpl$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
