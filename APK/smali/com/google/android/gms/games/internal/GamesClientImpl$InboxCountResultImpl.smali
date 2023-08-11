.class final Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Notifications$InboxCountResult;


# instance fields
.field private final zzSC:Lcom/google/android/gms/common/api/Status;

.field private final zzavA:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountResultImpl;->zzSC:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountResultImpl;->zzavA:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountResultImpl;->zzSC:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
