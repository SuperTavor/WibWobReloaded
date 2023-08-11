.class final Lcom/google/android/gms/games/internal/GamesClientImpl$PeerLeftRoomNotifier;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V
    .locals 0

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onPeerLeft(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V

    return-void
.end method
