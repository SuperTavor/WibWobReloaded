.class Lcom/hangame/hsp/ui/view/TopBarViewToast$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/ui/view/TopBarViewToast;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/view/TopBarViewToast;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/TopBarViewToast$2;->this$0:Lcom/hangame/hsp/ui/view/TopBarViewToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getCurrentView()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "_closecurrentview"

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "topbarClose"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeCurrentView()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeAllView()V

    goto :goto_0
.end method
