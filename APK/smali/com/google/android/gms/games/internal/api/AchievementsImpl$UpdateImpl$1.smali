.class Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;


# instance fields
.field final synthetic zzVb:Lcom/google/android/gms/common/api/Status;

.field final synthetic zzawX:Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl$1;->zzawX:Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAchievementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl$1;->zzawX:Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;

    invoke-static {v0}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;->zza(Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
