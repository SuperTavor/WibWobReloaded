.class Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$8;
.super Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$CancelMatchImpl;


# instance fields
.field final synthetic zzayK:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;

.field final synthetic zzayL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$8;->zzayK:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$8;->zzayL:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$CancelMatchImpl;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$8;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$8;->zzayL:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzf(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V

    return-void
.end method
