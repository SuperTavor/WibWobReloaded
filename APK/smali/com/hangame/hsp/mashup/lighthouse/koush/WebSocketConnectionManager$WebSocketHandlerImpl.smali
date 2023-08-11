.class Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager$WebSocketHandlerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;


# instance fields
.field private final connectLock:Lcom/hangame/hsp/util/MutexLock;

.field final synthetic this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;Lcom/hangame/hsp/util/MutexLock;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager$WebSocketHandlerImpl;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager$WebSocketHandlerImpl;->connectLock:Lcom/hangame/hsp/util/MutexLock;

    return-void
.end method


# virtual methods
.method public onConnect()V
    .locals 3

    const-string v0, "WebSocketConnectionManager"

    const-string v1, "onConnect"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager$WebSocketHandlerImpl;->connectLock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WebSocketConnectionManager"

    const-string v2, "onConnect"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDisconnect(ILjava/lang/String;)V
    .locals 3

    const-string v0, "WebSocketConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager$WebSocketHandlerImpl;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->access$102(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager$WebSocketHandlerImpl;->connectLock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WebSocketConnectionManager"

    const-string v2, "onDisconnect"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "WebSocketConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager$WebSocketHandlerImpl;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->access$102(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager$WebSocketHandlerImpl;->connectLock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WebSocketConnectionManager"

    const-string v2, "onDisconnect"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 8

    const-string v0, "WebSocketConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p1}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/simple/JSONObject;

    const-string v2, "reqUri"

    invoke-virtual {v1, v2}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "trId"

    invoke-virtual {v1, v3}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    const-string v3, "WebSocketConnectionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onError(type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",reqUri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ",trId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ",status="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONObject;

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager$WebSocketHandlerImpl;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;

    invoke-static {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;->access$000(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketConnectionManager;)J

    move-result-wide v2

    const/4 v0, 0x0

    check-cast v0, [B

    invoke-static {v2, v3, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/SyncCallRequest;->setResponse(J[B)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    check-cast v0, [B

    invoke-static {v4, v5, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/SyncCallRequest;->setResponse(J[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WebSocketConnectionManager"

    const-string v2, "onTextMessage"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onMessage([B)V
    .locals 6

    const/4 v3, 0x4

    const-string v0, "WebSocketConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    array-length v0, p1

    if-ne v0, v3, :cond_0

    const-string v0, "WebSocketConnectionManager"

    const-string v1, "Invailed Response"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hangame/hsp/util/ByteUtil;->getInt([BI)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/hangame/hsp/util/ByteUtil;->getLong([BI)J

    move-result-wide v2

    const-string v1, "WebSocketConnectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceived: transactionId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p1}, Lcom/hangame/hsp/mashup/HSPMashupService;->handleResponseHooker(I[B)Z

    invoke-static {v2, v3, p1}, Lcom/hangame/hsp/mashup/lighthouse/koush/SyncCallRequest;->setResponse(J[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WebSocketConnectionManager"

    const-string v2, "onBinaryMessage"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
