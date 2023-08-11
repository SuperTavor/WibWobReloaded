.class final Lcom/hangame/hsp/ui/DialogManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$cancelable:Z

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$timeOut:J

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/ui/DialogManager$3;->val$timeOut:J

    iput-object p3, p0, Lcom/hangame/hsp/ui/DialogManager$3;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/hangame/hsp/ui/DialogManager$3;->val$message:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/hangame/hsp/ui/DialogManager$3;->val$cancelable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->access$100()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    const-string v2, "DialogManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showProgressDialog() START: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->access$200()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/ui/HSPUiLauncher;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "DialogManager"

    const-string v1, "HSP Activity is finishing"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->access$208()I

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->access$300()Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->access$300()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    :goto_1
    if-nez v2, :cond_4

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->access$400()Ljava/util/Timer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->access$400()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    :cond_1
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v2}, Lcom/hangame/hsp/ui/DialogManager;->access$402(Ljava/util/Timer;)Ljava/util/Timer;

    iget-wide v4, p0, Lcom/hangame/hsp/ui/DialogManager$3;->val$timeOut:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_6

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->access$400()Ljava/util/Timer;

    move-result-object v2

    new-instance v4, Lcom/hangame/hsp/ui/DialogManager$ProgressTimerTask;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/hangame/hsp/ui/DialogManager$ProgressTimerTask;-><init>(Lcom/hangame/hsp/ui/DialogManager$1;)V

    const-wide/16 v6, 0x2710

    invoke-virtual {v2, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_2
    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->access$600()Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->access$600()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_3
    if-nez v0, :cond_4

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/DialogManager;->access$602(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/hangame/hsp/ui/DialogManager$3;->val$title:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->access$600()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/ui/DialogManager$3;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/ui/DialogManager$3;->val$message:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->access$600()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/ui/DialogManager$3;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->access$600()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hangame/hsp/ui/DialogManager$3;->val$cancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->access$600()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_4
    :try_start_2
    const-string v0, "DialogManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showProgressDialog() END: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->access$200()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    move v2, v1

    goto/16 :goto_1

    :cond_6
    :try_start_3
    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->access$400()Ljava/util/Timer;

    move-result-object v2

    new-instance v4, Lcom/hangame/hsp/ui/DialogManager$ProgressTimerTask;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/hangame/hsp/ui/DialogManager$ProgressTimerTask;-><init>(Lcom/hangame/hsp/ui/DialogManager$1;)V

    iget-wide v6, p0, Lcom/hangame/hsp/ui/DialogManager$3;->val$timeOut:J

    invoke-virtual {v2, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4
.end method
