.class Lcom/hangame/hsp/auth/lnc/LncStateManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/auth/lnc/LncStateManager;

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/auth/lnc/LncStateManager;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/auth/lnc/LncStateManager$1;->this$0:Lcom/hangame/hsp/auth/lnc/LncStateManager;

    iput-object p2, p0, Lcom/hangame/hsp/auth/lnc/LncStateManager$1;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "LncStateManager"

    const-string v1, "lnc state alert show"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncStateManager$1;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
