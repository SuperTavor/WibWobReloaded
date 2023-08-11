.class final Lcom/hangame/hsp/auth/login/HSPSilosService$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$lock:Lcom/hangame/hsp/util/MutexLock;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/hangame/hsp/util/MutexLock;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/auth/login/HSPSilosService$12;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/hangame/hsp/auth/login/HSPSilosService$12;->val$lock:Lcom/hangame/hsp/util/MutexLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/hangame/hsp/auth/login/HSPSilosService$12;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "hsp.auth.punished.member.alert"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "hsp.common.close"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/auth/login/HSPSilosService$12$1;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/auth/login/HSPSilosService$12$1;-><init>(Lcom/hangame/hsp/auth/login/HSPSilosService$12;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "hsp.common.detail"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/auth/login/HSPSilosService$12$2;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/auth/login/HSPSilosService$12$2;-><init>(Lcom/hangame/hsp/auth/login/HSPSilosService$12;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
