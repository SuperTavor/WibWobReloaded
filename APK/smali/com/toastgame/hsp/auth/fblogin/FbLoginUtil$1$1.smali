.class Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$1;


# direct methods
.method constructor <init>(Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$1;)V
    .locals 0

    iput-object p1, p0, Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$1$1;->this$0:Lcom/toastgame/hsp/auth/fblogin/FbLoginUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeCurrentView()V

    return-void
.end method
