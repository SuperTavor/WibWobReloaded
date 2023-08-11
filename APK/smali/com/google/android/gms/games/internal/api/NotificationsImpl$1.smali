.class Lcom/google/android/gms/games/internal/api/NotificationsImpl$1;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# instance fields
.field final synthetic zzaxF:Ljava/lang/String;


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/NotificationsImpl$1;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/NotificationsImpl$1;->zzaxF:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzd(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Z)V

    return-void
.end method

.method public zzak(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Notifications$GameMuteStatusChangeResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/api/NotificationsImpl$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/NotificationsImpl$1$1;-><init>(Lcom/google/android/gms/games/internal/api/NotificationsImpl$1;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/NotificationsImpl$1;->zzak(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Notifications$GameMuteStatusChangeResult;

    move-result-object v0

    return-object v0
.end method
