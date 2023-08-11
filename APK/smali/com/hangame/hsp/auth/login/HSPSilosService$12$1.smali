.class Lcom/hangame/hsp/auth/login/HSPSilosService$12$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/auth/login/HSPSilosService$12;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/auth/login/HSPSilosService$12;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/auth/login/HSPSilosService$12$1;->this$0:Lcom/hangame/hsp/auth/login/HSPSilosService$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/auth/login/HSPSilosService$12$1;->this$0:Lcom/hangame/hsp/auth/login/HSPSilosService$12;

    iget-object v0, v0, Lcom/hangame/hsp/auth/login/HSPSilosService$12;->val$lock:Lcom/hangame/hsp/util/MutexLock;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->unlock()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
