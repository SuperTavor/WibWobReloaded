.class final Lcom/hangame/hsp/HSPGame$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPGame$1;->val$callback:Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 10

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPGame$1;->val$callback:Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReleasedGameClient2List;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReleasedGameClient2List;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/hangame/hsp/HSPCacheManager;->useCacheData(J)Z

    move-result v3

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/HSPGameCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPGameCache;

    move-result-object v4

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReleasedGameClient2List;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_4

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReleasedGameClient2List;->gameClientList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v6, Lcom/hangame/hsp/HSPGame;

    invoke-direct {v6}, Lcom/hangame/hsp/HSPGame;-><init>()V

    move-object v0, v1

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;->info:Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;->gameNo:I

    iput v0, v6, Lcom/hangame/hsp/HSPGame;->mGameNo:I

    move-object v0, v1

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;->info:Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;->gameId:Ljava/lang/String;

    iput-object v0, v6, Lcom/hangame/hsp/HSPGame;->mGameID:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;->info:Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;->gameName:Ljava/lang/String;

    iput-object v0, v6, Lcom/hangame/hsp/HSPGame;->mGameName:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;->info:Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;->gameIconS:Ljava/lang/String;

    iput-object v0, v6, Lcom/hangame/hsp/HSPGame;->mGameIconURL:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;->statusCode:Ljava/lang/String;

    iput-object v0, v6, Lcom/hangame/hsp/HSPGame;->mStatusCode:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;->info:Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;

    iget-wide v8, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;->adminMemberNo:J

    iput-wide v8, v6, Lcom/hangame/hsp/HSPGame;->mAdminMemberNo:J

    move-object v0, v1

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;->info:Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameInfo;->redirectionUrl:Ljava/lang/String;

    iput-object v0, v6, Lcom/hangame/hsp/HSPGame;->mRedirectionURL:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;->bundleId:Ljava/lang/String;

    iput-object v0, v6, Lcom/hangame/hsp/HSPGame;->mBundleID:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;->customUrl:Ljava/lang/String;

    iput-object v0, v6, Lcom/hangame/hsp/HSPGame;->mCustomURL:Ljava/lang/String;

    check-cast v1, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;

    iget-object v0, v1, Lcom/hangame/hsp/xdr/hsp13/response/GameClient2;->marketUrl:Ljava/lang/String;

    iput-object v0, v6, Lcom/hangame/hsp/HSPGame;->mMarketURL:Ljava/lang/String;

    iget v0, v6, Lcom/hangame/hsp/HSPGame;->mGameNo:I

    if-eqz v0, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v4, v2}, Lcom/hangame/hsp/HSPGameCache;->insert(Ljava/util/List;)Z

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/HSPGame$1;->val$callback:Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;

    invoke-interface {v0, v2, p2}, Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;->onGamesLoad(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v1, p0, Lcom/hangame/hsp/HSPGame$1;->val$callback:Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;

    const-string v2, "MASHUP"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetReleasedGameClient2List;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;->onGamesLoad(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/hangame/hsp/HSPGame$1;->val$callback:Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;

    invoke-interface {v0, v6, p2}, Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;->onGamesLoad(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1
.end method
