.class final Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# instance fields
.field private final zzakZ:Lcom/google/android/gms/internal/zzlm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;->zzakZ:Lcom/google/android/gms/internal/zzlm;

    return-void
.end method

.method private zzZ(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/quest/Quest;
    .locals 3

    new-instance v1, Lcom/google/android/gms/games/quest/QuestBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/quest/QuestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/quest/QuestBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/quest/Quest;

    invoke-interface {v0}, Lcom/google/android/gms/games/quest/Quest;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/quest/Quest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->release()V

    throw v0
.end method


# virtual methods
.method public zzR(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;->zzZ(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/quest/Quest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;->zzakZ:Lcom/google/android/gms/internal/zzlm;

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedNotifier;

    invoke-direct {v2, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedNotifier;-><init>(Lcom/google/android/gms/games/quest/Quest;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    :cond_0
    return-void
.end method
