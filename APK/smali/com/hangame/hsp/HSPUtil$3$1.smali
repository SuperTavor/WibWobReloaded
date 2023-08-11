.class Lcom/hangame/hsp/HSPUtil$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPUtil$3;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPUtil$3;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPUtil$3$1;->this$0:Lcom/hangame/hsp/HSPUtil$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->removeUiEventListener(Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferencesWithPackageNm(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auth.agreement"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$3$1;->this$0:Lcom/hangame/hsp/HSPUtil$3;

    iget-object v0, v0, Lcom/hangame/hsp/HSPUtil$3;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPJogaWebViewCB;

    sget-object v1, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;->HSP_JOGA_AGREE:Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

    invoke-interface {v0, v1}, Lcom/hangame/hsp/HSPUtil$HSPJogaWebViewCB;->onResult(Lcom/hangame/hsp/HSPUtil$HSPJogaResult;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$3$1;->this$0:Lcom/hangame/hsp/HSPUtil$3;

    iget-object v0, v0, Lcom/hangame/hsp/HSPUtil$3;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPJogaWebViewCB;

    sget-object v1, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;->HSP_JOGA_CANCELED:Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

    invoke-interface {v0, v1}, Lcom/hangame/hsp/HSPUtil$HSPJogaWebViewCB;->onResult(Lcom/hangame/hsp/HSPUtil$HSPJogaResult;)V

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    return-void
.end method

.method public onRotate(I)V
    .locals 0

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    return-void
.end method
