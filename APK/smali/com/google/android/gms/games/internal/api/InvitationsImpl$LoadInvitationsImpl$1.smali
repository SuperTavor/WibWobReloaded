.class Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;


# instance fields
.field final synthetic zzVb:Lcom/google/android/gms/common/api/Status;

.field final synthetic zzaxr:Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl$1;->zzaxr:Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInvitations()Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/google/android/gms/common/data/DataHolder;->zzbu(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/InvitationsImpl$LoadInvitationsImpl$1;->zzVb:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 0

    return-void
.end method
