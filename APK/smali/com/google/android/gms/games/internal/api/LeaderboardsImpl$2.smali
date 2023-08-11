.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadMetadataImpl;


# instance fields
.field final synthetic zzawR:Z

.field final synthetic zzaxs:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

.field final synthetic zzaxt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;->zzaxs:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;->zzaxt:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;->zzawR:Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadMetadataImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;->zzaxt:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;->zzawR:Z

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Z)V

    return-void
.end method
