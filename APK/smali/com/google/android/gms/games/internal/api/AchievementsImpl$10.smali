.class Lcom/google/android/gms/games/internal/api/AchievementsImpl$10;
.super Lcom/google/android/gms/games/internal/api/AchievementsImpl$LoadImpl;


# instance fields
.field final synthetic zzXY:Ljava/lang/String;

.field final synthetic zzawR:Z

.field final synthetic zzawT:Ljava/lang/String;


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$10;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$10;->zzXY:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$10;->zzawT:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$10;->zzawR:Z

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
