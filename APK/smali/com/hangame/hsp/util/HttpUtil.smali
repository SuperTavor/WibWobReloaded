.class public final Lcom/hangame/hsp/util/HttpUtil;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static queryRESTUrlWithDELETE(Ljava/lang/String;)Lcom/hangame/hsp/util/HttpUtil$HttpResult;
    .locals 2

    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/hangame/hsp/util/HttpUtil$ResponseType;->STRING:Lcom/hangame/hsp/util/HttpUtil$ResponseType;

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/HttpUtil;->queryRESTurl(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/util/HttpUtil$ResponseType;)Lcom/hangame/hsp/util/HttpUtil$HttpResult;

    move-result-object v0

    return-object v0
.end method

.method public static queryRESTUrlWithGET(Ljava/lang/String;Ljava/util/List;Lcom/hangame/hsp/util/HttpUtil$ResponseType;)Lcom/hangame/hsp/util/HttpUtil$HttpResult;
    .locals 4

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v2, "close"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v1, p2}, Lcom/hangame/hsp/util/HttpUtil;->queryRESTurl(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/util/HttpUtil$ResponseType;)Lcom/hangame/hsp/util/HttpUtil$HttpResult;

    move-result-object v0

    return-object v0
.end method

.method public static queryRESTUrlWithPOST(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/hangame/hsp/util/HttpUtil$HttpResult;
    .locals 2

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    sget-object v1, Lcom/hangame/hsp/util/HttpUtil$ResponseType;->STRING:Lcom/hangame/hsp/util/HttpUtil$ResponseType;

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/HttpUtil;->queryRESTurl(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/util/HttpUtil$ResponseType;)Lcom/hangame/hsp/util/HttpUtil$HttpResult;

    move-result-object v0

    return-object v0
.end method

.method public static queryRESTurl(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/util/HttpUtil$ResponseType;)Lcom/hangame/hsp/util/HttpUtil$HttpResult;
    .locals 6

    const/4 v1, 0x0

    const-string v0, "HttpUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryRESTurl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :try_start_0
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPConfiguration;->getTimeoutHTTP()J

    move-result-wide v4

    long-to-int v0, v4

    mul-int/lit16 v0, v0, 0x3e8

    :goto_0
    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-interface {v3, p0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    const-string v2, "HttpUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "[Status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_3

    if-eqz v2, :cond_3

    sget-object v0, Lcom/hangame/hsp/util/HttpUtil$ResponseType;->STRING:Lcom/hangame/hsp/util/HttpUtil$ResponseType;

    if-ne p1, v0, :cond_2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "gzip"

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_2
    new-instance v0, Lcom/hangame/hsp/util/HttpUtil$HttpResult;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v2, v5}, Lcom/hangame/hsp/util/HttpUtil$HttpResult;-><init>(ILjava/lang/Object;Lcom/hangame/hsp/util/HttpUtil$1;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :goto_3
    return-object v0

    :cond_0
    const/16 v0, 0x2710

    goto/16 :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/hangame/hsp/util/HttpUtil$ResponseType;->BITMAP:Lcom/hangame/hsp/util/HttpUtil$ResponseType;

    if-ne p1, v0, :cond_6

    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v0, v2}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v0}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/BitmapUtil;->resizeBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "gzip"

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_4
    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4

    :cond_5
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "HttpUtil"

    const-string v4, "There was a protocol based error"

    invoke-static {v2, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :goto_5
    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_3
    const-string v2, "HttpUtil"

    const-string v4, "There was an IO Stream related error"

    invoke-static {v2, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_5

    :catch_2
    move-exception v0

    :try_start_4
    const-string v2, "HttpUtil"

    const-string v4, "what"

    invoke-static {v2, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0

    :cond_6
    move-object v2, v1

    goto/16 :goto_2
.end method
