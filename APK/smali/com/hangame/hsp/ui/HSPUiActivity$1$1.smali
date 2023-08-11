.class Lcom/hangame/hsp/ui/HSPUiActivity$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/ui/HSPUiActivity$1;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/HSPUiActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/HSPUiActivity$1$1;->this$1:Lcom/hangame/hsp/ui/HSPUiActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiActivity;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity$1$1;->this$1:Lcom/hangame/hsp/ui/HSPUiActivity$1;

    iget-object v0, v0, Lcom/hangame/hsp/ui/HSPUiActivity$1;->this$0:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->access$300(Lcom/hangame/hsp/ui/HSPUiActivity;)Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity$1$1;->this$1:Lcom/hangame/hsp/ui/HSPUiActivity$1;

    iget-object v0, v0, Lcom/hangame/hsp/ui/HSPUiActivity$1;->this$0:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->access$300(Lcom/hangame/hsp/ui/HSPUiActivity;)Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->onResumeActivity()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity$1$1;->this$1:Lcom/hangame/hsp/ui/HSPUiActivity$1;

    iget-object v0, v0, Lcom/hangame/hsp/ui/HSPUiActivity$1;->this$0:Lcom/hangame/hsp/ui/HSPUiActivity;

    sget-object v2, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->RESUMED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    invoke-static {v0, v2}, Lcom/hangame/hsp/ui/HSPUiActivity;->access$402(Lcom/hangame/hsp/ui/HSPUiActivity;Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;)Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
