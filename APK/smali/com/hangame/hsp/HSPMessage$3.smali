.class final Lcom/hangame/hsp/HSPMessage$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiHttpResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPMessage$HSPQueryNewNoticeCountCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMessage$HSPQueryNewNoticeCountCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMessage$3;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPQueryNewNoticeCountCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$3;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPQueryNewNoticeCountCB;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    instance-of v0, p4, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p4, Ljava/lang/String;

    const-string v0, "\n"

    const-string v2, ""

    invoke-virtual {p4, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/hangame/hsp/HSPMessage$3;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPQueryNewNoticeCountCB;

    invoke-interface {v2, v0, p2}, Lcom/hangame/hsp/HSPMessage$HSPQueryNewNoticeCountCB;->onNewNoticeCountReceive(ILcom/hangame/hsp/HSPResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/hangame/hsp/HSPMessage;->access$900()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$3;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPQueryNewNoticeCountCB;

    const-string v2, "NOTICESERVICE"

    invoke-static {v2}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/HSPMessage$HSPQueryNewNoticeCountCB;->onNewNoticeCountReceive(ILcom/hangame/hsp/HSPResult;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$3;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPQueryNewNoticeCountCB;

    const-string v2, "NOTICESERVICE"

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/HSPMessage$HSPQueryNewNoticeCountCB;->onNewNoticeCountReceive(ILcom/hangame/hsp/HSPResult;)V

    goto :goto_1
.end method
