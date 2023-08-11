.class public abstract Lcom/hangame/hsp/ui/TopBarViewContainer;
.super Lcom/hangame/hsp/ui/BaseViewContainer;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/ui/BaseViewContainer;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getTitle()Ljava/lang/String;
.end method

.method protected abstract onOffCloseBtn(Ljava/lang/Boolean;)V
.end method

.method protected abstract resetView()V
.end method

.method protected abstract setTitle(Ljava/lang/String;)V
.end method

.method protected abstract setTopBarButtonView(Landroid/view/View;)V
.end method

.method protected abstract setTopbarColor(Ljava/lang/String;)V
.end method

.method protected final topBarPressed()V
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/MainViewContainer;->getContentView()Lcom/hangame/hsp/ui/ContentViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/ContentViewContainer;->onTopBarPressed()V

    return-void
.end method
