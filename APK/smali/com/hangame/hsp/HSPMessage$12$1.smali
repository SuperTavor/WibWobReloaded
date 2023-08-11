.class Lcom/hangame/hsp/HSPMessage$12$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPMessage$12;

.field final synthetic val$message:Lcom/hangame/hsp/HSPMessage;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMessage$12;Lcom/hangame/hsp/HSPMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMessage$12$1;->this$0:Lcom/hangame/hsp/HSPMessage$12;

    iput-object p2, p0, Lcom/hangame/hsp/HSPMessage$12$1;->val$message:Lcom/hangame/hsp/HSPMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/hangame/hsp/HSPMessage;->access$1300()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/HSPMessage;->access$1300()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPMessage$HSPReceiveMessageListener;

    iget-object v3, p0, Lcom/hangame/hsp/HSPMessage$12$1;->val$message:Lcom/hangame/hsp/HSPMessage;

    invoke-interface {v0, v3}, Lcom/hangame/hsp/HSPMessage$HSPReceiveMessageListener;->onMessageReceive(Lcom/hangame/hsp/HSPMessage;)V

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

    return-void
.end method
