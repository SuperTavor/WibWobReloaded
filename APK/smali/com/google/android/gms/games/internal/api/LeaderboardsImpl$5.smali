.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;


# instance fields
.field final synthetic zzawR:Z

.field final synthetic zzaxs:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

.field final synthetic zzaxt:Ljava/lang/String;

.field final synthetic zzaxu:I

.field final synthetic zzaxv:I

.field final synthetic zzaxw:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzaxs:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzaxt:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzaxu:I

    iput p5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzaxv:I

    iput p6, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzaxw:I

    iput-boolean p7, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzawR:Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 7

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzaxt:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzaxu:I

    iget v4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzaxv:I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzaxw:I

    iget-boolean v6, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->zzawR:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;IIIZ)V

    return-void
.end method
