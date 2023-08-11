.class Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$12;
.super Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$InitiateMatchImpl;


# instance fields
.field final synthetic zzawT:Ljava/lang/String;

.field final synthetic zzayL:Ljava/lang/String;


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$12;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$12;->zzawT:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$12;->zzayL:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzd(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
