.class final Lcom/google/android/gms/games/internal/GamesClientImpl$JoinedRoomNotifier;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomNotifier;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)V
    .locals 0

    invoke-interface {p1, p3, p2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;->onJoinedRoom(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V

    return-void
.end method
