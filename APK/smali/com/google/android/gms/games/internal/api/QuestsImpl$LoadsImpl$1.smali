.class Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;


# instance fields
.field final synthetic zzVb:Lcom/google/android/gms/common/api/Status;

.field final synthetic zzayg:Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl$1;->zzayg:Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuests()Lcom/google/android/gms/games/quest/QuestBuffer;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    new-instance v1, Lcom/google/android/gms/games/quest/QuestBuffer;

    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->zzbu(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/quest/QuestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-object v1
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
