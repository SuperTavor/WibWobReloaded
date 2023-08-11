.class public final Lcom/google/android/gms/internal/zzpu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/nearby/connection/Connections;


# static fields
.field public static final zzRk:Lcom/google/android/gms/common/api/Api$zzc;

.field public static final zzRl:Lcom/google/android/gms/common/api/Api$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzpu;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzpu$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpu$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzpu;->zzRl:Lcom/google/android/gms/common/api/Api$zza;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/internal/zzpt;
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

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzpu;->zze(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/internal/zzpt;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zze(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/internal/zzpt;
    .locals 2

    sget-object v0, Lcom/google/android/gms/nearby/Nearby;->CONNECTIONS_API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api;)Z

    move-result v0

    const-string v1, "GoogleApiClient is not configured to use the Nearby Connections Api. Pass Nearby.CONNECTIONS_API into GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/nearby/Nearby;->CONNECTIONS_API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient has an optional Nearby.CONNECTIONS_API and is not connected to Nearby Connections. Use GoogleApiClient.hasConnectedApi(Nearby.CONNECTIONS_API) to guard this call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzpu;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpt;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptConnectionRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/nearby/connection/Connections$MessageListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6

    invoke-virtual {p1, p4}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzlm;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/internal/zzpu$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzpu$5;-><init>(Lcom/google/android/gms/internal/zzpu;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/internal/zzlm;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

.method public disconnectFromEndpoint(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzpu;->zzd(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/internal/zzpt;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzpt;->zzek(Ljava/lang/String;)V

    return-void
.end method

.method public getLocalDeviceId(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzpu;->zzd(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/internal/zzpt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpt;->zzAP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalEndpointId(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzpu;->zzd(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/internal/zzpt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpt;->zzAO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rejectConnectionRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzpu$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzpu$6;-><init>(Lcom/google/android/gms/internal/zzpu;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

.method public sendConnectionRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 8

    invoke-virtual {p1, p5}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzlm;

    move-result-object v6

    invoke-virtual {p1, p6}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzlm;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/zzpu$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzpu$4;-><init>(Lcom/google/android/gms/internal/zzpu;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/internal/zzlm;Lcom/google/android/gms/internal/zzlm;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

.method public sendReliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzpu;->zzd(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/internal/zzpt;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v2

    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/internal/zzpt;->zza([Ljava/lang/String;[B)V

    return-void
.end method

.method public sendReliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;[B)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzpu;->zzd(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/internal/zzpt;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0, p3}, Lcom/google/android/gms/internal/zzpt;->zza([Ljava/lang/String;[B)V

    return-void
.end method

.method public sendUnreliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzpu;->zzd(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/internal/zzpt;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v2

    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/internal/zzpt;->zzb([Ljava/lang/String;[B)V

    return-void
.end method

.method public sendUnreliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;[B)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzpu;->zzd(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/internal/zzpt;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0, p3}, Lcom/google/android/gms/internal/zzpt;->zzb([Ljava/lang/String;[B)V

    return-void
.end method

.method public startAdvertising(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/AppMetadata;JLcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 12

    move-object/from16 v0, p6

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzlm;

    move-result-object v10

    new-instance v3, Lcom/google/android/gms/internal/zzpu$2;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/zzpu$2;-><init>(Lcom/google/android/gms/internal/zzpu;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/nearby/connection/AppMetadata;JLcom/google/android/gms/internal/zzlm;)V

    invoke-virtual {p1, v3}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v2

    return-object v2
.end method

.method public startDiscovery(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 7

    invoke-virtual {p1, p5}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzlm;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/zzpu$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzpu$3;-><init>(Lcom/google/android/gms/internal/zzpu;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/internal/zzlm;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object v0

    return-object v0
.end method

.method public stopAdvertising(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzpu;->zzd(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/internal/zzpt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpt;->zzAQ()V

    return-void
.end method

.method public stopAllEndpoints(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzpu;->zzd(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/internal/zzpt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpt;->zzAR()V

    return-void
.end method

.method public stopDiscovery(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzpu;->zzd(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/internal/zzpt;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzpt;->zzej(Ljava/lang/String;)V

    return-void
.end method
