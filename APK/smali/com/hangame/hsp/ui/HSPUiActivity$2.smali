.class Lcom/hangame/hsp/ui/HSPUiActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/ui/HSPUiActivity;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/HSPUiActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/HSPUiActivity$2;->this$0:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiActivity;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity$2;->this$0:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->access$200(Lcom/hangame/hsp/ui/HSPUiActivity;)Lcom/hangame/hsp/util/MutexLock;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity$2;->this$0:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->access$200(Lcom/hangame/hsp/ui/HSPUiActivity;)Lcom/hangame/hsp/util/MutexLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->lock()V

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity$2;->this$0:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->finish()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hangame/hsp/ui/ViewEventManager;->notifyCloseViewEvent(Lcom/hangame/hsp/ui/HSPUiUri;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
