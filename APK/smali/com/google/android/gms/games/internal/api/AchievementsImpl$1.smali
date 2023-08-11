.class Lcom/google/android/gms/games/internal/api/AchievementsImpl$1;
.super Lcom/google/android/gms/games/internal/api/AchievementsImpl$LoadImpl;


# instance fields
.field final synthetic zzawR:Z

.field final synthetic zzawS:Lcom/google/android/gms/games/internal/api/AchievementsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$1;->zzawS:Lcom/google/android/gms/games/internal/api/AchievementsImpl;

    iput-boolean p3, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$1;->zzawR:Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$LoadImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/AchievementsImpl$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$1;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$1;->zzawR:Z

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzc(Lcom/google/android/gms/internal/zzlb$zzb;Z)V

    return-void
.end method
