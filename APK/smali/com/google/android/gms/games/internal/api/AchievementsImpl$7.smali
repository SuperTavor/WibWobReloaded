.class Lcom/google/android/gms/games/internal/api/AchievementsImpl$7;
.super Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;


# instance fields
.field final synthetic zzawS:Lcom/google/android/gms/games/internal/api/AchievementsImpl;

.field final synthetic zzawU:Ljava/lang/String;

.field final synthetic zzawV:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$7;->zzawS:Lcom/google/android/gms/games/internal/api/AchievementsImpl;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$7;->zzawU:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$7;->zzawV:I

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$7;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$7;->zzawU:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$7;->zzawV:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;I)V

    return-void
.end method
