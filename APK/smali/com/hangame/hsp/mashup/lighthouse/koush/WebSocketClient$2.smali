.class Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$000(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$000(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$000(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/"

    :goto_1
    iget-object v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$000(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$000(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$000(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "wss"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "https"

    :goto_3
    new-instance v3, Ljava/net/URI;

    iget-object v4, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v4}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$000(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$000(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v4, "wss"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$100(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    :goto_4
    iget-object v4, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    iget-object v5, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v5}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$000(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$202(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;Ljava/net/Socket;)Ljava/net/Socket;

    new-instance v2, Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$200(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP/1.1\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Upgrade: websocket\r\n"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Connection: Upgrade\r\n"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Host: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$000(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sec-WebSocket-Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$300(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Sec-WebSocket-Version: 13\r\n"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$400(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$400(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    const-string v3, "%s: %s\r\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v1, "WebSocketClient"

    const-string v2, "WebSocket EOF!"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$800(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;

    move-result-object v0

    const-string v1, "EOF"

    invoke-interface {v0, v7, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;->onDisconnect(ILjava/lang/String;)V

    :goto_6
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$000(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1bb

    move v2, v0

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x50

    move v2, v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$000(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    const-string v0, "http"

    goto/16 :goto_3

    :cond_4
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    goto/16 :goto_4

    :cond_5
    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    new-instance v0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$HappyDataInputStream;

    iget-object v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$200(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$HappyDataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    iget-object v2, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v2, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$500(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$HappyDataInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$600(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;Ljava/lang/String;)Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_6

    new-instance v0, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_1
    move-exception v0

    const-string v1, "WebSocketClient"

    const-string v2, "Websocket SSL error!"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$800(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;

    move-result-object v0

    const-string v1, "SSL"

    invoke-interface {v0, v7, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;->onDisconnect(ILjava/lang/String;)V

    goto :goto_6

    :cond_6
    :goto_7
    :try_start_2
    iget-object v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v1, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$500(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$HappyDataInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v2, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$700(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Accept"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_7

    :cond_7
    iget-object v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$800(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;

    move-result-object v1

    invoke-interface {v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;->onConnect()V

    iget-object v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$900(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->start(Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$HappyDataInputStream;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_6

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;->this$0:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-static {v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->access$800(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;->onError(Ljava/lang/Exception;)V

    goto/16 :goto_6

    :cond_8
    move-object v1, v0

    goto/16 :goto_2
.end method
