.class final Lcom/hangame/hsp/HSPGameLog$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$cacheDb:Lcom/hangame/hsp/HSPGameLogCache;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPGameLog$HSPLoadGameLogsCB;

.field final synthetic val$gameNos:Ljava/util/List;

.field final synthetic val$memberNo:J

.field final synthetic val$useCache:Z


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPGameLog$HSPLoadGameLogsCB;ZLcom/hangame/hsp/HSPGameLogCache;JLjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPGameLog$1;->val$callback:Lcom/hangame/hsp/HSPGameLog$HSPLoadGameLogsCB;

    iput-boolean p2, p0, Lcom/hangame/hsp/HSPGameLog$1;->val$useCache:Z

    iput-object p3, p0, Lcom/hangame/hsp/HSPGameLog$1;->val$cacheDb:Lcom/hangame/hsp/HSPGameLogCache;

    iput-wide p4, p0, Lcom/hangame/hsp/HSPGameLog$1;->val$memberNo:J

    iput-object p6, p0, Lcom/hangame/hsp/HSPGameLog$1;->val$gameNos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPGameLog$1;->val$callback:Lcom/hangame/hsp/HSPGameLog$HSPLoadGameLogsCB;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetPlayedGameLog;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetPlayedGameLog;-><init>()V

    invoke-static {v1, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetPlayedGameLog;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetPlayedGameLog;->gameNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v4, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetPlayedGameLog;->gameLogMap:Ljava/util/HashMap;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/PlayedGameLog;

    new-instance v4, Lcom/hangame/hsp/HSPGameLog;

    invoke-direct {v4}, Lcom/hangame/hsp/HSPGameLog;-><init>()V

    if-eqz v0, :cond_0

    iget v5, v0, Lcom/hangame/hsp/xdr/hsp13/response/PlayedGameLog;->gameNo:I

    iput v5, v4, Lcom/hangame/hsp/HSPGameLog;->mGameNo:I

    iget-object v5, v0, Lcom/hangame/hsp/xdr/hsp13/response/PlayedGameLog;->firstLoginTime:Ljava/lang/String;

    invoke-static {v5}, Lcom/hangame/hsp/util/CalendarUtil;->convertString14ToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, v4, Lcom/hangame/hsp/HSPGameLog;->mFirstPlayedDate:Ljava/util/Date;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/PlayedGameLog;->lastLoginTime:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/CalendarUtil;->convertString14ToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v4, Lcom/hangame/hsp/HSPGameLog;->mLastPlayedDate:Ljava/util/Date;

    const-string v0, "HSPGameLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gameLog "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/hangame/hsp/HSPGameLog$1;->val$useCache:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetPlayedGameLog;->gameNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/HSPGameLog$1;->val$cacheDb:Lcom/hangame/hsp/HSPGameLogCache;

    iget-wide v4, p0, Lcom/hangame/hsp/HSPGameLog$1;->val$memberNo:J

    invoke-virtual {v0, v4, v5, v2}, Lcom/hangame/hsp/HSPGameLogCache;->insert(JLjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/hangame/hsp/HSPGameLog$1;->val$cacheDb:Lcom/hangame/hsp/HSPGameLogCache;

    iget-wide v4, p0, Lcom/hangame/hsp/HSPGameLog$1;->val$memberNo:J

    iget-object v1, p0, Lcom/hangame/hsp/HSPGameLog$1;->val$gameNos:Ljava/util/List;

    invoke-virtual {v0, v4, v5, v1}, Lcom/hangame/hsp/HSPGameLogCache;->select(JLjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/HSPGameLog$1;->val$callback:Lcom/hangame/hsp/HSPGameLog$HSPLoadGameLogsCB;

    invoke-interface {v0, v2, p2}, Lcom/hangame/hsp/HSPGameLog$HSPLoadGameLogsCB;->onGameLogsLoad(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/hangame/hsp/HSPGameLog$1;->val$callback:Lcom/hangame/hsp/HSPGameLog$HSPLoadGameLogsCB;

    const-string v2, "MASHUP"

    iget-object v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetPlayedGameLog;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/hangame/hsp/HSPGameLog$HSPLoadGameLogsCB;->onGameLogsLoad(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/hangame/hsp/HSPGameLog$1;->val$callback:Lcom/hangame/hsp/HSPGameLog$HSPLoadGameLogsCB;

    invoke-interface {v0, v3, p2}, Lcom/hangame/hsp/HSPGameLog$HSPLoadGameLogsCB;->onGameLogsLoad(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1
.end method
