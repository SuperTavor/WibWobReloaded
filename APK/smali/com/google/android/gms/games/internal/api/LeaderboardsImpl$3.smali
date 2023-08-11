.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadPlayerScoreImpl;


# instance fields
.field final synthetic zzaxs:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

.field final synthetic zzaxt:Ljava/lang/String;

.field final synthetic zzaxu:I

.field final synthetic zzaxv:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;II)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->zzaxs:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->zzaxt:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->zzaxu:I

    iput p5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->zzaxv:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadPlayerScoreImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->zzaxt:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->zzaxu:I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->zzaxv:I

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
