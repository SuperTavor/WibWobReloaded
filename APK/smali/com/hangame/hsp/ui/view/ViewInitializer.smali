.class public final Lcom/hangame/hsp/ui/view/ViewInitializer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/ui/view/ViewListManager;->clearViewList()V

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isToastGame()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "topbar"

    const-class v1, Lcom/hangame/hsp/ui/view/TopBarViewToast;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    :goto_0
    const-string v0, "webview"

    const-class v1, Lcom/hangame/hsp/ui/view/HSPWebView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_gnbShow=false&_history=false"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v0, "message.list"

    const-class v1, Lcom/hangame/hsp/ui/view/HSPWebView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "useHSPWebUiBase=true"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v0, "gameplus"

    const-class v1, Lcom/hangame/hsp/ui/view/HSPWebView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "useHSPWebUiBase=true"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v0, "supports.cscenter"

    const-class v1, Lcom/hangame/hsp/ui/view/HSPWebView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "useHSPWebUiBase=true"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v0, "supports.notice"

    const-class v1, Lcom/hangame/hsp/ui/view/HSPWebView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "useHSPWebUiBase=true"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v0, "supports.faq"

    const-class v1, Lcom/hangame/hsp/ui/view/HSPWebView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "useHSPWebUiBase=true"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v0, "supports.terms.privacy"

    const-class v1, Lcom/hangame/hsp/ui/view/HSPWebView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "useHSPWebUiBase=true"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v0, "supports.terms.personal.collection"

    const-class v1, Lcom/hangame/hsp/ui/view/HSPWebView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "useHSPWebUiBase=true"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v0, "supports.terms.alert.view"

    const-class v1, Lcom/hangame/hsp/ui/view/ToastTermsView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "useHSPWebUiBase=true"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v0, "supports.terms.use"

    const-class v1, Lcom/hangame/hsp/ui/view/HSPWebView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "useHSPWebUiBase=true"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v0, "supports.terms.hangame"

    const-class v1, Lcom/hangame/hsp/ui/view/HSPWebView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "useHSPWebUiBase=true"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v0, "supports.terms.punish"

    const-class v1, Lcom/hangame/hsp/ui/view/HSPWebView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "useHSPWebUiBase=true"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v0, "supports.toast.event"

    const-class v1, Lcom/hangame/hsp/ui/view/HSPWebView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "useHSPWebUiBase=true"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v0, "profile.myprofile.photopick"

    const-class v1, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    const-string v0, "profile.myprofile.photocrop"

    const-class v1, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_history=false&_gnbShow=false"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    return-void

    :cond_1
    const-string v0, "topbar"

    const-class v1, Lcom/hangame/hsp/ui/view/TopBarView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    goto/16 :goto_0
.end method
