.class final Lcom/hangame/hsp/mashup/lighthouse/koush/SyncCallRequest;
.super Ljava/lang/Object;


# static fields
.field private static final syncCallRequestMap:Ljava/util/Map;


# instance fields
.field private final lock:Lcom/hangame/hsp/util/MutexLock;

.field private mResponseMessage:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/hangame/hsp/mashup/lighthouse/koush/SyncCallRequest;->syncCallRequestMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/util/MutexLock;->createLock()Lcom/hangame/hsp/util/MutexLock;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/SyncCallRequest;->lock:Lcom/hangame/hsp/util/MutexLock;

    sget-object v1, Lcom/hangame/hsp/mashup/lighthouse/koush/SyncCallRequest;->syncCallRequestMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/mashup/lighthouse/koush/SyncCallRequest;->syncCallRequestMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static setResponse(J[B)V
    .locals 4

    sget-object v1, Lcom/hangame/hsp/mashup/lighthouse/koush/SyncCallRequest;->syncCallRequestMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/mashup/lighthouse/koush/SyncCallRequest;->syncCallRequestMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/mashup/lighthouse/koush/SyncCallRequest;

    if-eqz v0, :cond_0

    invoke-direct {v0, p2}, Lcom/hangame/hsp/mashup/lighthouse/koush/SyncCallRequest;->setResponseMessage([B)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setResponseMessage([B)V
    .locals 1

    iput-object p1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/SyncCallRequest;->mResponseMessage:[B

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/SyncCallRequest;->lock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->unlock()V

    return-void
.end method


# virtual methods
.method getResponseMessage()[B
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/SyncCallRequest;->mResponseMessage:[B

    return-object v0
.end method

.method waitResponse(J)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/SyncCallRequest;->lock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0, p1, p2}, Lcom/hangame/hsp/util/MutexLock;->lock(J)V

    return-void
.end method
