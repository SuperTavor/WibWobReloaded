.class Ltv/superawesome/lib/sanetwork/request/SANetwork$1;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/sanetwork/request/SANetwork;

.field final synthetic val$body:Lorg/json/JSONObject;

.field final synthetic val$finalEndpoint:Ljava/lang/String;

.field final synthetic val$header:Lorg/json/JSONObject;

.field final synthetic val$listener:Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;

.field final synthetic val$method:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/sanetwork/request/SANetwork;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->this$0:Ltv/superawesome/lib/sanetwork/request/SANetwork;

    iput-object p2, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$finalEndpoint:Ljava/lang/String;

    iput-object p3, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$method:Ljava/lang/String;

    iput-object p4, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$header:Lorg/json/JSONObject;

    iput-object p5, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$body:Lorg/json/JSONObject;

    iput-object p6, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$listener:Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "SuperAwesome"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[false] | HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$finalEndpoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$listener:Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$listener:Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1, v3}, Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;->saDidGetResponse(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ltv/superawesome/lib/sanetwork/request/SANetworkResult;

    invoke-virtual {p0, p1}, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->onFinish(Ltv/superawesome/lib/sanetwork/request/SANetworkResult;)V

    return-void
.end method

.method public onFinish(Ltv/superawesome/lib/sanetwork/request/SANetworkResult;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Ltv/superawesome/lib/sanetwork/request/SANetworkResult;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$listener:Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;

    if-eqz v0, :cond_0

    const-string v0, "SuperAwesome"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[true] | HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ltv/superawesome/lib/sanetwork/request/SANetworkResult;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$finalEndpoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ltv/superawesome/lib/sanetwork/request/SANetworkResult;->getPayload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$listener:Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;

    invoke-virtual {p1}, Ltv/superawesome/lib/sanetwork/request/SANetworkResult;->getStatus()I

    move-result v1

    invoke-virtual {p1}, Ltv/superawesome/lib/sanetwork/request/SANetworkResult;->getPayload()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;->saDidGetResponse(ILjava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$listener:Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;

    if-eqz v0, :cond_0

    const-string v0, "SuperAwesome"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[false] | HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ltv/superawesome/lib/sanetwork/request/SANetworkResult;->getPayload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$finalEndpoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$listener:Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1, v3}, Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;->saDidGetResponse(ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public bridge synthetic taskToExecute()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->taskToExecute()Ltv/superawesome/lib/sanetwork/request/SANetworkResult;

    move-result-object v0

    return-object v0
.end method

.method public taskToExecute()Ltv/superawesome/lib/sanetwork/request/SANetworkResult;
    .locals 8

    const/16 v7, 0x190

    const/4 v6, 0x0

    const/16 v5, 0x3a98

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$finalEndpoint:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v6}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$method:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$method:Ljava/lang/String;

    const-string v3, "PUT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    :cond_1
    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$header:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$header:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$header:Lorg/json/JSONObject;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$body:Lorg/json/JSONObject;

    if-eqz v1, :cond_10

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$method:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$method:Ljava/lang/String;

    const-string v3, "PUT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_3
    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$body:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    :goto_1
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v4

    if-lt v4, v7, :cond_4

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :goto_2
    const-string v3, ""

    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_6
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move v0, v4

    :goto_4
    new-instance v1, Ltv/superawesome/lib/sanetwork/request/SANetworkResult;

    invoke-direct {v1, v0, v3}, Ltv/superawesome/lib/sanetwork/request/SANetworkResult;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_7
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$method:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$method:Ljava/lang/String;

    const-string v3, "PUT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_9
    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$header:Lorg/json/JSONObject;

    if-eqz v1, :cond_a

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$header:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$header:Lorg/json/JSONObject;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$body:Lorg/json/JSONObject;

    if-eqz v1, :cond_c

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$method:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$method:Ljava/lang/String;

    const-string v3, "PUT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    iget-object v1, p0, Ltv/superawesome/lib/sanetwork/request/SANetwork$1;->val$body:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    :cond_c
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    if-lt v4, v7, :cond_d

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :goto_6
    const-string v3, ""

    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_d
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_6

    :cond_e
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_f
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v4

    goto/16 :goto_4

    :cond_10
    move-object v1, v2

    goto/16 :goto_1
.end method
