.class Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$9;
.super Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$LoadMatchesImpl;


# instance fields
.field final synthetic zzayK:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;

.field final synthetic zzayM:I

.field final synthetic zzayN:[I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;Lcom/google/android/gms/common/api/GoogleApiClient;I[I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$9;->zzayK:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;

    iput p3, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$9;->zzayM:I

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$9;->zzayN:[I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$LoadMatchesImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$9;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$9;->zzayM:I

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$9;->zzayN:[I

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;I[I)V

    return-void
.end method
