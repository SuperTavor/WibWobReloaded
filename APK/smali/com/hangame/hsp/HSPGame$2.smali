.class final Lcom/hangame/hsp/HSPGame$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$cacheDb:Lcom/hangame/hsp/HSPGameCache;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;

.field final synthetic val$gameNos:Ljava/util/List;

.field final synthetic val$useCache:Z


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;ZLcom/hangame/hsp/HSPGameCache;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPGame$2;->val$callback:Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;

    iput-boolean p2, p0, Lcom/hangame/hsp/HSPGame$2;->val$useCache:Z

    iput-object p3, p0, Lcom/hangame/hsp/HSPGame$2;->val$cacheDb:Lcom/hangame/hsp/HSPGameCache;

    iput-object p4, p0, Lcom/hangame/hsp/HSPGame$2;->val$gameNos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPGame$2;->val$callback:Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReleasedGameClient2ByGameNo;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReleasedGameClient2ByGameNo;-><init>()V

    invoke-static {v1, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReleasedGameClient2ByGameNo;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v0, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReleasedGameClient2ByGameNo;->gameNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v4, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReleasedGameClient2ByGameNo;->gameClientMap:Ljava/util/HashMap;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;

    new-instance v4, Lcom/hangame/hsp/HSPGame;

    invoke-direct {v4}, Lcom/hangame/hsp/HSPGame;-><init>()V

    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;->info:Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;

    iget v5, v5, Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;->gameNo:I

    iput v5, v4, Lcom/hangame/hsp/HSPGame;->mGameNo:I

    iget-object v5, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;->info:Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;

    iget-object v5, v5, Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;->gameId:Ljava/lang/String;

    iput-object v5, v4, Lcom/hangame/hsp/HSPGame;->mGameID:Ljava/lang/String;

    iget-object v5, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;->info:Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;

    iget-object v5, v5, Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;->gameName:Ljava/lang/String;

    iput-object v5, v4, Lcom/hangame/hsp/HSPGame;->mGameName:Ljava/lang/String;

    iget-object v5, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;->info:Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;

    iget-object v5, v5, Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;->gameIconS:Ljava/lang/String;

    iput-object v5, v4, Lcom/hangame/hsp/HSPGame;->mGameIconURL:Ljava/lang/String;

    iget-object v5, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;->statusCode:Ljava/lang/String;

    iput-object v5, v4, Lcom/hangame/hsp/HSPGame;->mStatusCode:Ljava/lang/String;

    iget-object v5, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;->info:Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;

    iget-wide v6, v5, Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;->adminMemberNo:J

    iput-wide v6, v4, Lcom/hangame/hsp/HSPGame;->mAdminMemberNo:J

    iget-object v5, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;->info:Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;

    iget-object v5, v5, Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;->redirectionUrl:Ljava/lang/String;

    iput-object v5, v4, Lcom/hangame/hsp/HSPGame;->mRedirectionURL:Ljava/lang/String;

    iget-object v5, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;->bundleId:Ljava/lang/String;

    iput-object v5, v4, Lcom/hangame/hsp/HSPGame;->mBundleID:Ljava/lang/String;

    iget-object v5, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;->customUrl:Ljava/lang/String;

    iput-object v5, v4, Lcom/hangame/hsp/HSPGame;->mCustomURL:Ljava/lang/String;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;->marketUrl:Ljava/lang/String;

    iput-object v0, v4, Lcom/hangame/hsp/HSPGame;->mMarketURL:Ljava/lang/String;

    iget v0, v4, Lcom/hangame/hsp/HSPGame;->mGameNo:I

    if-eqz v0, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/hangame/hsp/HSPGame$2;->val$useCache:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReleasedGameClient2ByGameNo;->gameNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/HSPGame$2;->val$cacheDb:Lcom/hangame/hsp/HSPGameCache;

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/HSPGameCache;->insert(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/hangame/hsp/HSPGame$2;->val$cacheDb:Lcom/hangame/hsp/HSPGameCache;

    iget-object v1, p0, Lcom/hangame/hsp/HSPGame$2;->val$gameNos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPGameCache;->select(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/HSPGame$2;->val$callback:Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;

    invoke-interface {v0, v2, p2}, Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;->onGamesLoad(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/hangame/hsp/HSPGame$2;->val$callback:Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;

    const-string v2, "MASHUP"

    iget-object v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReleasedGameClient2ByGameNo;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;->onGamesLoad(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/hangame/hsp/HSPGame$2;->val$callback:Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;

    invoke-interface {v0, v3, p2}, Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;->onGamesLoad(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1
.end method
