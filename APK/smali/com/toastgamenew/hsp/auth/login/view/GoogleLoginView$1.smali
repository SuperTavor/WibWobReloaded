.class Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView;


# direct methods
.method constructor <init>(Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView;)V
    .locals 0

    iput-object p1, p0, Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView$1;->this$0:Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x4005

    const-string v2, "ERROR_GOOGLE_PLAY_SERVICE"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    iget-object v0, p0, Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView$1;->this$0:Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView;

    invoke-static {v0}, Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView;->access$000(Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView;)V

    return-void
.end method
