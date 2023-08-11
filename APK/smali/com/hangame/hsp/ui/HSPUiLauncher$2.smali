.class Lcom/hangame/hsp/ui/HSPUiLauncher$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/ui/HSPUiLauncher;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/HSPUiLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/HSPUiLauncher$2;->this$0:Lcom/hangame/hsp/ui/HSPUiLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher$2;->this$0:Lcom/hangame/hsp/ui/HSPUiLauncher;

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->access$200(Lcom/hangame/hsp/ui/HSPUiLauncher;)Lcom/hangame/hsp/ui/HSPUiActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "HSPUiLauncher"

    const-string v2, "closeAllView(): finish activity"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher$2;->this$0:Lcom/hangame/hsp/ui/HSPUiLauncher;

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->access$200(Lcom/hangame/hsp/ui/HSPUiLauncher;)Lcom/hangame/hsp/ui/HSPUiActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->requestDestroy()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher$2;->this$0:Lcom/hangame/hsp/ui/HSPUiLauncher;

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->access$300(Lcom/hangame/hsp/ui/HSPUiLauncher;)V

    invoke-static {}, Lcom/hangame/hsp/ui/ViewHistoryManager;->clearHistory()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher$2;->this$0:Lcom/hangame/hsp/ui/HSPUiLauncher;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/hangame/hsp/ui/HSPUiLauncher;->access$402(Lcom/hangame/hsp/ui/HSPUiLauncher;Z)Z

    const-string v0, "HSPUiLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProcesslock : before : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/ui/HSPUiLauncher$2;->this$0:Lcom/hangame/hsp/ui/HSPUiLauncher;

    invoke-static {v3}, Lcom/hangame/hsp/ui/HSPUiLauncher;->access$500(Lcom/hangame/hsp/ui/HSPUiLauncher;)Lcom/hangame/hsp/util/MutexLock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/util/MutexLock;->isLock()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher$2;->this$0:Lcom/hangame/hsp/ui/HSPUiLauncher;

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->access$500(Lcom/hangame/hsp/ui/HSPUiLauncher;)Lcom/hangame/hsp/util/MutexLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->isLock()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher$2;->this$0:Lcom/hangame/hsp/ui/HSPUiLauncher;

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->access$500(Lcom/hangame/hsp/ui/HSPUiLauncher;)Lcom/hangame/hsp/util/MutexLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->unlock()V

    :cond_0
    const-string v0, "HSPUiLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProcesslock : after : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/ui/HSPUiLauncher$2;->this$0:Lcom/hangame/hsp/ui/HSPUiLauncher;

    invoke-static {v3}, Lcom/hangame/hsp/ui/HSPUiLauncher;->access$500(Lcom/hangame/hsp/ui/HSPUiLauncher;)Lcom/hangame/hsp/util/MutexLock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/util/MutexLock;->isLock()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
