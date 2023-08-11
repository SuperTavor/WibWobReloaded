.class Lcom/hangame/hsp/HSPGameMate$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPGameMate$7;

.field final synthetic val$serverPushGameMateEvent:Lcom/hangame/hsp/xdr/serverpush/AnsServerPushGameMateEvent;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPGameMate$7;Lcom/hangame/hsp/xdr/serverpush/AnsServerPushGameMateEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPGameMate$7$1;->this$0:Lcom/hangame/hsp/HSPGameMate$7;

    iput-object p2, p0, Lcom/hangame/hsp/HSPGameMate$7$1;->val$serverPushGameMateEvent:Lcom/hangame/hsp/xdr/serverpush/AnsServerPushGameMateEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    sget-object v0, Lcom/hangame/hsp/HSPGameMate$8;->$SwitchMap$com$hangame$hsp$HSPGameMate$HSPGameMateEventType:[I

    iget-object v1, p0, Lcom/hangame/hsp/HSPGameMate$7$1;->val$serverPushGameMateEvent:Lcom/hangame/hsp/xdr/serverpush/AnsServerPushGameMateEvent;

    iget-byte v1, v1, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushGameMateEvent;->gameMateEventType:B

    invoke-static {v1}, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->access$400(B)Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/hangame/hsp/HSPGameMate;->access$000()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/HSPGameMate;->access$000()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRequestProposalListener;

    iget-object v3, p0, Lcom/hangame/hsp/HSPGameMate$7$1;->val$serverPushGameMateEvent:Lcom/hangame/hsp/xdr/serverpush/AnsServerPushGameMateEvent;

    iget-wide v4, v3, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushGameMateEvent;->opponent:J

    invoke-interface {v0, v4, v5}, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRequestProposalListener;->onGameMatePropasalReceive(J)V

    goto :goto_1

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

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/hangame/hsp/HSPGameMate;->access$100()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/HSPGameMate;->access$100()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRequestAcceptionListener;

    iget-object v3, p0, Lcom/hangame/hsp/HSPGameMate$7$1;->val$serverPushGameMateEvent:Lcom/hangame/hsp/xdr/serverpush/AnsServerPushGameMateEvent;

    iget-wide v4, v3, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushGameMateEvent;->opponent:J

    invoke-interface {v0, v4, v5}, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRequestAcceptionListener;->onGameMatePropasalAccept(J)V

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/hangame/hsp/HSPGameMate;->access$200()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/HSPGameMate;->access$200()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRequestRejectionListener;

    iget-object v3, p0, Lcom/hangame/hsp/HSPGameMate$7$1;->val$serverPushGameMateEvent:Lcom/hangame/hsp/xdr/serverpush/AnsServerPushGameMateEvent;

    iget-wide v4, v3, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushGameMateEvent;->opponent:J

    invoke-interface {v0, v4, v5}, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRequestRejectionListener;->onGameMatePropasalReject(J)V

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/hangame/hsp/HSPGameMate;->access$300()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_6
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/HSPGameMate;->access$300()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRemovalListener;

    iget-object v3, p0, Lcom/hangame/hsp/HSPGameMate$7$1;->val$serverPushGameMateEvent:Lcom/hangame/hsp/xdr/serverpush/AnsServerPushGameMateEvent;

    iget-wide v4, v3, Lcom/hangame/hsp/xdr/serverpush/AnsServerPushGameMateEvent;->opponent:J

    invoke-interface {v0, v4, v5}, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRemovalListener;->onGameMatePropasalRemove(J)V

    goto :goto_4

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :cond_3
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
