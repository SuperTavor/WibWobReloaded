.class public Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "WebSocketClient"

.field private static sTrustManagers:[Ljavax/net/ssl/TrustManager;


# instance fields
.field private mExtraHeaders:Ljava/util/List;

.field private mHandler:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;

.field private mParser:Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;

.field private final mSendLock:Ljava/lang/Object;

.field private mSocket:Ljava/net/Socket;

.field private mThread:Ljava/lang/Thread;

.field private mURI:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$1;

    invoke-direct {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$1;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    sput-object v1, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->sTrustManagers:[Ljavax/net/ssl/TrustManager;

    sget-object v1, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->sTrustManagers:[Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mSendLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mURI:Ljava/net/URI;

    iput-object p2, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mHandler:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;

    iput-object p3, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mExtraHeaders:Ljava/util/List;

    new-instance v0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;-><init>(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)V

    iput-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mParser:Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mURI:Ljava/net/URI;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    invoke-direct {p0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$202(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$300(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->createSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mExtraHeaders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$HappyDataInputStream;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->readLine(Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$HappyDataInputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;Ljava/lang/String;)Lorg/apache/http/StatusLine;
    .locals 1

    invoke-direct {p0, p1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->parseStatusLine(Ljava/lang/String;)Lorg/apache/http/StatusLine;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 1

    invoke-direct {p0, p1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->parseHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mHandler:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mParser:Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;

    return-object v0
.end method

.method private createSecret()Ljava/lang/String;
    .locals 9

    const/16 v8, 0x10

    const/4 v1, 0x0

    new-array v2, v8, [B

    move v0, v1

    :goto_0
    if-ge v0, v8, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    const/4 v2, 0x0

    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->sTrustManagers:[Ljavax/net/ssl/TrustManager;

    invoke-virtual {v0, v2, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method private parseHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 1

    new-instance v0, Lorg/apache/http/message/BasicLineParser;

    invoke-direct {v0}, Lorg/apache/http/message/BasicLineParser;-><init>()V

    invoke-static {p1, v0}, Lorg/apache/http/message/BasicLineParser;->parseHeader(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method private parseStatusLine(Ljava/lang/String;)Lorg/apache/http/StatusLine;
    .locals 1

    new-instance v0, Lorg/apache/http/message/BasicLineParser;

    invoke-direct {v0}, Lorg/apache/http/message/BasicLineParser;-><init>()V

    invoke-static {p1, v0}, Lorg/apache/http/message/BasicLineParser;->parseStatusLine(Ljava/lang/String;Lorg/apache/http/message/LineParser;)Lorg/apache/http/StatusLine;

    move-result-object v0

    return-object v0
.end method

.method private readLine(Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$HappyDataInputStream;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, -0x1

    invoke-virtual {p1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$HappyDataInputStream;->read()I

    move-result v1

    if-ne v1, v4, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_1
    const/16 v3, 0xa

    if-eq v1, v3, :cond_3

    const/16 v3, 0xd

    if-eq v1, v3, :cond_2

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$HappyDataInputStream;->read()I

    move-result v1

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setTrustManagers([Ljavax/net/ssl/TrustManager;)V
    .locals 0

    sput-object p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->sTrustManagers:[Ljavax/net/ssl/TrustManager;

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2

    invoke-virtual {p0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$2;-><init>(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mSocket:Ljava/net/Socket;

    :cond_0
    return-void
.end method

.method public getHandler()Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mHandler:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mParser:Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->frame(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->sendFrame([B)V

    return-void
.end method

.method public send([B)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mParser:Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->frame([B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->sendFrame([B)V

    return-void
.end method

.method sendFrame([B)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mSendLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->mHandler:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;

    invoke-interface {v1, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
