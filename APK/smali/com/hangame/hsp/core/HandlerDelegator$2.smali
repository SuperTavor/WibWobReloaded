.class final Lcom/hangame/hsp/core/HandlerDelegator$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Ljava/lang/Object;

.field final synthetic val$handler:Lcom/hangame/hsp/core/HSPHttpResHandler;

.field final synthetic val$param:Ljava/lang/Object;

.field final synthetic val$result:Lcom/hangame/hsp/HSPResult;

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/hangame/hsp/core/HSPHttpResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/core/HandlerDelegator$2;->val$handler:Lcom/hangame/hsp/core/HSPHttpResHandler;

    iput-object p2, p0, Lcom/hangame/hsp/core/HandlerDelegator$2;->val$context:Ljava/lang/Object;

    iput-object p3, p0, Lcom/hangame/hsp/core/HandlerDelegator$2;->val$result:Lcom/hangame/hsp/HSPResult;

    iput p4, p0, Lcom/hangame/hsp/core/HandlerDelegator$2;->val$statusCode:I

    iput-object p5, p0, Lcom/hangame/hsp/core/HandlerDelegator$2;->val$param:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/core/HandlerDelegator$2;->val$handler:Lcom/hangame/hsp/core/HSPHttpResHandler;

    iget-object v1, p0, Lcom/hangame/hsp/core/HandlerDelegator$2;->val$context:Ljava/lang/Object;

    iget-object v2, p0, Lcom/hangame/hsp/core/HandlerDelegator$2;->val$result:Lcom/hangame/hsp/HSPResult;

    iget v3, p0, Lcom/hangame/hsp/core/HandlerDelegator$2;->val$statusCode:I

    iget-object v4, p0, Lcom/hangame/hsp/core/HandlerDelegator$2;->val$param:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/hangame/hsp/core/HSPHttpResHandler;->onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HandlerDelegator"

    const-string v2, "OutOfMemoryError"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "HandlerDelegator"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
