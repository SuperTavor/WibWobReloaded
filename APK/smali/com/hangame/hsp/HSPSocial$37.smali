.class final Lcom/hangame/hsp/HSPSocial$37;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$handler:Lcom/hangame/hsp/core/HSPHttpResHandler;

.field final synthetic val$request:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method constructor <init>(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/core/HSPHttpResHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPSocial$37;->val$request:Lorg/apache/http/client/methods/HttpRequestBase;

    iput-object p2, p0, Lcom/hangame/hsp/HSPSocial$37;->val$handler:Lcom/hangame/hsp/core/HSPHttpResHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/hangame/hsp/HSPSocial$37;->val$request:Lorg/apache/http/client/methods/HttpRequestBase;

    sget-object v3, Lcom/hangame/hsp/util/HttpUtil$ResponseType;->STRING:Lcom/hangame/hsp/util/HttpUtil$ResponseType;

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/HttpUtil;->queryRESTurl(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/util/HttpUtil$ResponseType;)Lcom/hangame/hsp/util/HttpUtil$HttpResult;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/hangame/hsp/util/HttpUtil$HttpResult;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :try_start_1
    invoke-virtual {v3}, Lcom/hangame/hsp/util/HttpUtil$HttpResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    const-string v3, "SNS"

    invoke-static {v3}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :goto_0
    iget-object v4, p0, Lcom/hangame/hsp/HSPSocial$37;->val$handler:Lcom/hangame/hsp/core/HSPHttpResHandler;

    invoke-static {v4, v1, v3, v2, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPHttpResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V

    return-void

    :cond_0
    :try_start_2
    const-string v3, "SNS"

    invoke-static {v3, v2, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_0

    :cond_1
    :try_start_3
    const-string v2, "SNS"

    const/16 v3, 0x1001

    const-string v4, "Sns API requestion is Fail!!"

    invoke-static {v2, v3, v4}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    move-object v3, v2

    move v2, v0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v6, v2

    move v2, v0

    move-object v0, v6

    :goto_1
    const-string v3, "HSPSocial"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SNS"

    const v4, 0xf000

    const-string v5, "Sns API exception occurred "

    invoke-static {v3, v4, v5}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v3

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
