.class Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;


# instance fields
.field final synthetic zzVb:Lcom/google/android/gms/common/api/Status;

.field final synthetic zzaye:Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl$1;->zzaye:Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuest()Lcom/google/android/gms/games/quest/Quest;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
