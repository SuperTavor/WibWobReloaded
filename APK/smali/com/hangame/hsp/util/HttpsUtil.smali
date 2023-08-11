.class public final Lcom/hangame/hsp/util/HttpsUtil;
.super Ljava/lang/Object;


# static fields
.field private static final CONNECTION_TIMEOUT_MILLISEC:I = 0x4e20

.field private static final SOCKET_TIMEOUT_MILLISEC:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "HttpsUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const/16 v4, 0x4e20

    sget-object v1, Lcom/hangame/hsp/util/HttpsUtil$Method;->GET:Lcom/hangame/hsp/util/HttpsUtil$Method;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, v2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/hangame/hsp/util/HttpsUtil;->requestHttpClient(Ljava/lang/String;Lcom/hangame/hsp/util/HttpsUtil$Method;Ljava/util/List;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static execute(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    sget-object v1, Lcom/hangame/hsp/util/HttpsUtil$Method;->GET:Lcom/hangame/hsp/util/HttpsUtil$Method;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, v2

    move v4, p1

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/hangame/hsp/util/HttpsUtil;->requestHttpClient(Ljava/lang/String;Lcom/hangame/hsp/util/HttpsUtil$Method;Ljava/util/List;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static execute(Ljava/lang/String;Lcom/hangame/hsp/util/HttpsUtil$Method;Ljava/util/List;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 7

    if-gez p4, :cond_0

    const/16 v4, 0x4e20

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/hangame/hsp/util/HttpsUtil;->requestHttpClient(Ljava/lang/String;Lcom/hangame/hsp/util/HttpsUtil$Method;Ljava/util/List;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v4, p4

    goto :goto_0
.end method

.method public static execute(Ljava/lang/String;Lcom/hangame/hsp/util/HttpsUtil$Method;Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    const/16 v4, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/hangame/hsp/util/HttpsUtil;->requestHttpClient(Ljava/lang/String;Lcom/hangame/hsp/util/HttpsUtil$Method;Ljava/util/List;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static execute(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const/16 v4, 0x4e20

    sget-object v1, Lcom/hangame/hsp/util/HttpsUtil$Method;->GET:Lcom/hangame/hsp/util/HttpsUtil$Method;

    move-object v0, p0

    move-object v3, v2

    move v5, v4

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/hangame/hsp/util/HttpsUtil;->requestHttpClient(Ljava/lang/String;Lcom/hangame/hsp/util/HttpsUtil$Method;Ljava/util/List;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static execute(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    invoke-static {p0, p1}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/HttpsUtil;->execute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/SimpleJsonParser;->json2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultHttpClient(II)Lorg/apache/http/client/HttpClient;
    .locals 1

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v0, p0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    return-object v0
.end method

.method private static getHttpMethod(Ljava/lang/String;Lcom/hangame/hsp/util/HttpsUtil$Method;Ljava/util/List;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/hangame/hsp/util/HttpsUtil$1;->$SwitchMap$com$hangame$hsp$util$HttpsUtil$Method:[I

    invoke-virtual {p1}, Lcom/hangame/hsp/util/HttpsUtil$Method;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v1

    :pswitch_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    move-object v0, v1

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, p2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_1
    if-eqz p3, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    new-instance v2, Lorg/apache/http/entity/StringEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, p3, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    move-object v0, v1

    check-cast v0, Lorg/apache/http/client/methods/HttpPut;

    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, p2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_2
    if-eqz p3, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/apache/http/client/methods/HttpPut;

    new-instance v2, Lorg/apache/http/entity/StringEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, p3, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getSslHttpClient(Ljava/lang/String;II)Lorg/apache/http/client/HttpClient;
    .locals 5

    const/4 v3, 0x0

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, p2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v2, Lcom/hangame/hsp/util/HttpsUtil$EasySSLSocketFactory;

    invoke-direct {v2, v1, v3}, Lcom/hangame/hsp/util/HttpsUtil$EasySSLSocketFactory;-><init>(Ljava/security/KeyStore;Lcom/hangame/hsp/util/HttpsUtil$1;)V

    invoke-static {p0}, Lcom/hangame/hsp/util/HttpsUtil;->isRealHost(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HttpsUtil"

    const-string v3, "Real Server : Set STRICT_HOSTNAME_VERIFIER"

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    :goto_0
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v1, v3, v2, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    invoke-virtual {v2, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v2

    :cond_0
    const-string v1, "HttpsUtil"

    const-string v3, "Test Server : Set ALLOW_ALL_HOSTNAME_VERIFIER"

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    goto :goto_0
.end method

.method private static isRealHost(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dev-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "alpha-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "beta-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static requestHttpClient(Ljava/lang/String;Lcom/hangame/hsp/util/HttpsUtil$Method;Ljava/util/List;Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p6, :cond_2

    :try_start_0
    invoke-static {p0, p4, p5}, Lcom/hangame/hsp/util/HttpsUtil;->getSslHttpClient(Ljava/lang/String;II)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    :goto_0
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Lcom/hangame/hsp/util/HttpsUtil;->getHttpMethod(Ljava/lang/String;Lcom/hangame/hsp/util/HttpsUtil$Method;Ljava/util/List;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const-string v5, "HttpsUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Status:["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    invoke-static {v1}, Lcom/hangame/hsp/util/StringUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "HttpsUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Result of convertion: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    :try_start_4
    invoke-static {p4, p5}, Lcom/hangame/hsp/util/HttpsUtil;->getDefaultHttpClient(II)Lorg/apache/http/client/HttpClient;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "HttpsUtil"

    const-string v3, "Fail to close the objects"

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    :try_start_5
    new-instance v1, Lorg/apache/http/HttpException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_2
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_5
    :goto_3
    throw v0

    :cond_6
    if-eqz v0, :cond_7

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "HttpsUtil"

    const-string v3, "Fail to close the objects"

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v2, "HttpsUtil"

    const-string v3, "Fail to close the objects"

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2
.end method
