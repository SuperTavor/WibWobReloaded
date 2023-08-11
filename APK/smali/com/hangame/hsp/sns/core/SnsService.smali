.class public Lcom/hangame/hsp/sns/core/SnsService;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3

    const-string v0, "sns.oauth.webview"

    const-class v1, Lcom/hangame/hsp/sns/view/HSPSnsOAuthWebview;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_gnbShow=false&_history=false&_usewebclient=false"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v0, "sns.popup.webview"

    const-class v1, Lcom/hangame/hsp/sns/view/HSPSnsPopupWebView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_gnbShow=false&_history=false&_usewebclient=false"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v0, "sns.feed"

    const-class v1, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_gnbShow=false&_history=false"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    return-void
.end method
