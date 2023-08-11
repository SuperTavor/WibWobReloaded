.class final Lcom/hangame/hsp/server/HttpManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static request(Lcom/hangame/hsp/util/HttpUtil$ResponseType;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Object;Lcom/hangame/hsp/core/HSPHttpResHandler;)V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/server/HttpManager$1;

    invoke-direct {v0, p1, p0, p3, p2}, Lcom/hangame/hsp/server/HttpManager$1;-><init>(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/util/HttpUtil$ResponseType;Lcom/hangame/hsp/core/HSPHttpResHandler;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static requestDelete(Ljava/lang/String;Lcom/hangame/hsp/util/HttpUtil$ResponseType;Ljava/lang/Object;Lcom/hangame/hsp/core/HSPHttpResHandler;)V
    .locals 1

    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, p2, p3}, Lcom/hangame/hsp/server/HttpManager;->request(Lcom/hangame/hsp/util/HttpUtil$ResponseType;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Object;Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    return-void
.end method

.method static requestGet(Ljava/lang/String;Lcom/hangame/hsp/util/HttpUtil$ResponseType;Ljava/lang/Object;Lcom/hangame/hsp/core/HSPHttpResHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/hangame/hsp/server/HttpManager;->requestGetWithHeader(Ljava/lang/String;Ljava/util/List;Lcom/hangame/hsp/util/HttpUtil$ResponseType;Ljava/lang/Object;Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    return-void
.end method

.method static requestGetWithHeader(Ljava/lang/String;Ljava/util/List;Lcom/hangame/hsp/util/HttpUtil$ResponseType;Ljava/lang/Object;Lcom/hangame/hsp/core/HSPHttpResHandler;)V
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
    invoke-static {p2, v1, p3, p4}, Lcom/hangame/hsp/server/HttpManager;->request(Lcom/hangame/hsp/util/HttpUtil$ResponseType;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Object;Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    return-void
.end method

.method static requestPost(Ljava/lang/String;Lcom/hangame/hsp/util/HttpUtil$ResponseType;Lorg/apache/http/HttpEntity;Ljava/lang/Object;Lcom/hangame/hsp/core/HSPHttpResHandler;)V
    .locals 1

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    invoke-static {p1, v0, p3, p4}, Lcom/hangame/hsp/server/HttpManager;->request(Lcom/hangame/hsp/util/HttpUtil$ResponseType;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Object;Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    return-void
.end method
