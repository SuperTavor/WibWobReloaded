.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadProfileSettingsResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/Players$LoadProfileSettingsResult;


# instance fields
.field private final zzavQ:Z

.field private final zzave:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/data/DataHolder;->zzbt(I)I

    move-result v0

    const-string v1, "profile_visible"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/common/data/DataHolder;->zze(Ljava/lang/String;II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadProfileSettingsResultImpl;->zzave:Z

    const-string v1, "profile_visibility_explicitly_set"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/common/data/DataHolder;->zze(Ljava/lang/String;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadProfileSettingsResultImpl;->zzavQ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadProfileSettingsResultImpl;->zzave:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadProfileSettingsResultImpl;->zzavQ:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    throw v0
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadProfileSettingsResultImpl;->zzSC:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
