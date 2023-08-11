.class Lcom/google/android/gms/games/internal/api/PlayersImpl$2;
.super Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;


# instance fields
.field final synthetic zzXY:Ljava/lang/String;

.field final synthetic zzawR:Z

.field final synthetic zzaxN:Lcom/google/android/gms/games/internal/api/PlayersImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/PlayersImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$2;->zzaxN:Lcom/google/android/gms/games/internal/api/PlayersImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$2;->zzXY:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$2;->zzawR:Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/PlayersImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$2;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$2;->zzXY:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$2;->zzawR:Z

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Z)V

    return-void
.end method
