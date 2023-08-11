.class final Lcom/hangame/hsp/mashup/HSPMashupService$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Ljava/lang/Object;

.field final synthetic val$handler:Lcom/hangame/hsp/core/HSPResHandler;

.field final synthetic val$needCoreModule:Z

.field final synthetic val$sendData:[B

.field final synthetic val$timeout:J


# direct methods
.method constructor <init>(ZLcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;[BJ)V
    .locals 1

    iput-boolean p1, p0, Lcom/hangame/hsp/mashup/HSPMashupService$2;->val$needCoreModule:Z

    iput-object p2, p0, Lcom/hangame/hsp/mashup/HSPMashupService$2;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    iput-object p3, p0, Lcom/hangame/hsp/mashup/HSPMashupService$2;->val$context:Ljava/lang/Object;

    iput-object p4, p0, Lcom/hangame/hsp/mashup/HSPMashupService$2;->val$sendData:[B

    iput-wide p5, p0, Lcom/hangame/hsp/mashup/HSPMashupService$2;->val$timeout:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->access$100()Z

    move-result v3

    if-ne v3, v0, :cond_0

    iget-boolean v3, p0, Lcom/hangame/hsp/mashup/HSPMashupService$2;->val$needCoreModule:Z

    if-ne v3, v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->access$000()Lcom/hangame/hsp/mashup/ConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/hangame/hsp/mashup/ConnectionManager;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->access$200()Lcom/hangame/hsp/HSPResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/mashup/HSPMashupService$2;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    iget-object v4, p0, Lcom/hangame/hsp/mashup/HSPMashupService$2;->val$context:Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->access$000()Lcom/hangame/hsp/mashup/ConnectionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/hangame/hsp/mashup/HSPMashupService$2;->val$sendData:[B

    iget-wide v6, p0, Lcom/hangame/hsp/mashup/HSPMashupService$2;->val$timeout:J

    invoke-interface {v3, v4, v6, v7}, Lcom/hangame/hsp/mashup/ConnectionManager;->syncCall([BJ)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_1
    move-object v1, v2

    :goto_2
    if-eqz v0, :cond_2

    const-string v0, "MASHUP"

    invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_3
    iget-object v2, p0, Lcom/hangame/hsp/mashup/HSPMashupService$2;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    iget-object v3, p0, Lcom/hangame/hsp/mashup/HSPMashupService$2;->val$context:Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "HSPMashupService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    move-object v1, v2

    goto :goto_2

    :cond_2
    const-string v0, "MASHUP"

    const/16 v2, 0x1002

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_3
.end method
