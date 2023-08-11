.class public final Lcom/google/android/gms/games/Games;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;

.field public static final Achievements:Lcom/google/android/gms/games/achievement/Achievements;

.field public static final EXTRA_PLAYER_IDS:Ljava/lang/String; = "players"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "status"

.field public static final Events:Lcom/google/android/gms/games/event/Events;

.field public static final GamesMetadata:Lcom/google/android/gms/games/GamesMetadata;

.field public static final Invitations:Lcom/google/android/gms/games/multiplayer/Invitations;

.field public static final Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

.field public static final Notifications:Lcom/google/android/gms/games/Notifications;

.field public static final Players:Lcom/google/android/gms/games/Players;

.field public static final Quests:Lcom/google/android/gms/games/quest/Quests;

.field public static final RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

.field public static final Requests:Lcom/google/android/gms/games/request/Requests;

.field public static final SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

.field public static final Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

.field public static final Stats:Lcom/google/android/gms/games/stats/Stats;

.field public static final TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

.field static final zzRk:Lcom/google/android/gms/common/api/Api$zzc;

.field private static final zzRl:Lcom/google/android/gms/common/api/Api$zza;

.field private static final zzatM:Lcom/google/android/gms/common/api/Api$zza;

.field public static final zzatN:Lcom/google/android/gms/common/api/Scope;

.field public static final zzatO:Lcom/google/android/gms/common/api/Api;

.field public static final zzatP:Lcom/google/android/gms/games/appcontent/AppContents;

.field public static final zzatQ:Lcom/google/android/gms/games/multiplayer/Multiplayer;

.field public static final zzatR:Lcom/google/android/gms/games/internal/game/Acls;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/games/Games$1;

    invoke-direct {v0}, Lcom/google/android/gms/games/Games$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzRl:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/games/Games$2;

    invoke-direct {v0}, Lcom/google/android/gms/games/Games$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzatM:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/games"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Games.API"

    sget-object v2, Lcom/google/android/gms/games/Games;->zzRl:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/games/Games;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/games.firstparty"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzatN:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Games.API_1P"

    sget-object v2, Lcom/google/android/gms/games/Games;->zzatM:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/games/Games;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzatO:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->GamesMetadata:Lcom/google/android/gms/games/GamesMetadata;

    new-instance v0, Lcom/google/android/gms/games/internal/api/AchievementsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/AchievementsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    new-instance v0, Lcom/google/android/gms/games/internal/api/AppContentsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/AppContentsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzatP:Lcom/google/android/gms/games/appcontent/AppContents;

    new-instance v0, Lcom/google/android/gms/games/internal/api/EventsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/EventsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Events:Lcom/google/android/gms/games/event/Events;

    new-instance v0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    new-instance v0, Lcom/google/android/gms/games/internal/api/InvitationsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/InvitationsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Invitations:Lcom/google/android/gms/games/multiplayer/Invitations;

    new-instance v0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    new-instance v0, Lcom/google/android/gms/games/internal/api/RealTimeMultiplayerImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/RealTimeMultiplayerImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    new-instance v0, Lcom/google/android/gms/games/internal/api/MultiplayerImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/MultiplayerImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzatQ:Lcom/google/android/gms/games/multiplayer/Multiplayer;

    new-instance v0, Lcom/google/android/gms/games/internal/api/PlayersImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/PlayersImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    new-instance v0, Lcom/google/android/gms/games/internal/api/NotificationsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/NotificationsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Notifications:Lcom/google/android/gms/games/Notifications;

    new-instance v0, Lcom/google/android/gms/games/internal/api/QuestsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/QuestsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Quests:Lcom/google/android/gms/games/quest/Quests;

    new-instance v0, Lcom/google/android/gms/games/internal/api/RequestsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/RequestsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    new-instance v0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    new-instance v0, Lcom/google/android/gms/games/internal/api/StatsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/StatsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Stats:Lcom/google/android/gms/games/stats/Stats;

    new-instance v0, Lcom/google/android/gms/games/internal/api/AclsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/AclsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzatR:Lcom/google/android/gms/games/internal/game/Acls;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppId(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/Games;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzuM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/Games;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzux()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkVariant(Lcom/google/android/gms/common/api/GoogleApiClient;)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/Games;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzuL()I

    move-result v0

    return v0
.end method

.method public static getSettingsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/Games;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzuK()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static setGravityForPopups(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/games/Games;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzfV(I)V

    :cond_0
    return-void
.end method

.method public static setViewForPopups(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/games/Games;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzn(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/Games$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/Games$3;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "GoogleApiClient parameter is required."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const-string v1, "GoogleApiClient must be connected."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/games/Games;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzc(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/games/Games;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;
    .locals 2

    sget-object v0, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api;)Z

    move-result v0

    const-string v1, "GoogleApiClient is not configured to use the Games Api. Pass Games.API into GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient has an optional Games.API and is not connected to Games. Use GoogleApiClient.hasConnectedApi(Games.API) to guard this call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/games/Games;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/GamesClientImpl;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
