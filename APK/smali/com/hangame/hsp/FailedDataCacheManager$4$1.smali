.class Lcom/hangame/hsp/FailedDataCacheManager$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/FailedDataCacheManager$4;

.field final synthetic val$rankingList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/FailedDataCacheManager$4;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/FailedDataCacheManager$4$1;->this$0:Lcom/hangame/hsp/FailedDataCacheManager$4;

    iput-object p2, p0, Lcom/hangame/hsp/FailedDataCacheManager$4$1;->val$rankingList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 5

    invoke-static {}, Lcom/hangame/hsp/FailedDataCacheManager;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetRankingScoreList;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetRankingScoreList;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    const-string v2, "FailedDataCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportCachedRankingScores result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSetRankingScoreList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/FailedDataCacheManager$4$1;->val$rankingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/FailedDataCacheManager$RankingData;

    invoke-static {v0}, Lcom/hangame/hsp/FailedDataCacheManager;->access$1300(Lcom/hangame/hsp/FailedDataCacheManager$RankingData;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/hangame/hsp/FailedDataCacheManager;->access$802(Z)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
