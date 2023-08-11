.class abstract Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# instance fields
.field private final zzwN:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;->zzwN:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;->zzwN:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public zzW(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;->zzW(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;

    move-result-object v0

    return-object v0
.end method
