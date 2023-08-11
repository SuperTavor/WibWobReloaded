.class Lcom/google/android/gms/games/internal/api/PlayersImpl$5;
.super Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;


# instance fields
.field final synthetic zzaxN:Lcom/google/android/gms/games/internal/api/PlayersImpl;

.field final synthetic zzaxO:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/PlayersImpl;Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$5;->zzaxN:Lcom/google/android/gms/games/internal/api/PlayersImpl;

    iput p3, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$5;->zzaxO:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/PlayersImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$5;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$5;->zzaxO:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;IZZ)V

    return-void
.end method
