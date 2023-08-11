.class Lcom/hangame/hsp/ui/HSPUiActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPCore$HSPLoginCB;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/ui/HSPUiActivity;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/HSPUiActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/HSPUiActivity$1;->this$0:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogin(Lcom/hangame/hsp/HSPResult;Z)V
    .locals 3

    const-string v0, "HSPUiActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HSPLoginCB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeProgressDialog()V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiActivity;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity$1;->this$0:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->access$200(Lcom/hangame/hsp/ui/HSPUiActivity;)Lcom/hangame/hsp/util/MutexLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->unlock()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity$1;->this$0:Lcom/hangame/hsp/ui/HSPUiActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/hangame/hsp/ui/HSPUiActivity;->access$202(Lcom/hangame/hsp/ui/HSPUiActivity;Lcom/hangame/hsp/util/MutexLock;)Lcom/hangame/hsp/util/MutexLock;

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity$1;->this$0:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->access$300(Lcom/hangame/hsp/ui/HSPUiActivity;)Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity$1;->this$0:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->access$300(Lcom/hangame/hsp/ui/HSPUiActivity;)Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->onResumeActivity()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity$1;->this$0:Lcom/hangame/hsp/ui/HSPUiActivity;

    sget-object v2, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->RESUMED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    invoke-static {v0, v2}, Lcom/hangame/hsp/ui/HSPUiActivity;->access$402(Lcom/hangame/hsp/ui/HSPUiActivity;Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;)Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/ui/HSPUiActivity$1$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/ui/HSPUiActivity$1$1;-><init>(Lcom/hangame/hsp/ui/HSPUiActivity$1;)V

    invoke-static {p1, v0}, Lcom/hangame/hsp/util/HSPResultUtil;->showErrorAlertDialog(Lcom/hangame/hsp/HSPResult;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
