.class Lcom/hangame/hsp/mashup/HSPMashupService$HeartBeatTimerTask;
.super Ljava/util/TimerTask;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hangame/hsp/mashup/HSPMashupService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/mashup/HSPMashupService$HeartBeatTimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeartBeat2;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeartBeat2;-><init>()V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeartBeat2;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v1}, Lcom/hangame/hsp/mashup/HSPMashupService;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->getBiData()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeartBeat2;->extraDataInfo:Ljava/lang/String;

    const-string v1, "HSPMashupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HeartBeatTimerTask gameNo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeartBeat2;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    iget v3, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;->gameNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HSPMashupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HeartBeatTimerTask memberNo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeartBeat2;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    iget-wide v4, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;->memberNo:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HSPMashupService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HeartBeatTimerTask extraDataInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeartBeat2;->extraDataInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeartBeat2;->Save()[B

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->access$000()Lcom/hangame/hsp/mashup/ConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->access$000()Lcom/hangame/hsp/mashup/ConnectionManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/hangame/hsp/mashup/ConnectionManager;->asyncCall([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HSPMashupService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string v0, "HSPMashupService"

    const-string v1, "HeartBeatTimerTask DISCONNECT"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->stopHeartBeatTask()V

    invoke-static {}, Lcom/hangame/hsp/mashup/HSPMashupService;->access$000()Lcom/hangame/hsp/mashup/ConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/hangame/hsp/mashup/ConnectionManager;->disconnect()V

    goto :goto_0
.end method
