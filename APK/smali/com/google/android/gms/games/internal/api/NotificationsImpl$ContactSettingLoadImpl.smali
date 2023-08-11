.class abstract Lcom/google/android/gms/games/internal/api/NotificationsImpl$ContactSettingLoadImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# virtual methods
.method public zzam(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Notifications$ContactSettingLoadResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/api/NotificationsImpl$ContactSettingLoadImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/NotificationsImpl$ContactSettingLoadImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/NotificationsImpl$ContactSettingLoadImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/NotificationsImpl$ContactSettingLoadImpl;->zzam(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Notifications$ContactSettingLoadResult;

    move-result-object v0

    return-object v0
.end method
