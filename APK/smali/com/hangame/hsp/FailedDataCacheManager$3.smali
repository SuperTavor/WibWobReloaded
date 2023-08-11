.class final Lcom/hangame/hsp/FailedDataCacheManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$extraData:Ljava/lang/String;

.field final synthetic val$factor:I

.field final synthetic val$score:D


# direct methods
.method constructor <init>(DILjava/lang/String;)V
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/FailedDataCacheManager$3;->val$score:D

    iput p3, p0, Lcom/hangame/hsp/FailedDataCacheManager$3;->val$factor:I

    iput-object p4, p0, Lcom/hangame/hsp/FailedDataCacheManager$3;->val$extraData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/hangame/hsp/FailedDataCacheManager;->access$400()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-static {}, Lcom/hangame/hsp/FailedDataCacheManager;->access$500()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lorg/json/simple/JSONArray;

    invoke-direct {v0}, Lorg/json/simple/JSONArray;-><init>()V

    :goto_0
    new-instance v1, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;

    iget-wide v2, p0, Lcom/hangame/hsp/FailedDataCacheManager$3;->val$score:D

    iget v4, p0, Lcom/hangame/hsp/FailedDataCacheManager$3;->val$factor:I

    iget-object v5, p0, Lcom/hangame/hsp/FailedDataCacheManager$3;->val$extraData:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;-><init>(DILjava/lang/String;Lcom/hangame/hsp/FailedDataCacheManager$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "h34di3xef"

    invoke-static {v1}, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;->access$700(Lcom/hangame/hsp/FailedDataCacheManager$RankingData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hangame/hsp/util/AES128;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v0, v1}, Lorg/json/simple/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONArray;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/hangame/hsp/FailedDataCacheManager;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/simple/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    monitor-exit v7

    :goto_1
    return-void

    :cond_2
    invoke-static {v0}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FailedDataCacheManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
