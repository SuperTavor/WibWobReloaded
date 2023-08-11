.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadInvitationsResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;


# instance fields
.field private final zzavL:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadInvitationsResultImpl;->zzavL:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    return-void
.end method


# virtual methods
.method public getInvitations()Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadInvitationsResultImpl;->zzavL:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    return-object v0
.end method
