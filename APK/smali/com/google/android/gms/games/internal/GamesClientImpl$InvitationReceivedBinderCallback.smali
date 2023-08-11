.class final Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# instance fields
.field private final zzakZ:Lcom/google/android/gms/internal/zzlm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedBinderCallback;->zzakZ:Lcom/google/android/gms/internal/zzlm;

    return-void
.end method


# virtual methods
.method public onInvitationRemoved(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedBinderCallback;->zzakZ:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationRemovedNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationRemovedNotifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    return-void
.end method

.method public zzs(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 3

    new-instance v1, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->release()V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedBinderCallback;->zzakZ:Lcom/google/android/gms/internal/zzlm;

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedNotifier;

    invoke-direct {v2, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedNotifier;-><init>(Lcom/google/android/gms/games/multiplayer/Invitation;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->release()V

    throw v0
.end method
