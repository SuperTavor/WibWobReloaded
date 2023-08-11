.class Lcom/hangame/hsp/auth/lnc/LncStateManager$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/auth/lnc/LncStateManager;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/auth/lnc/LncStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/auth/lnc/LncStateManager$10;->this$0:Lcom/hangame/hsp/auth/lnc/LncStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncStateManager$10;->this$0:Lcom/hangame/hsp/auth/lnc/LncStateManager;

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncStateManager;->access$000(Lcom/hangame/hsp/auth/lnc/LncStateManager;)Lcom/hangame/hsp/util/MutexLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/util/MutexLock;->unlock()V

    invoke-static {}, Lcom/hangame/hsp/util/AppUtil;->terminateApp()V

    return-void
.end method
