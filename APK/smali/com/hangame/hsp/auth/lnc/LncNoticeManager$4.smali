.class Lcom/hangame/hsp/auth/lnc/LncNoticeManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/auth/lnc/LncNoticeManager;

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/auth/lnc/LncNoticeManager;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$4;->this$0:Lcom/hangame/hsp/auth/lnc/LncNoticeManager;

    iput-object p2, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$4;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$4;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
