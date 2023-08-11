.class Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$13;
.super Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$LoadMatchesImpl;


# instance fields
.field final synthetic zzawT:Ljava/lang/String;

.field final synthetic zzayM:I

.field final synthetic zzayN:[I


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$13;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$13;->zzawT:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$13;->zzayM:I

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$13;->zzayN:[I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;I[I)V

    return-void
.end method
