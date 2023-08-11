.class Lcom/hangame/hsp/ui/HSPUiLauncher$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/ui/HSPUiLauncher;

.field final synthetic val$uri:Lcom/hangame/hsp/ui/HSPUiUri;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/HSPUiLauncher;Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/HSPUiLauncher$1;->this$0:Lcom/hangame/hsp/ui/HSPUiLauncher;

    iput-object p2, p0, Lcom/hangame/hsp/ui/HSPUiLauncher$1;->val$uri:Lcom/hangame/hsp/ui/HSPUiUri;

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
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher$1;->this$0:Lcom/hangame/hsp/ui/HSPUiLauncher;

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->access$100(Lcom/hangame/hsp/ui/HSPUiLauncher;)Lcom/hangame/hsp/ui/MainViewContainer;

    move-result-object v0

    iget-object v2, p0, Lcom/hangame/hsp/ui/HSPUiLauncher$1;->val$uri:Lcom/hangame/hsp/ui/HSPUiUri;

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/ui/MainViewContainer;->showContentView(Lcom/hangame/hsp/ui/HSPUiUri;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "HSPUiLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View is launched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/ui/HSPUiLauncher$1;->val$uri:Lcom/hangame/hsp/ui/HSPUiUri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiLauncher$1;->this$0:Lcom/hangame/hsp/ui/HSPUiLauncher;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeAllView()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
