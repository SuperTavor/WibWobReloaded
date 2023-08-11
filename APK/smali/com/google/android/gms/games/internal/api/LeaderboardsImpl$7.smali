.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$SubmitScoreImpl;


# instance fields
.field final synthetic zzaxA:Ljava/lang/String;

.field final synthetic zzaxs:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

.field final synthetic zzaxt:Ljava/lang/String;

.field final synthetic zzaxz:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->zzaxs:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->zzaxt:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->zzaxz:J

    iput-object p6, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->zzaxA:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$SubmitScoreImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 7

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->zzaxt:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->zzaxz:J

    iget-object v6, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->zzaxA:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
