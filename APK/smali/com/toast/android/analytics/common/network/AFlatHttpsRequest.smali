.class public Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/toast/android/analytics/common/interfaces/IRequest;


# static fields
.field private static final TAG:Ljava/lang/String; = "AFlatHttpsRequest"

.field static hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field mConnection:Ljava/net/HttpURLConnection;

.field mHttpsUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

.field mRequestData:Lcom/toast/android/analytics/model/RequestData;

.field mUrl:Ljava/lang/String;

.field mUseUrlEncoding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest$2;

    invoke-direct {v0}, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest$2;-><init>()V

    sput-object v0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Lcom/toast/android/analytics/model/RequestData;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mRequestData:Lcom/toast/android/analytics/model/RequestData;

    iput-object p2, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mUrl:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mUseUrlEncoding:Z

    return-void
.end method

.method public constructor <init>(Lcom/toast/android/analytics/model/RequestData;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mRequestData:Lcom/toast/android/analytics/model/RequestData;

    iput-object p2, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mUrl:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mUseUrlEncoding:Z

    return-void
.end method

.method protected static trustAllHosts()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest$1;

    invoke-direct {v2}, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest$1;-><init>()V

    aput-object v2, v0, v1

    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AFlatHttpsRequest"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    iput-object v1, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public request()Ljava/lang/String;
    .locals 8

    const/16 v7, 0xc8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->trustAllHosts()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mHttpsUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mHttpsUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    sget-object v2, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mHttpsUrlConnection:Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    :goto_0
    iget-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    const-string v2, "Accept"

    const-string v3, "application/json"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-boolean v3, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mUseUrlEncoding:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mRequestData:Lcom/toast/android/analytics/model/RequestData;

    invoke-virtual {v3}, Lcom/toast/android/analytics/model/RequestData;->getJsonData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/toast/android/analytics/common/utils/StringUtil;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-ne v0, v7, :cond_0

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mRequestData:Lcom/toast/android/analytics/model/RequestData;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/toast/android/analytics/common/SqlRequestQueue;->getInstance()Lcom/toast/android/analytics/common/SqlRequestQueue;

    move-result-object v0

    iget-object v2, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mRequestData:Lcom/toast/android/analytics/model/RequestData;

    invoke-virtual {v0, v2}, Lcom/toast/android/analytics/common/SqlRequestQueue;->deleteRequest(Lcom/toast/android/analytics/model/RequestData;)Z

    :cond_0
    const-string v0, "AFlatHttpsRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client request (%d)\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mRequestData:Lcom/toast/android/analytics/model/RequestData;

    invoke-virtual {v6}, Lcom/toast/android/analytics/model/RequestData;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mRequestData:Lcom/toast/android/analytics/model/RequestData;

    invoke-virtual {v3}, Lcom/toast/android/analytics/model/RequestData;->getJsonData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/toast/android/analytics/common/utils/JsonUtils;->getPrettyJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AFlatHttpsRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server response (%d) : "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mRequestData:Lcom/toast/android/analytics/model/RequestData;

    invoke-virtual {v6}, Lcom/toast/android/analytics/model/RequestData;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-eq v0, v7, :cond_5

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AFlatHttpsRequest"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mRequestData:Lcom/toast/android/analytics/model/RequestData;

    invoke-virtual {v3}, Lcom/toast/android/analytics/model/RequestData;->getJsonData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/AFlatHttpsRequest;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
