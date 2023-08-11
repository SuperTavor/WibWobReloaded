.class final Lcom/hangame/hsp/HSPUtil$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPServiceProperties$HSPLoadServicePropertiesCB;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPUtil$HSPJogaWebViewCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPUtil$HSPJogaWebViewCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPUtil$3;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPJogaWebViewCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServicePropertiesLoad(Lcom/hangame/hsp/HSPResult;)V
    .locals 3

    const-string v0, "webview"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "webview"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    :goto_0
    const-string v1, "weburl"

    invoke-static {}, Lcom/hangame/hsp/auth/AuthPageUrlUtil;->getAgreementPageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_topbarShow"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_topbarCloseShow"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    new-instance v0, Lcom/hangame/hsp/HSPUtil$3$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPUtil$3$1;-><init>(Lcom/hangame/hsp/HSPUtil$3;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->addUiEventListener(Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;)V

    return-void

    :cond_0
    const-string v0, "auth.welcome"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    goto :goto_0
.end method
