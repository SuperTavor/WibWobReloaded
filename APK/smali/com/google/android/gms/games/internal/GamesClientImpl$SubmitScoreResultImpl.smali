.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;


# instance fields
.field private final zzawz:Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreResultImpl;->zzawz:Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    throw v0
.end method


# virtual methods
.method public getScoreData()Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreResultImpl;->zzawz:Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;

    return-object v0
.end method
