.class Lcom/hangame/hsp/auth/login/HSPSilosService$12$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/auth/login/HSPSilosService$12$2;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/auth/login/HSPSilosService$12$2;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/auth/login/HSPSilosService$12$2$1;->this$1:Lcom/hangame/hsp/auth/login/HSPSilosService$12$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/auth/login/HSPSilosService$12$2$1;->this$1:Lcom/hangame/hsp/auth/login/HSPSilosService$12$2;

    iget-object v0, v0, Lcom/hangame/hsp/auth/login/HSPSilosService$12$2;->this$0:Lcom/hangame/hsp/auth/login/HSPSilosService$12;

    iget-object v0, v0, Lcom/hangame/hsp/auth/login/HSPSilosService$12;->val$lock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->unlock()V

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
    .locals 0

    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    return-void
.end method
