.class public final Lcom/hangame/hsp/HSPRanking;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPRanking"


# instance fields
.field protected mFactor:I

.field protected mGameNo:I

.field protected mName:Ljava/lang/String;

.field protected mPeriods:Ljava/util/List;

.field protected mReservedMap:Ljava/util/Map;

.field protected mUnit:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/HSPRanking;->mPeriods:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/HSPRanking;->mReservedMap:Ljava/util/Map;

    return-void
.end method

.method static convertRankingInfoList2HSPRankingList(Ljava/util/List;I)Ljava/util/List;
    .locals 7

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    if-nez p0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;

    iget v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingFactor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hangame/hsp/HSPRanking;

    if-nez v1, :cond_1

    new-instance v1, Lcom/hangame/hsp/HSPRanking;

    invoke-direct {v1}, Lcom/hangame/hsp/HSPRanking;-><init>()V

    iget v4, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingFactor:I

    iput v4, v1, Lcom/hangame/hsp/HSPRanking;->mFactor:I

    iget-object v4, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingName:Ljava/lang/String;

    iput-object v4, v1, Lcom/hangame/hsp/HSPRanking;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->unitTxt:Ljava/lang/String;

    iput-object v4, v1, Lcom/hangame/hsp/HSPRanking;->mUnit:Ljava/lang/String;

    iput p1, v1, Lcom/hangame/hsp/HSPRanking;->mGameNo:I

    iget-byte v4, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingPeriod:B

    invoke-static {v4}, Lcom/hangame/hsp/HSPRanking;->getRankingPeriod(I)Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    move-result-object v4

    iget-object v5, v1, Lcom/hangame/hsp/HSPRanking;->mPeriods:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v1, Lcom/hangame/hsp/HSPRanking;->mReservedMap:Ljava/util/Map;

    iget-object v6, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->reserved:Ljava/lang/String;

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingFactor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-byte v4, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->rankingPeriod:B

    invoke-static {v4}, Lcom/hangame/hsp/HSPRanking;->getRankingPeriod(I)Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    move-result-object v4

    iget-object v5, v1, Lcom/hangame/hsp/HSPRanking;->mPeriods:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/hangame/hsp/HSPRanking;->mReservedMap:Ljava/util/Map;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;->reserved:Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPRanking;

    new-instance v3, Lcom/hangame/hsp/HSPRanking$11;

    invoke-direct {v3}, Lcom/hangame/hsp/HSPRanking$11;-><init>()V

    iget-object v0, v0, Lcom/hangame/hsp/HSPRanking;->mPeriods:Ljava/util/List;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto/16 :goto_0
.end method

.method static getRankingPeriod(I)Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->HSP_RANKINGPERIOD_TOTAL:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    invoke-static {v0}, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->access$000(Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)B

    move-result v0

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->HSP_RANKINGPERIOD_TOTAL:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->HSP_RANKINGPERIOD_MONTHLY:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    invoke-static {v0}, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->access$000(Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)B

    move-result v0

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->HSP_RANKINGPERIOD_MONTHLY:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->HSP_RANKINGPERIOD_WEEKLY:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    invoke-static {v0}, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->access$000(Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)B

    move-result v0

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->HSP_RANKINGPERIOD_WEEKLY:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->HSP_RANKINGPERIOD_DAILY:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    invoke-static {v0}, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->access$000(Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)B

    move-result v0

    if-ne p0, v0, :cond_3

    sget-object v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->HSP_RANKINGPERIOD_DAILY:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->HSP_RANKINGPERIOD_DAILY:Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    goto :goto_0
.end method

.method private getResetTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    const/4 v1, 0x0

    const-string v0, "resetTime"

    const-string v0, "HSPRanking"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResetTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/json/simple/JSONObject;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/json/simple/JSONObject;

    const-string v2, "resetTime"

    invoke-virtual {v0, v2}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/hangame/hsp/util/CalendarUtil;->convertString14ToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static loadRanking(IILcom/hangame/hsp/HSPRanking$HSPLoadRankingCB;)V
    .locals 6

    const-string v0, "HSPRanking"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadRanking(gameNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",factor="

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

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPCacheManager;->useCacheData(J)Z

    move-result v4

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPRankingInfoCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPRankingInfoCache;

    move-result-object v5

    new-instance v0, Lcom/hangame/hsp/HSPRanking$3;

    move-object v1, p2

    move v2, p1

    move v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/hangame/hsp/HSPRanking$3;-><init>(Lcom/hangame/hsp/HSPRanking$HSPLoadRankingCB;IIZLcom/hangame/hsp/HSPRankingInfoCache;)V

    if-eqz v4, :cond_2

    invoke-virtual {v5, p0, p1}, Lcom/hangame/hsp/HSPRankingInfoCache;->select(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/hangame/hsp/HSPRanking;->convertRankingInfoList2HSPRankingList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPRanking$4;

    invoke-direct {v0, p2, v1}, Lcom/hangame/hsp/HSPRanking$4;-><init>(Lcom/hangame/hsp/HSPRanking$HSPLoadRankingCB;Ljava/util/List;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingInfoList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingInfoList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingInfoList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iput p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingInfoList;->gameNo:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingInfoList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingInfoList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingInfoList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iput p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingInfoList;->gameNo:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public static loadRankings(ILcom/hangame/hsp/HSPRanking$HSPLoadRankingsCB;)V
    .locals 3

    const-string v0, "HSPRanking"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadRankings(gameNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-static {v1}, Lcom/hangame/hsp/HSPRankingInfoCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPRankingInfoCache;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/HSPRanking$1;

    invoke-direct {v2, p1, v0, v1, p0}, Lcom/hangame/hsp/HSPRanking$1;-><init>(Lcom/hangame/hsp/HSPRanking$HSPLoadRankingsCB;ZLcom/hangame/hsp/HSPRankingInfoCache;I)V

    if-eqz v0, :cond_2

    invoke-virtual {v1, p0}, Lcom/hangame/hsp/HSPRankingInfoCache;->select(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p0}, Lcom/hangame/hsp/HSPRanking;->convertRankingInfoList2HSPRankingList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, p0}, Lcom/hangame/hsp/HSPRankingInfoCache;->selectRepRanking(I)Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;

    move-result-object v1

    if-eqz p1, :cond_0

    new-instance v2, Lcom/hangame/hsp/HSPRanking$2;

    invoke-direct {v2, v1, p1, v0}, Lcom/hangame/hsp/HSPRanking$2;-><init>(Lcom/hangame/hsp/xdr/hsp13/response/RankingInfo;Lcom/hangame/hsp/HSPRanking$HSPLoadRankingsCB;Ljava/util/List;)V

    invoke-static {v2}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingInfoList;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingInfoList;-><init>()V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingInfoList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iput p0, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingInfoList;->gameNo:I

    invoke-static {v0, v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingInfoList;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingInfoList;-><init>()V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingInfoList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iput p0, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingInfoList;->gameNo:I

    invoke-static {v0, v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public static queryScores(JILjava/util/List;Lcom/hangame/hsp/HSPRanking$HSPQueryScoresCB;)V
    .locals 6

    const-string v0, "HSPRanking"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryScores(memberNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gameNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rankingKeys="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/HSPRanking$5;

    invoke-direct {v1, p4}, Lcom/hangame/hsp/HSPRanking$5;-><init>(Lcom/hangame/hsp/HSPRanking$HSPQueryScoresCB;)V

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByMember;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByMember;-><init>()V

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByMember;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByMember;->requesterMemberNo:J

    iput-wide p0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByMember;->memberNo:J

    iput p2, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByMember;->gameNo:I

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPRanking$HSPRankingKey;

    new-instance v4, Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;

    invoke-direct {v4}, Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;-><init>()V

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPRanking$HSPRankingKey;->getFactor()I

    move-result v5

    iput v5, v4, Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;->rankingFactor:I

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPRanking$HSPRankingKey;->getPeriod()Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->access$000(Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)B

    move-result v0

    iput-byte v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;->rankingPeriod:B

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByMember;->rankingKeyList:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v2, v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method private queryScoresAroundMemberNo(JLcom/hangame/hsp/HSPRanking$HSPRankingPeriod;ZIILcom/hangame/hsp/HSPRanking$HSPQueryScoresAroundMemberNoCB;)V
    .locals 5

    const-string v0, "HSPRanking"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryScoresAroundMemberNo(memberNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",period="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->access$000(Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",upCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",downCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPRanking$9;

    invoke-direct {v0, p0, p7}, Lcom/hangame/hsp/HSPRanking$9;-><init>(Lcom/hangame/hsp/HSPRanking;Lcom/hangame/hsp/HSPRanking$HSPQueryScoresAroundMemberNoCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;->requesterMemberNo:J

    iput-wide p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;->memberNo:J

    iget v2, p0, Lcom/hangame/hsp/HSPRanking;->mGameNo:I

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;->gameNo:I

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;->rankingKey:Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;

    iget v3, p0, Lcom/hangame/hsp/HSPRanking;->mFactor:I

    iput v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;->rankingFactor:I

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;->rankingKey:Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;

    invoke-static {p3}, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->access$000(Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)B

    move-result v3

    iput-byte v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;->rankingPeriod:B

    iput-boolean p4, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;->past:Z

    iput p5, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;->up:I

    iput p6, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;->down:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method private queryScoresByScope(Lcom/hangame/hsp/HSPRanking$HSPRankingScope;Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;ZIILcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;)V
    .locals 6

    const/4 v4, 0x0

    const-string v0, "HSPRanking"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryScoresByScope(scope="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",period="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->access$000(Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/HSPRanking$HSPRankingScope;->HSP_RANKINGSCOPE_ALL:Lcom/hangame/hsp/HSPRanking$HSPRankingScope;

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;

    invoke-direct {v0, p0, p6}, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;-><init>(Lcom/hangame/hsp/HSPRanking;Lcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;->requesterMemberNo:J

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;->memberNo:J

    iget v2, p0, Lcom/hangame/hsp/HSPRanking;->mGameNo:I

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;->gameNo:I

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;->rankingKey:Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;

    iget v3, p0, Lcom/hangame/hsp/HSPRanking;->mFactor:I

    iput v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;->rankingFactor:I

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;->rankingKey:Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;

    invoke-static {p2}, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->access$000(Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)B

    move-result v3

    iput-byte v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;->rankingPeriod:B

    iput-boolean p3, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;->past:Z

    iput v4, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;->up:I

    iput v4, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListNearMember2;->down:I

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByRankingKey2;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByRankingKey2;-><init>()V

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByRankingKey2;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v3}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByRankingKey2;->requesterMemberNo:J

    iget v3, p0, Lcom/hangame/hsp/HSPRanking;->mGameNo:I

    iput v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByRankingKey2;->gameNo:I

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByRankingKey2;->rankingKey:Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;

    iget v4, p0, Lcom/hangame/hsp/HSPRanking;->mFactor:I

    iput v4, v3, Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;->rankingFactor:I

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByRankingKey2;->rankingKey:Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;

    invoke-static {p2}, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->access$000(Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)B

    move-result v4

    iput-byte v4, v3, Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;->rankingPeriod:B

    iput-boolean p3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByRankingKey2;->past:Z

    iput p4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByRankingKey2;->offset:I

    iput p5, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByRankingKey2;->count:I

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(Ljava/lang/Object;LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(Ljava/lang/Object;LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/hangame/hsp/HSPRanking$HSPRankingScope;->HSP_RANKINGSCOPE_FRIEND:Lcom/hangame/hsp/HSPRanking$HSPRankingScope;

    if-ne p1, v0, :cond_2

    new-instance v0, Lcom/hangame/hsp/HSPRanking$7;

    invoke-direct {v0, p0, p6}, Lcom/hangame/hsp/HSPRanking$7;-><init>(Lcom/hangame/hsp/HSPRanking;Lcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetFriendRankingListByRankingKey2;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetFriendRankingListByRankingKey2;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetFriendRankingListByRankingKey2;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetFriendRankingListByRankingKey2;->memberNo:J

    iget v2, p0, Lcom/hangame/hsp/HSPRanking;->mGameNo:I

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetFriendRankingListByRankingKey2;->gameNo:I

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetFriendRankingListByRankingKey2;->rankingKey:Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;

    iget v3, p0, Lcom/hangame/hsp/HSPRanking;->mFactor:I

    iput v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;->rankingFactor:I

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetFriendRankingListByRankingKey2;->rankingKey:Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;

    invoke-static {p2}, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->access$000(Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)B

    move-result v3

    iput-byte v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;->rankingPeriod:B

    iput-boolean p3, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetFriendRankingListByRankingKey2;->past:Z

    iput p4, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetFriendRankingListByRankingKey2;->offset:I

    iput p5, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetFriendRankingListByRankingKey2;->count:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/hangame/hsp/HSPRanking$HSPRankingScope;->HSP_RANKINGSCOPE_GAMEMATE:Lcom/hangame/hsp/HSPRanking$HSPRankingScope;

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPRanking$8;

    invoke-direct {v0, p0, p6}, Lcom/hangame/hsp/HSPRanking$8;-><init>(Lcom/hangame/hsp/HSPRanking;Lcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameMateRankingListByRankingKey2;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameMateRankingListByRankingKey2;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameMateRankingListByRankingKey2;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameMateRankingListByRankingKey2;->memberNo:J

    iget v2, p0, Lcom/hangame/hsp/HSPRanking;->mGameNo:I

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameMateRankingListByRankingKey2;->gameNo:I

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameMateRankingListByRankingKey2;->rankingKey:Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;

    iget v3, p0, Lcom/hangame/hsp/HSPRanking;->mFactor:I

    iput v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;->rankingFactor:I

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameMateRankingListByRankingKey2;->rankingKey:Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;

    invoke-static {p2}, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->access$000(Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)B

    move-result v3

    iput-byte v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;->rankingPeriod:B

    iput-boolean p3, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameMateRankingListByRankingKey2;->past:Z

    iput p4, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameMateRankingListByRankingKey2;->offset:I

    iput p5, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameMateRankingListByRankingKey2;->count:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method private queryScoresByScopeInMembers(Ljava/util/List;Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;ZIILcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;)V
    .locals 4

    new-instance v0, Lcom/hangame/hsp/HSPRanking$10;

    invoke-direct {v0, p0, p6}, Lcom/hangame/hsp/HSPRanking$10;-><init>(Lcom/hangame/hsp/HSPRanking;Lcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByMemberNoList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByMemberNoList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByMemberNoList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByMemberNoList;->targetMemberNo:J

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByMemberNoList;->memberNoList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    iget v2, p0, Lcom/hangame/hsp/HSPRanking;->mGameNo:I

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByMemberNoList;->gameNo:I

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByMemberNoList;->rankingKey:Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;

    iget v3, p0, Lcom/hangame/hsp/HSPRanking;->mFactor:I

    iput v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;->rankingFactor:I

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByMemberNoList;->rankingKey:Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;

    invoke-static {p2}, Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;->access$000(Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)B

    move-result v3

    iput-byte v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/RankingKey;->rankingPeriod:B

    iput-boolean p3, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByMemberNoList;->past:Z

    iput p4, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByMemberNoList;->offset:I

    iput p5, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRankingListByMemberNoList;->count:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static reportRankingScore(DILjava/lang/String;Lcom/hangame/hsp/HSPRanking$HSPReportRankingCB;)V
    .locals 6

    const-string v0, "HSPRanking"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportRankingScore(score="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",factor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "extraData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPRanking$6;

    move-object v1, p4

    move-wide v2, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/hangame/hsp/HSPRanking$6;-><init>(Lcom/hangame/hsp/HSPRanking$HSPReportRankingCB;DILjava/lang/String;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetRankingScore;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetRankingScore;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetRankingScore;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetRankingScore;->memberNo:J

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetRankingScore;->gameNo:I

    iput p2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetRankingScore;->rankingFactor:I

    iput-wide p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetRankingScore;->rankingScore:D

    iput-object p3, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetRankingScore;->rankingExtra:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method


# virtual methods
.method public getFactor()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPRanking;->mFactor:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriods()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking;->mPeriods:Ljava/util/List;

    return-object v0
.end method

.method public getResetDate(Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking;->mReservedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/hangame/hsp/HSPRanking;->getResetTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getResetTime()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking;->mUnit:Ljava/lang/String;

    return-object v0
.end method

.method public queryPreviousScoresAroundMemberNo(JLcom/hangame/hsp/HSPRanking$HSPRankingPeriod;IILcom/hangame/hsp/HSPRanking$HSPQueryScoresAroundMemberNoCB;)V
    .locals 9

    const/4 v5, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/hangame/hsp/HSPRanking;->queryScoresAroundMemberNo(JLcom/hangame/hsp/HSPRanking$HSPRankingPeriod;ZIILcom/hangame/hsp/HSPRanking$HSPQueryScoresAroundMemberNoCB;)V

    return-void
.end method

.method public queryPreviousScoresByScope(Lcom/hangame/hsp/HSPRanking$HSPRankingScope;Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;IILcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;)V
    .locals 7

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/hangame/hsp/HSPRanking;->queryScoresByScope(Lcom/hangame/hsp/HSPRanking$HSPRankingScope;Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;ZIILcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;)V

    return-void
.end method

.method public queryPreviousScoresByScopeInMembers(Ljava/util/List;Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;IILcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;)V
    .locals 7

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/hangame/hsp/HSPRanking;->queryScoresByScopeInMembers(Ljava/util/List;Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;ZIILcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;)V

    return-void
.end method

.method public queryScoresAroundMemberNo(JLcom/hangame/hsp/HSPRanking$HSPRankingPeriod;IILcom/hangame/hsp/HSPRanking$HSPQueryScoresAroundMemberNoCB;)V
    .locals 9

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/hangame/hsp/HSPRanking;->queryScoresAroundMemberNo(JLcom/hangame/hsp/HSPRanking$HSPRankingPeriod;ZIILcom/hangame/hsp/HSPRanking$HSPQueryScoresAroundMemberNoCB;)V

    return-void
.end method

.method public queryScoresByScope(Lcom/hangame/hsp/HSPRanking$HSPRankingScope;Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;IILcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/hangame/hsp/HSPRanking;->queryScoresByScope(Lcom/hangame/hsp/HSPRanking$HSPRankingScope;Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;ZIILcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;)V

    return-void
.end method

.method public queryScoresByScopeInMembers(Ljava/util/List;Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;IILcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/hangame/hsp/HSPRanking;->queryScoresByScopeInMembers(Ljava/util/List;Lcom/hangame/hsp/HSPRanking$HSPRankingPeriod;ZIILcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSPRanking [Factor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/HSPRanking;->mFactor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPRanking;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Periods="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPRanking;->mPeriods:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Unit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPRanking;->mUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", GameNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/HSPRanking;->mGameNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Reserved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPRanking;->mReservedMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
