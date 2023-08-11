.class final Lcom/hangame/hsp/FailedDataCacheManager$2;
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

    invoke-static {}, Lcom/hangame/hsp/FailedDataCacheManager;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/FailedDataCacheManager;->access$200()I

    move-result v0

    if-lez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/FailedDataCacheManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    if-eqz v0, :cond_1

    const-string v2, "FailedDataCacheManager"

    const-string v3, "reportCachedAchievementIDs"

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/simple/JSONArray;->size()I

    move-result v2

    invoke-static {v2}, Lcom/hangame/hsp/FailedDataCacheManager;->access$202(I)I

    invoke-virtual {v0}, Lorg/json/simple/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    const-string v3, "h34di3xef"

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/hangame/hsp/util/AES128;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    new-instance v3, Lcom/hangame/hsp/FailedDataCacheManager$2$1;

    invoke-direct {v3, p0, v0}, Lcom/hangame/hsp/FailedDataCacheManager$2$1;-><init>(Lcom/hangame/hsp/FailedDataCacheManager$2;Ljava/lang/String;)V

    new-instance v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetAchieved;

    invoke-direct {v4}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetAchieved;-><init>()V

    iget-object v5, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetAchieved;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v5}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v5

    iput v5, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetAchieved;->gameNo:I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetAchieved;->memberNo:J

    iput-object v0, v4, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetAchieved;->achieveId:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v3, "FailedDataCacheManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v3, "FailedDataCacheManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method
