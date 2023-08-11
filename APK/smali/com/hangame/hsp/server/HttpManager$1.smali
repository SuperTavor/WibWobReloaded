.class final Lcom/hangame/hsp/server/HttpManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Ljava/lang/Object;

.field final synthetic val$handler:Lcom/hangame/hsp/core/HSPHttpResHandler;

.field final synthetic val$httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

.field final synthetic val$type:Lcom/hangame/hsp/util/HttpUtil$ResponseType;


# direct methods
.method constructor <init>(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/util/HttpUtil$ResponseType;Lcom/hangame/hsp/core/HSPHttpResHandler;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/server/HttpManager$1;->val$httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    iput-object p2, p0, Lcom/hangame/hsp/server/HttpManager$1;->val$type:Lcom/hangame/hsp/util/HttpUtil$ResponseType;

    iput-object p3, p0, Lcom/hangame/hsp/server/HttpManager$1;->val$handler:Lcom/hangame/hsp/core/HSPHttpResHandler;

    iput-object p4, p0, Lcom/hangame/hsp/server/HttpManager$1;->val$context:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, -0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/hangame/hsp/server/HttpManager$1;->val$httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    iget-object v3, p0, Lcom/hangame/hsp/server/HttpManager$1;->val$type:Lcom/hangame/hsp/util/HttpUtil$ResponseType;

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/HttpUtil;->queryRESTurl(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/util/HttpUtil$ResponseType;)Lcom/hangame/hsp/util/HttpUtil$HttpResult;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/hangame/hsp/util/HttpUtil$HttpResult;->getStatusCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_0

    invoke-virtual {v2}, Lcom/hangame/hsp/util/HttpUtil$HttpResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "HTTPMANAGER"

    invoke-static {v2}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    :goto_0
    const-string v3, "HttpManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request: statusCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/hangame/hsp/server/HttpManager$1;->val$handler:Lcom/hangame/hsp/core/HSPHttpResHandler;

    iget-object v4, p0, Lcom/hangame/hsp/server/HttpManager$1;->val$context:Ljava/lang/Object;

    invoke-static {v3, v4, v2, v1, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPHttpResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string v2, "HTTPMANAGER"

    const/16 v3, 0x1013

    invoke-static {v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "HTTPMANAGER"

    const/16 v3, 0x1002

    invoke-static {v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    goto :goto_0
.end method
