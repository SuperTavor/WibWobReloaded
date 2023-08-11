.class public final Lcom/google/android/gms/games/internal/GamesClientImpl;
.super Lcom/google/android/gms/common/internal/zzj;


# instance fields
.field zzavh:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

.field private final zzavi:Ljava/lang/String;

.field private zzavj:Lcom/google/android/gms/games/PlayerEntity;

.field private zzavk:Lcom/google/android/gms/games/GameEntity;

.field private final zzavl:Lcom/google/android/gms/games/internal/PopupManager;

.field private zzavm:Z

.field private final zzavn:Landroid/os/Binder;

.field private final zzavo:J

.field private final zzavp:Lcom/google/android/gms/games/Games$GamesOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/games/Games$GamesOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl$1;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavh:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavm:Z

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzf;->zzoN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavi:Ljava/lang/String;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavn:Landroid/os/Binder;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzf;->zzoJ()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/games/internal/PopupManager;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;I)Lcom/google/android/gms/games/internal/PopupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavl:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzf;->zzoP()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzn(Landroid/view/View;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavo:J

    iput-object p4, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavp:Lcom/google/android/gms/games/Games$GamesOptions;

    return-void
.end method

.method private static zzX(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .locals 3

    new-instance v1, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;

    invoke-direct {v1, p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/Room;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;->release()V

    throw v0
.end method

.method static synthetic zzY(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzX(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/games/internal/GamesClientImpl;Landroid/os/RemoteException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    return-void
.end method

.method private zzb(Landroid/os/RemoteException;)V
    .locals 2

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/games/internal/GamesLog;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private zzuv()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavj:Lcom/google/android/gms/games/PlayerEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavk:Lcom/google/android/gms/games/GameEntity;

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavm:Z

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzuT()V

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavh:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v1}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavo:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zzE(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzj;->disconnect()V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "Failed to notify client disconnect."

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->zzy(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/zzj;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavm:Z

    return-void
.end method

.method protected synthetic zzW(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzbN(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesService;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzlm;[BLjava/lang/String;Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlm;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;[BLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public zza([BLjava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const-string v0, "Participant IDs must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzb([BLjava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public zza(I[BILandroid/graphics/Bitmap;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2, p3, p5}, Lcom/google/android/gms/games/internal/IGamesService;->zza(I[BILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Must provide a non null icon"

    invoke-static {p4, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.google.android.gms.games.REQUEST_ITEM_ICON"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/games/PlayerEntity;)Landroid/content/Intent;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/PlayerEntity;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->freeze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zza(Ljava/lang/String;ZZI)Landroid/content/Intent;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Ljava/lang/String;ZZI)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const-class v0, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "show_welcome_popup"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavm:Z

    const-string v0, "com.google.android.gms.games.current_player"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavj:Lcom/google/android/gms/games/PlayerEntity;

    const-string v0, "com.google.android.gms.games.current_game"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/GameEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavk:Lcom/google/android/gms/games/GameEntity;

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/zzj;->zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public zza(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/common/api/GoogleApiClient$zza;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzuv()V

    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/api/GoogleApiClient$zza;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/games/snapshot/Snapshot;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Snapshot already closed"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->zzqO()Lcom/google/android/gms/drive/Contents;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->close()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, v2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/drive/Contents;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;III)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;III)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;ILjava/lang/String;[Ljava/lang/String;Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$AppContentLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AppContentLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;ILjava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;IZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;I[I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchesLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchesLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;I[I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-virtual {p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->zzvH()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;->asBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/Bundle;II)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->getVariant()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->zzvN()I

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->getInvitedPlayerIds()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->getAutoMatchCriteria()Landroid/os/Bundle;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;II[Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V
    .locals 4

    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Snapshot already closed"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->zzvS()Lcom/google/android/gms/common/data/BitmapTeleporter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zzc(Ljava/io/File;)V

    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->zzqO()Lcom/google/android/gms/drive/Contents;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->close()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotCommittedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotCommittedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    move-result-object v3

    check-cast p3, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    invoke-interface {v0, v1, v3, p3, v2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Lcom/google/android/gms/drive/Contents;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavl:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->zzvh()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavl:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v3}, Lcom/google/android/gms/games/internal/PopupManager;->zzvg()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    move-object v1, v0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;I)V
    .locals 6

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavl:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->zzvh()Landroid/os/IBinder;

    move-result-object v4

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavl:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->zzvg()Landroid/os/Bundle;

    move-result-object v5

    move-object v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;IIIZ)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;IZZ)V
    .locals 6

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid player collection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v1, "played_with"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9529ab2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;I[I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchesLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchesLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I[I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/IGamesService;

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;JLjava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreBinderCallbacks;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLeftBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLeftBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerLeaderboardScoreLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerLeaderboardScoreLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 7

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid player collection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string v1, "circled"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "played_with"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "nearby"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3e8dd581 -> :sswitch_2
        0x9529ab2 -> :sswitch_1
        0x2eaadd94 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V
    .locals 6

    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "SnapshotContents already closed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->zzvS()Lcom/google/android/gms/common/data/BitmapTeleporter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zzc(Ljava/io/File;)V

    :cond_0
    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->zzqO()Lcom/google/android/gms/drive/Contents;

    move-result-object v5

    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->close()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Lcom/google/android/gms/drive/Contents;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavh:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;[IIZ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavh:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[IIZ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzf(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;ZI)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;ZI)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchUpdatedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchUpdatedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchUpdatedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchUpdatedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;[Ljava/lang/String;I[BI)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSentBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSentBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[Ljava/lang/String;I[BI)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;ZLandroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsUpdatedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsUpdatedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public varargs zza(Lcom/google/android/gms/internal/zzlb$zzb;Z[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavh:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$EventsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$EventsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z[Ljava/lang/String;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;[IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavh:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;[IIZ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zzb;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzlm;)V
    .locals 4

    :try_start_0
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlm;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavo:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzlm;Lcom/google/android/gms/internal/zzlm;Lcom/google/android/gms/internal/zzlm;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V
    .locals 10

    :try_start_0
    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlm;Lcom/google/android/gms/internal/zzlm;Lcom/google/android/gms/internal/zzlm;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavn:Landroid/os/Binder;

    invoke-virtual {p4}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getVariant()I

    move-result v4

    invoke-virtual {p4}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getInvitedPlayerIds()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getAutoMatchCriteria()Landroid/os/Bundle;

    move-result-object v6

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavo:J

    invoke-interface/range {v1 .. v9}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/IBinder;I[Ljava/lang/String;Landroid/os/Bundle;ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzlm;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlm;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public zzb(IIZ)Landroid/content/Intent;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(IIZ)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzb([I)Landroid/content/Intent;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->zzb([I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected zzb(Ljava/util/Set;)Ljava/util/Set;
    .locals 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v5, Lcom/google/android/gms/common/api/Scope;

    const-string v0, "https://www.googleapis.com/auth/games"

    invoke-direct {v5, v0}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/google/android/gms/common/api/Scope;

    const-string v0, "https://www.googleapis.com/auth/games.firstparty"

    invoke-direct {v6, v0}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/common/api/Scope;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v0, v1

    move v1, v4

    :goto_1
    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v6}, Lcom/google/android/gms/common/api/Scope;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    move v1, v3

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_3

    if-nez v3, :cond_2

    move v0, v4

    :goto_2
    const-string v1, "Cannot have both %s and %s!"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "https://www.googleapis.com/auth/games"

    aput-object v5, v3, v2

    const-string v2, "https://www.googleapis.com/auth/games.firstparty"

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-object p1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    const-string v0, "Games APIs requires %s to function."

    new-array v1, v4, [Ljava/lang/Object;

    const-string v4, "https://www.googleapis.com/auth/games"

    aput-object v4, v1, v2

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    move v0, v1

    move v1, v3

    goto :goto_1
.end method

.method public zzb(Lcom/google/android/gms/internal/zzlb$zzb;IZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavl:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->zzvh()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavl:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v3}, Lcom/google/android/gms/games/internal/PopupManager;->zzvg()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    move-object v1, v0

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;I)V
    .locals 6

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavl:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->zzvh()Landroid/os/IBinder;

    move-result-object v4

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavl:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->zzvg()Landroid/os/Bundle;

    move-result-object v5

    move-object v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;IIIZ)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;IZZ)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavh:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestMilestoneClaimBinderCallbacks;

    invoke-direct {v1, p1, p3}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestMilestoneClaimBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzf(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzlb$zzb;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzlb$zzb;Z[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavh:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p3, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;Z)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzlb$zzb;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzlm;)V
    .locals 4

    :try_start_0
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlm;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavo:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzlm;Lcom/google/android/gms/internal/zzlm;Lcom/google/android/gms/internal/zzlm;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V
    .locals 8

    :try_start_0
    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlm;Lcom/google/android/gms/internal/zzlm;Lcom/google/android/gms/internal/zzlm;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavn:Landroid/os/Binder;

    invoke-virtual {p4}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getInvitationId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavo:J

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/IBinder;Ljava/lang/String;ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method protected zzbN(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesService;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzbQ(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesService;

    move-result-object v0

    return-object v0
.end method

.method public zzc(IIZ)Landroid/content/Intent;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(IIZ)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzlb$zzb;IZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzl(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpStreamLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpStreamLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzlb$zzb;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzlb$zzb;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzlm;)V
    .locals 4

    :try_start_0
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlm;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavo:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public zzcW(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->zzde(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public zzcX(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->zzcX(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzcY(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavl:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v1}, Lcom/google/android/gms/games/internal/PopupManager;->zzvh()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavl:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->zzvg()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public zzd([BLjava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/games/internal/IGamesService;->zzb([BLjava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public zzd(Lcom/google/android/gms/internal/zzlb$zzb;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/zzlb$zzb;IZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zze(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V

    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzm(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpStreamLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpStreamLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V

    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zze(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/zzlb$zzb;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavh:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$EventsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$EventsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzf(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/zzlm;)V
    .locals 4

    :try_start_0
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlm;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavo:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public zze(Lcom/google/android/gms/internal/zzlb$zzb;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavh:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SignOutCompleteBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SignOutCompleteBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    return-void
.end method

.method public zze(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLeftBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLeftBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzo(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zze(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZ)V

    return-void
.end method

.method public zze(Lcom/google/android/gms/internal/zzlb$zzb;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerStatsLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerStatsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzi(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method public zzf(Lcom/google/android/gms/internal/zzlb$zzb;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$NotifyAclLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$NotifyAclLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->zzh(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    return-void
.end method

.method public zzf(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzn(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzf(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSummariesLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSummariesLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V

    return-void
.end method

.method public zzf(Lcom/google/android/gms/internal/zzlb$zzb;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method protected zzfK()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.games.service.START"

    return-object v0
.end method

.method protected zzfL()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    return-object v0
.end method

.method public zzfV(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavl:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/PopupManager;->setGravity(I)V

    return-void
.end method

.method public zzfW(I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->zzfW(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public zzg(Lcom/google/android/gms/internal/zzlb$zzb;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService;->zzt(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzg(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzp(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzg(Lcom/google/android/gms/internal/zzlb$zzb;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ProfileSettingsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ProfileSettingsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzg(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method public zzh(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavh:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestAcceptedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestAcceptedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzu(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzh(Lcom/google/android/gms/internal/zzlb$zzb;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ProfileSettingsUpdatedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ProfileSettingsUpdatedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzh(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method public zzi(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotDeletedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotDeletedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzr(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzi(Lcom/google/android/gms/internal/zzlb$zzb;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zze(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method public zzj(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$GameInstancesLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GameInstancesLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzf(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzk(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$GameSearchSuggestionsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GameSearchSuggestionsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzq(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzl(Ljava/lang/String;II)Landroid/content/Intent;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzm(Ljava/lang/String;II)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzl(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpForGameCategoriesLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpForGameCategoriesLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzs(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzlN()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected zzly()Landroid/os/Bundle;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavp:Lcom/google/android/gms/games/Games$GamesOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/games/Games$GamesOptions;->zztD()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.google.android.gms.games.key.gamePackageName"

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavi:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.google.android.gms.games.key.desiredLocale"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.google.android.gms.games.key.popupWindowToken"

    new-instance v2, Lcom/google/android/gms/common/internal/BinderWrapper;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavl:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v3}, Lcom/google/android/gms/games/internal/PopupManager;->zzvh()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "com.google.android.gms.games.key.API_VERSION"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpa()Lcom/google/android/gms/common/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->zzoQ()Lcom/google/android/gms/internal/zzqx;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "com.google.android.gms.games.key.signInOptions"

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->zzoQ()Lcom/google/android/gms/internal/zzqx;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzf;->zzoR()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/google/android/gms/signin/internal/zzi;->zza(Lcom/google/android/gms/internal/zzqx;Ljava/lang/Integer;Ljava/util/concurrent/ExecutorService;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-object v1
.end method

.method public zzm(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzk(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzmS()Landroid/os/Bundle;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzmS()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzn(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavl:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/PopupManager;->zzo(Landroid/view/View;)V

    return-void
.end method

.method public zzn(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$NotifyAclUpdatedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$NotifyAclUpdatedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzj(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzo(Lcom/google/android/gms/internal/zzlb$zzb;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzlb$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzi(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzoW()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzj;->zzoW()V

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavl:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/PopupManager;->zzvf()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavm:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavp:Lcom/google/android/gms/games/Games$GamesOptions;

    iget-boolean v0, v0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatS:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzuw()V

    :cond_1
    return-void
.end method

.method public zzp(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavh:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->zzp(Ljava/lang/String;I)V

    return-void
.end method

.method public zzq(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzq(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public zzr(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzr(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public zzuA()Lcom/google/android/gms/games/Game;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpb()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavk:Lcom/google/android/gms/games/GameEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    :try_start_1
    new-instance v1, Lcom/google/android/gms/games/GameBuffer;

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzuX()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/GameBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/games/GameBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/GameBuffer;->get(I)Lcom/google/android/gms/games/Game;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/Game;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/GameEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavk:Lcom/google/android/gms/games/GameEntity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Lcom/google/android/gms/games/GameBuffer;->release()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavk:Lcom/google/android/gms/games/GameEntity;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/gms/games/GameBuffer;->release()V

    throw v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v0

    :try_start_6
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public zzuB()Landroid/content/Intent;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzuB()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzuC()Landroid/content/Intent;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzuC()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzuD()Landroid/content/Intent;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzuD()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzuE()Landroid/content/Intent;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzuE()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzuF()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavo:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zzF(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public zzuG()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavo:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zzG(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public zzuH()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavo:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zzI(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public zzuI()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavo:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zzH(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public zzuJ()Landroid/content/Intent;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzuJ()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzuK()Landroid/content/Intent;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzuK()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzuL()I
    .locals 2

    const/16 v1, 0x1110

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzuL()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    move v0, v1

    goto :goto_0
.end method

.method public zzuM()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzuM()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzuN()I
    .locals 2

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzuN()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    move v0, v1

    goto :goto_0
.end method

.method public zzuO()Landroid/content/Intent;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzuO()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzuP()I
    .locals 2

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzuP()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    move v0, v1

    goto :goto_0
.end method

.method public zzuQ()I
    .locals 2

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzuQ()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    move v0, v1

    goto :goto_0
.end method

.method public zzuR()I
    .locals 2

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzuR()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    move v0, v1

    goto :goto_0
.end method

.method public zzuS()I
    .locals 2

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzuS()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    move v0, v1

    goto :goto_0
.end method

.method public zzuT()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzuT()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public zzuw()V
    .locals 4

    :try_start_0
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PopupLocationInfoBinderCallbacks;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavl:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$PopupLocationInfoBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/PopupManager;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavo:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesClient;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public zzux()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzux()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzuy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavj:Lcom/google/android/gms/games/PlayerEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavj:Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzuy()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzuz()Lcom/google/android/gms/games/Player;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpb()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavj:Lcom/google/android/gms/games/PlayerEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    :try_start_1
    new-instance v1, Lcom/google/android/gms/games/PlayerBuffer;

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzuV()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/PlayerBuffer;->get(I)Lcom/google/android/gms/games/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavj:Lcom/google/android/gms/games/PlayerEntity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->release()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzavj:Lcom/google/android/gms/games/PlayerEntity;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->release()V

    throw v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v0

    :try_start_6
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method
