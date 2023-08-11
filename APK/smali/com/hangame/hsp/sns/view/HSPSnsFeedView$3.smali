.class Lcom/hangame/hsp/sns/view/HSPSnsFeedView$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLoginCB;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/view/HSPSnsFeedView;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$3;->this$0:Lcom/hangame/hsp/sns/view/HSPSnsFeedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogin(Lcom/hangame/hsp/HSPResult;)V
    .locals 3

    const-string v0, "HSPSnsFeedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDoAuthentication login ! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "sns login fail!!! try again"

    new-instance v1, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$3$1;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$3$1;-><init>(Lcom/hangame/hsp/sns/view/HSPSnsFeedView$3;)V

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method
