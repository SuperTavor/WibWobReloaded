.class Lcom/hangame/hsp/ui/HSPUiActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/ui/HSPUiActivity;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/HSPUiActivity;IILandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/HSPUiActivity$3;->this$0:Lcom/hangame/hsp/ui/HSPUiActivity;

    iput p2, p0, Lcom/hangame/hsp/ui/HSPUiActivity$3;->val$requestCode:I

    iput p3, p0, Lcom/hangame/hsp/ui/HSPUiActivity$3;->val$resultCode:I

    iput-object p4, p0, Lcom/hangame/hsp/ui/HSPUiActivity$3;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 0

    return-void
.end method

.method public onHide()V
    .locals 0

    return-void
.end method

.method public onRotate(I)V
    .locals 0

    return-void
.end method

.method public onShow()V
    .locals 4

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity$3;->this$0:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->access$300(Lcom/hangame/hsp/ui/HSPUiActivity;)Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity$3;->this$0:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->access$300(Lcom/hangame/hsp/ui/HSPUiActivity;)Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer;

    move-result-object v0

    iget v1, p0, Lcom/hangame/hsp/ui/HSPUiActivity$3;->val$requestCode:I

    iget v2, p0, Lcom/hangame/hsp/ui/HSPUiActivity$3;->val$resultCode:I

    iget-object v3, p0, Lcom/hangame/hsp/ui/HSPUiActivity$3;->val$data:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hangame/hsp/ui/MainViewContainer;->notifyActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/HSPUiActivity$3;->this$0:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->access$300(Lcom/hangame/hsp/ui/HSPUiActivity;)Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->removeUiEventListener(Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;)V

    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    return-void
.end method
