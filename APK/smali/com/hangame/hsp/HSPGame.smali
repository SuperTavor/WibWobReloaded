.class public final Lcom/hangame/hsp/HSPGame;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPGame"


# instance fields
.field protected mAdminMemberNo:J

.field protected mBundleID:Ljava/lang/String;

.field protected mCustomURL:Ljava/lang/String;

.field protected mGameID:Ljava/lang/String;

.field protected mGameIconURL:Ljava/lang/String;

.field protected mGameName:Ljava/lang/String;

.field protected mGameNo:I

.field protected mMarketURL:Ljava/lang/String;

.field protected mRedirectionURL:Ljava/lang/String;

.field protected mStatusCode:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCurrentViewName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getCurrentView()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static loadGames(IILcom/hangame/hsp/HSPGame$HSPLoadGamesCB;)V
    .locals 3

    const-string v0, "HSPGame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadGames(index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPGame$1;

    invoke-direct {v0, p2}, Lcom/hangame/hsp/HSPGame$1;-><init>(Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReleasedGameClient2List;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReleasedGameClient2List;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReleasedGameClient2List;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    const/4 v2, 0x2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReleasedGameClient2List;->osNo:I

    iput p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReleasedGameClient2List;->offset:I

    iput p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReleasedGameClient2List;->count:I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPConfiguration;->getMarketCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReleasedGameClient2List;->marketCode:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static loadGames(Ljava/util/List;Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;)V
    .locals 9

    const/4 v8, 0x2

    const-string v0, "HSPGame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadGames(gameNos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    move-result v0

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/HSPGameCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPGameCache;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/HSPGame$2;

    invoke-direct {v2, p1, v0, v1, p0}, Lcom/hangame/hsp/HSPGame$2;-><init>(Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;ZLcom/hangame/hsp/HSPGameCache;Ljava/util/List;)V

    if-eqz v0, :cond_4

    invoke-virtual {v1, p0}, Lcom/hangame/hsp/HSPGameCache;->select(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPGame;

    const-string v5, "HSPGame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cache DB exist gameNo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/hangame/hsp/HSPGame;->mGameNo:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/hangame/hsp/HSPGame;->mGameNo:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "HSPGame"

    const-string v2, "All DB cache!!"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    new-instance v0, Lcom/hangame/hsp/HSPGame$3;

    invoke-direct {v0, p1, v1}, Lcom/hangame/hsp/HSPGame$3;-><init>(Lcom/hangame/hsp/HSPGame$HSPLoadGamesCB;Ljava/util/List;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReleasedGameClient2ByGameNo;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReleasedGameClient2ByGameNo;-><init>()V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReleasedGameClient2ByGameNo;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iput v8, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReleasedGameClient2ByGameNo;->osNo:I

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReleasedGameClient2ByGameNo;->gameNoList:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->getMarketCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReleasedGameClient2ByGameNo;->marketCode:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReleasedGameClient2ByGameNo;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReleasedGameClient2ByGameNo;-><init>()V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReleasedGameClient2ByGameNo;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iput v8, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReleasedGameClient2ByGameNo;->osNo:I

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReleasedGameClient2ByGameNo;->gameNoList:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->getMarketCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReleasedGameClient2ByGameNo;->marketCode:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_1
.end method


# virtual methods
.method public downloadGameIcon(Lcom/hangame/hsp/HSPGame$HSPDownloadGameIconCB;)V
    .locals 2

    const-string v0, "HSPGame"

    const-string v1, "downloadGameIcon()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPGame$4;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPGame$4;-><init>(Lcom/hangame/hsp/HSPGame;Lcom/hangame/hsp/HSPGame$HSPDownloadGameIconCB;)V

    iget-object v1, p0, Lcom/hangame/hsp/HSPGame;->mGameIconURL:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/server/HSPImageService;->downloadIcon(Ljava/lang/String;Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    return-void
.end method

.method public getAdminMemberNo()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/HSPGame;->mAdminMemberNo:J

    return-wide v0
.end method

.method public getBundleID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPGame;->mBundleID:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPGame;->mCustomURL:Ljava/lang/String;

    return-object v0
.end method

.method public getGameID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPGame;->mGameID:Ljava/lang/String;

    return-object v0
.end method

.method public getGameIconURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPGame;->mGameIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPGame;->mGameName:Ljava/lang/String;

    return-object v0
.end method

.method public getGameNo()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPGame;->mGameNo:I

    return v0
.end method

.method public getMarketURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPGame;->mMarketURL:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectionURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPGame;->mRedirectionURL:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPGame;->mStatusCode:Ljava/lang/String;

    return-object v0
.end method

.method public isInstalled()Z
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/HSPGame;->mCustomURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/hangame/hsp/HSPGame;->mBundleID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/AppUtil;->isExistApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupported()Z
    .locals 2

    const-string v0, "latest"

    const-string v0, "latest"

    iget-object v1, p0, Lcom/hangame/hsp/HSPGame;->mStatusCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public launchApp(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "HSPGame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchApp(requesterURI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/hangame/hsp/HSPGame;->getCurrentViewName()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget v0, p0, Lcom/hangame/hsp/HSPGame;->mGameNo:I

    iget-object v1, p0, Lcom/hangame/hsp/HSPGame;->mCustomURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/hangame/hsp/HSPGame;->mBundleID:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/hangame/hsp/util/AppUtil;->launchApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public launchAppOrStore(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "HSPGame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchAppOrStore(requesterURI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/hangame/hsp/HSPGame;->getCurrentViewName()Ljava/lang/String;

    move-result-object v6

    :goto_0
    iget v1, p0, Lcom/hangame/hsp/HSPGame;->mGameNo:I

    iget-object v2, p0, Lcom/hangame/hsp/HSPGame;->mCustomURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/hangame/hsp/HSPGame;->mBundleID:Ljava/lang/String;

    iget-object v4, p0, Lcom/hangame/hsp/HSPGame;->mMarketURL:Ljava/lang/String;

    iget-object v5, p0, Lcom/hangame/hsp/HSPGame;->mRedirectionURL:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/hangame/hsp/util/AppUtil;->launchAppOrStore(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    move-object v6, p2

    goto :goto_0
.end method

.method public launchStore(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "HSPGame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchStore(requesterURI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/hangame/hsp/HSPGame;->getCurrentViewName()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget v0, p0, Lcom/hangame/hsp/HSPGame;->mGameNo:I

    iget-object v1, p0, Lcom/hangame/hsp/HSPGame;->mMarketURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/hangame/hsp/HSPGame;->mRedirectionURL:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/hangame/hsp/util/AppUtil;->launchStore(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSPGame [GameNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/HSPGame;->mGameNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", GameID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPGame;->mGameID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", GameName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPGame;->mGameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", GameIconURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPGame;->mGameIconURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", StatusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPGame;->mStatusCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", AdminMemberNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/HSPGame;->mAdminMemberNo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", RedirectionURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPGame;->mRedirectionURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", BundleID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPGame;->mBundleID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", CustomURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPGame;->mCustomURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", MarketURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPGame;->mMarketURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
