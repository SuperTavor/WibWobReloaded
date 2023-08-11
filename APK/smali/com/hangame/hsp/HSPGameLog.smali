.class public final Lcom/hangame/hsp/HSPGameLog;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPGameLog"


# instance fields
.field protected mFirstPlayedDate:Ljava/util/Date;

.field protected mGameNo:I

.field protected mLastPlayedDate:Ljava/util/Date;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadGameLogs(Ljava/util/List;JLcom/hangame/hsp/HSPGameLog$HSPLoadGameLogsCB;)V
    .locals 7

    const-string v0, "HSPGameLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadGameLogs(gameNos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",memberNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPCacheManager;->useCacheData(J)Z

    move-result v2

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPGameLogCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPGameLogCache;

    move-result-object v3

    new-instance v0, Lcom/hangame/hsp/HSPGameLog$1;

    move-object v1, p3

    move-wide v4, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/hangame/hsp/HSPGameLog$1;-><init>(Lcom/hangame/hsp/HSPGameLog$HSPLoadGameLogsCB;ZLcom/hangame/hsp/HSPGameLogCache;JLjava/util/List;)V

    if-eqz v2, :cond_2

    invoke-virtual {v3, p1, p2, p0}, Lcom/hangame/hsp/HSPGameLogCache;->select(JLjava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "HSPGameLog"

    const-string v2, "All DB cache!!"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPGameLog$2;

    invoke-direct {v0, p3, v1}, Lcom/hangame/hsp/HSPGameLog$2;-><init>(Lcom/hangame/hsp/HSPGameLog$HSPLoadGameLogsCB;Ljava/util/List;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPlayedGameLog;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPlayedGameLog;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPlayedGameLog;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iput-wide p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPlayedGameLog;->memberNo:J

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPlayedGameLog;->gameNoList:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPlayedGameLog;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPlayedGameLog;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPlayedGameLog;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iput-wide p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPlayedGameLog;->memberNo:J

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetPlayedGameLog;->gameNoList:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method


# virtual methods
.method public getFirstPlayedDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPGameLog;->mFirstPlayedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getGameNo()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPGameLog;->mGameNo:I

    return v0
.end method

.method public getLastPlayedDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPGameLog;->mLastPlayedDate:Ljava/util/Date;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSPGameLog [GameNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/HSPGameLog;->mGameNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", FirstPlayedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPGameLog;->mFirstPlayedDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", LastPlayedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPGameLog;->mLastPlayedDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
