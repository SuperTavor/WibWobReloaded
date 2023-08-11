.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# instance fields
.field private final zzawt:Lcom/google/android/gms/internal/zzlm;

.field private final zzawu:Lcom/google/android/gms/internal/zzlm;

.field private final zzawv:Lcom/google/android/gms/internal/zzlm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlm;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Callbacks must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzlm;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawt:Lcom/google/android/gms/internal/zzlm;

    iput-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    iput-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawv:Lcom/google/android/gms/internal/zzlm;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzlm;Lcom/google/android/gms/internal/zzlm;Lcom/google/android/gms/internal/zzlm;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Callbacks must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzlm;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawt:Lcom/google/android/gms/internal/zzlm;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawv:Lcom/google/android/gms/internal/zzlm;

    return-void
.end method


# virtual methods
.method public onLeftRoom(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawt:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomNotifier;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomNotifier;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    return-void
.end method

.method public onP2PConnected(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedNotifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    :cond_0
    return-void
.end method

.method public onP2PDisconnected(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PDisconnectedNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PDisconnectedNotifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    :cond_0
    return-void
.end method

.method public onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawv:Lcom/google/android/gms/internal/zzlm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawv:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedNotifier;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    :cond_0
    return-void
.end method

.method public zzA(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawt:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$JoinedRoomNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$JoinedRoomNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    return-void
.end method

.method public zzB(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectingNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectingNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    :cond_0
    return-void
.end method

.method public zzC(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomAutoMatchingNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomAutoMatchingNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    :cond_0
    return-void
.end method

.method public zzD(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawt:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectedNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectedNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    return-void
.end method

.method public zzE(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ConnectedToRoomNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ConnectedToRoomNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    :cond_0
    return-void
.end method

.method public zzF(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$DisconnectedFromRoomNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$DisconnectedFromRoomNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerInvitedToRoomNotifier;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerInvitedToRoomNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    :cond_0
    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerJoinedRoomNotifier;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerJoinedRoomNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    :cond_0
    return-void
.end method

.method public zzc(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerLeftRoomNotifier;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerLeftRoomNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    :cond_0
    return-void
.end method

.method public zzd(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDeclinedNotifier;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDeclinedNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    :cond_0
    return-void
.end method

.method public zze(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerConnectedNotifier;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerConnectedNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    :cond_0
    return-void
.end method

.method public zzf(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawu:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDisconnectedNotifier;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDisconnectedNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    :cond_0
    return-void
.end method

.method public zzz(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->zzawt:Lcom/google/android/gms/internal/zzlm;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomCreatedNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomCreatedNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zzb;)V

    return-void
.end method
