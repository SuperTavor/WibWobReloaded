.class Lcom/google/android/gms/games/internal/api/NotificationsImpl$5;
.super Lcom/google/android/gms/games/internal/api/NotificationsImpl$ContactSettingUpdateImpl;


# instance fields
.field final synthetic zzaxJ:Z

.field final synthetic zzaxK:Landroid/os/Bundle;


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/NotificationsImpl$5;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/api/NotificationsImpl$5;->zzaxJ:Z

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/NotificationsImpl$5;->zzaxK:Landroid/os/Bundle;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;ZLandroid/os/Bundle;)V

    return-void
.end method
