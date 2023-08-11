.class Lcom/hangame/hsp/cgp/core/CGPService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/cgp/core/CGPService;

.field final synthetic val$googlePlayResult:I


# direct methods
.method constructor <init>(Lcom/hangame/hsp/cgp/core/CGPService;I)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/core/CGPService$1;->this$0:Lcom/hangame/hsp/cgp/core/CGPService;

    iput p2, p0, Lcom/hangame/hsp/cgp/core/CGPService$1;->val$googlePlayResult:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeAllProgressDialog()V

    iget v0, p0, Lcom/hangame/hsp/cgp/core/CGPService$1;->val$googlePlayResult:I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x64

    new-instance v3, Lcom/hangame/hsp/cgp/core/CGPService$1$1;

    invoke-direct {v3, p0}, Lcom/hangame/hsp/cgp/core/CGPService$1$1;-><init>(Lcom/hangame/hsp/cgp/core/CGPService$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
