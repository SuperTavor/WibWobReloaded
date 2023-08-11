.class public final Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/mashup/ConnectionManager;


# static fields
.field private static final INDEX_ANS_TRANSACTION_ID:I = 0x4

.field private static final INDEX_REQ_TRANSACTION_ID:I = 0x10

.field private static final TAG:Ljava/lang/String; = "WebSocketConnectionManager"


# instance fields
.field private currentTransactionId:J

.field private final lock:Ljava/lang/Object;

.field private final mLightHouseUrl:Ljava/lang/String;

.field private webSocket:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->lock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->currentTransactionId:J

    const-string v0, "WebSocketConnectionManager"

    const-string v1, "WebSocketConnectionManager"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLightHouseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "WebSocketConnectionManager"

    const-string v1, "No LightHouse Server URL"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No LightHouse Server URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, "WebSocketConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->mLightHouseUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->lock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->currentTransactionId:J

    const-string v0, "WebSocketConnectionManager"

    const-string v1, "WebSocketConnectionManager"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WebSocketConnectionManager"

    const-string v1, "No LightHouse Server URL"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No LightHouse Server URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "WebSocketConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectionManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->mLightHouseUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->currentTransactionId:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->webSocket:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    return-object p1
.end method

.method private connect(J)V
    .locals 7

    iget-object v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "WebSocketConnectionManager"

    const-string v2, "connect"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WebSocketConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try connect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->mLightHouseUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/util/MutexLock;->createLock()Lcom/hangame/hsp/util/MutexLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    new-instance v0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    iget-object v3, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->mLightHouseUrl:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    new-instance v4, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager$WebSocketHandlerImpl;

    invoke-direct {v4, p0, v2}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager$WebSocketHandlerImpl;-><init>(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;Lcom/hangame/hsp/util/MutexLock;)V

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;-><init>(Ljava/net/URI;Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;Ljava/util/List;)V

    iput-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->webSocket:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->webSocket:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-virtual {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v2, p1, p2}, Lcom/hangame/hsp/util/MutexLock;->lock(J)V

    const-string v0, "WebSocketConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->webSocket:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v3, "WebSocketConnectionManager"

    const-string v4, "connect failed"

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public asyncCall([B)V
    .locals 4

    iget-object v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->webSocket:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "WebSocketConnectionManager"

    const-string v3, "asyncCall is failed"

    invoke-static {v2, v3, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public disconnect()V
    .locals 4

    iget-object v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "WebSocketConnectionManager"

    const-string v2, "disconnect"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->webSocket:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-virtual {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->webSocket:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "WebSocketConnectionManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->webSocket:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->webSocket:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public getCurTransactionId()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->currentTransactionId:J

    return-wide v0
.end method

.method public isConnected()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->webSocket:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->webSocket:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-virtual {v2}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->isConnected()Z

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public syncCall([BJ)[B
    .locals 8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v0, "WebSocketConnectionManager"

    const-string v3, "syncCall"

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "LH"

    invoke-static {v0}, Lcom/hangame/hsp/debug/ProfilingManager;->startTimeMeasure(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->connect(J)V

    const-string v0, "LH"

    invoke-static {v0}, Lcom/hangame/hsp/debug/ProfilingManager;->endTimeMeasure(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/hangame/hsp/util/ByteUtil;->getLong([BI)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->currentTransactionId:J

    const-string v0, "WebSocketConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request packet transaction id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WebSocketConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request packet length = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v6, p1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/mashup/lighthouse/koush/SyncCallRequest;

    invoke-direct {v0, v4, v5}, Lcom/hangame/hsp/mashup/lighthouse/koush/SyncCallRequest;-><init>(J)V

    iget-object v3, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->webSocket:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-virtual {v3, p1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->send([B)V

    invoke-virtual {v0, p2, p3}, Lcom/hangame/hsp/mashup/lighthouse/koush/SyncCallRequest;->waitResponse(J)V

    invoke-virtual {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/SyncCallRequest;->getResponseMessage()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "WebSocketConnectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response packet length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    return-object v0

    :cond_0
    :try_start_3
    const-string v3, "WebSocketConnectionManager"

    const-string v4, "Timeout is occured."

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v3, "WebSocketConnectionManager"

    const-string v4, "syncCall is failed"

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->disconnect()V

    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    :cond_1
    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
