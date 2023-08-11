.class public Lcom/hangame/hsp/ui/view/TopBarView;
.super Lcom/hangame/hsp/ui/TopBarViewContainer;


# static fields
.field private static final TAG:Ljava/lang/String; = "TopbarView"


# instance fields
.field private final mBtnTextView:Landroid/widget/TextView;

.field private final mTopbarButton:Landroid/view/ViewGroup;

.field private final mTopbarCloseButton:Landroid/view/View;

.field private final mTopbarTextView:Landroid/widget/TextView;

.field private final mTopbarView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/hangame/hsp/ui/TopBarViewContainer;-><init>()V

    const-string v0, "TopbarView"

    const-string v1, "TopbarView()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "hsp_main_topbar"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarView:Landroid/view/ViewGroup;

    const-string v1, "hsp.topbar.title"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/hangame/hsp/ui/view/TopBarView$1;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/ui/view/TopBarView$1;-><init>(Lcom/hangame/hsp/ui/view/TopBarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarView:Landroid/view/ViewGroup;

    const-string v1, "hsp.topbar.button"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarButton:Landroid/view/ViewGroup;

    const-string v0, "hsp_main_topbar_closebutton"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarCloseButton:Landroid/view/View;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarCloseButton:Landroid/view/View;

    const-string v1, "hsp.topbar.closebutton.title"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mBtnTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarCloseButton:Landroid/view/View;

    new-instance v1, Lcom/hangame/hsp/ui/view/TopBarView$2;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/ui/view/TopBarView$2;-><init>(Lcom/hangame/hsp/ui/view/TopBarView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isLineGame()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarView:Landroid/view/ViewGroup;

    const-string v1, "hsp.topbar.bottomline"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    const-string v1, "hsp.topbar.bottomline.line"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/view/TopBarView;->setView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/ui/view/TopBarView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/TopBarView;->topBarPressed()V

    return-void
.end method

.method static synthetic access$100(Lcom/hangame/hsp/ui/view/TopBarView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mBtnTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onClose()V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/hangame/hsp/util/ViewRecycleUtil;->recursiveRecycle(Landroid/view/View;)V

    return-void
.end method

.method protected onOffCloseBtn(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarButton:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarButton:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getCurrentView()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "_title"

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/ui/view/TopBarView;->setTitle(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hsp.title."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/view/TopBarView;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected resetView()V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarCloseButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/view/TopBarView;->setTopBarButtonView(Landroid/view/View;)V

    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x8

    const-string v0, "TopbarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TopbarView() setTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/hangame/hsp/util/HSPLocaleUtil;->isJapan()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getCurrentView()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "TopbarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "false"

    const-string v2, "_button_title"

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "false"

    const-string v2, "_close_button_title"

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "\u30ed\u30b0\u30a4\u30f3 - \u30cf\u30f3\u30b2\u30fc\u30e0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u7c21\u5358ID - \u30ed\u30b0\u30a4\u30f3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarCloseButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mBtnTextView:Landroid/widget/TextView;

    const-string v1, "hsp.common.qa"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarCloseButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string v1, "false"

    const-string v2, "_button_title"

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "false"

    const-string v2, "_close_button_title"

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarCloseButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mBtnTextView:Landroid/widget/TextView;

    const-string v1, "hsp.common.close"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mBtnTextView:Landroid/widget/TextView;

    const-string v1, "hsp.common.close"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setTopBarButtonView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarButton:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarView;->mTopbarButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected setTopbarColor(Ljava/lang/String;)V
    .locals 3

    const-string v0, "TopbarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTopbarColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
