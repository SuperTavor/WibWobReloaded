.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$11;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;


# instance fields
.field final synthetic zzawR:Z

.field final synthetic zzawT:Ljava/lang/String;

.field final synthetic zzaxt:Ljava/lang/String;

.field final synthetic zzaxu:I

.field final synthetic zzaxv:I

.field final synthetic zzaxw:I


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$11;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 8

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$11;->zzawT:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$11;->zzaxt:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$11;->zzaxu:I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$11;->zzaxv:I

    iget v6, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$11;->zzaxw:I

    iget-boolean v7, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$11;->zzawR:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    return-void
.end method
