.class final Lcom/hangame/hsp/HSPGameMate$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPGameMate$HSPRemoveGameMateCB;

.field final synthetic val$memberNo:J


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPGameMate$HSPRemoveGameMateCB;J)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPGameMate$4;->val$callback:Lcom/hangame/hsp/HSPGameMate$HSPRemoveGameMateCB;

    iput-wide p2, p0, Lcom/hangame/hsp/HSPGameMate$4;->val$memberNo:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 6

    iget-object v0, p0, Lcom/hangame/hsp/HSPGameMate$4;->val$callback:Lcom/hangame/hsp/HSPGameMate$HSPRemoveGameMateCB;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsDismissGameMate;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsDismissGameMate;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsDismissGameMate;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/HSPGameMate$4;->val$callback:Lcom/hangame/hsp/HSPGameMate$HSPRemoveGameMateCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPGameMate$HSPRemoveGameMateCB;->onGameMateRemove(Lcom/hangame/hsp/HSPResult;)V

    invoke-static {}, Lcom/hangame/hsp/HSPGameMate;->access$300()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/HSPGameMate;->access$300()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRemovalListener;

    iget-wide v4, p0, Lcom/hangame/hsp/HSPGameMate$4;->val$memberNo:J

    invoke-interface {v0, v4, v5}, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRemovalListener;->onGameMatePropasalRemove(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/hangame/hsp/HSPGameMate$4;->val$callback:Lcom/hangame/hsp/HSPGameMate$HSPRemoveGameMateCB;

    const-string v2, "MASHUP"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsDismissGameMate;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/hangame/hsp/HSPGameMate$HSPRemoveGameMateCB;->onGameMateRemove(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/HSPGameMate$4;->val$callback:Lcom/hangame/hsp/HSPGameMate$HSPRemoveGameMateCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPGameMate$HSPRemoveGameMateCB;->onGameMateRemove(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1
.end method
