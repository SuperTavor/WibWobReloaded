.class final Lcom/hangame/hsp/HSPUtil$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPServiceProperties$HSPLoadServicePropertiesCB;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithToastTermsCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithToastTermsCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPUtil$4;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithToastTermsCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServicePropertiesLoad(Lcom/hangame/hsp/HSPResult;)V
    .locals 3

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HSPUtil"

    const-string v1, "there is error with getting LNC Info"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HSPUtil"

    const-string v1, "it is for only ToastGame"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "supports.terms.alert.view"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "_gnbShow"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_closecurrentview"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_topbarShow"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    new-instance v1, Lcom/hangame/hsp/HSPUtil$4$1;

    invoke-direct {v1, p0, v0}, Lcom/hangame/hsp/HSPUtil$4$1;-><init>(Lcom/hangame/hsp/HSPUtil$4;Lcom/hangame/hsp/ui/HSPUiUri;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/ViewEventManager;->addCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V

    goto :goto_0
.end method
