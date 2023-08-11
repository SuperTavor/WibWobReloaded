.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpForGameCategoriesResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Players$LoadXpForGameCategoriesResult;


# instance fields
.field private final zzSC:Lcom/google/android/gms/common/api/Status;

.field private final zzavU:Ljava/util/List;

.field private final zzavV:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpForGameCategoriesResultImpl;->zzSC:Lcom/google/android/gms/common/api/Status;

    const-string v0, "game_category_list"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpForGameCategoriesResultImpl;->zzavU:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpForGameCategoriesResultImpl;->zzavV:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpForGameCategoriesResultImpl;->zzSC:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
