.class final Lcom/hangame/hsp/FailedDataCacheManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/hangame/hsp/FailedDataCacheManager;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/FailedDataCacheManager;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/FailedDataCacheManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "FailedDataCacheManager"

    const-string v3, "reportCachedRankingScores"

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    if-eqz v0, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lorg/json/simple/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    const-string v4, "h34di3xef"

    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/hangame/hsp/util/AES128;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    invoke-static {v0}, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->access$900(Ljava/lang/String;)Lcom/hangame/hsp/FailedDataCacheManager$RankingData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v4, "FailedDataCacheManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetRankingScoreList;

    invoke-direct {v3}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetRankingScoreList;-><init>()V

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetRankingScoreList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v0

    iput v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetRankingScoreList;->gameNo:I

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;

    new-instance v5, Lcom/hangame/hsp/xdr/hsp13/request/RankingScore;

    invoke-direct {v5}, Lcom/hangame/hsp/xdr/hsp13/request/RankingScore;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/hangame/hsp/xdr/hsp13/request/RankingScore;->memberNo:J

    invoke-static {v0}, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->access$1000(Lcom/hangame/hsp/FailedDataCacheManager$RankingData;)I

    move-result v6

    iput v6, v5, Lcom/hangame/hsp/xdr/hsp13/request/RankingScore;->rankingFactor:I

    invoke-static {v0}, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->access$1100(Lcom/hangame/hsp/FailedDataCacheManager$RankingData;)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/hangame/hsp/xdr/hsp13/request/RankingScore;->rankingScore:D

    invoke-static {v0}, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->access$1200(Lcom/hangame/hsp/FailedDataCacheManager$RankingData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/hangame/hsp/xdr/hsp13/request/RankingScore;->rankingExtra:Ljava/lang/String;

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetRankingScoreList;->scoreList:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/hangame/hsp/FailedDataCacheManager$4$1;

    invoke-direct {v0, p0, v2}, Lcom/hangame/hsp/FailedDataCacheManager$4$1;-><init>(Lcom/hangame/hsp/FailedDataCacheManager$4;Ljava/util/List;)V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/hangame/hsp/FailedDataCacheManager;->access$802(Z)Z

    invoke-static {v3, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method
