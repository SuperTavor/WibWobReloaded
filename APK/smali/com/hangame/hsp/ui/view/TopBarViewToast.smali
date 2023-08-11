.class public Lcom/hangame/hsp/ui/view/TopBarViewToast;
.super Lcom/hangame/hsp/ui/TopBarViewContainer;


# static fields
.field private static final TAG:Ljava/lang/String; = "TopbarView"


# instance fields
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

    const-string v0, "hsp_toast_topbar"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarViewToast;->mTopbarView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarViewToast;->mTopbarView:Landroid/view/ViewGroup;

    const-string v1, "hsp.topbar.title"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarViewToast;->mTopbarTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarViewToast;->mTopbarTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/hangame/hsp/ui/view/TopBarViewToast$1;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/ui/view/TopBarViewToast$1;-><init>(Lcom/hangame/hsp/ui/view/TopBarViewToast;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarViewToast;->mTopbarView:Landroid/view/ViewGroup;

    const-string v1, "hsp.toast.topbar.button"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarViewToast;->mTopbarButton:Landroid/view/ViewGroup;

    const-string v0, "hsp_toast_topbar_closebutton"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarViewToast;->mTopbarCloseButton:Landroid/view/View;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarViewToast;->mTopbarCloseButton:Landroid/view/View;

    new-instance v1, Lcom/hangame/hsp/ui/view/TopBarViewToast$2;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/ui/view/TopBarViewToast$2;-><init>(Lcom/hangame/hsp/ui/view/TopBarViewToast;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarViewToast;->mTopbarView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/view/TopBarViewToast;->setView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/ui/view/TopBarViewToast;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/TopBarViewToast;->topBarPressed()V

    return-void
.end method


# virtual methods
.method protected getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarViewToast;->mTopbarTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onClose()V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarViewToast;->mTopbarView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/hangame/hsp/util/ViewRecycleUtil;->recursiveRecycle(Landroid/view/View;)V

    return-void
.end method

.method protected onOffCloseBtn(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarViewToast;->mTopbarCloseButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarViewToast;->mTopbarCloseButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

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

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/ui/view/TopBarViewToast;->setTitle(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hsp.toast.new.title."

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

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/view/TopBarViewToast;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hsp.toast.title."

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

    goto :goto_1
.end method

.method protected resetView()V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarViewToast;->mTopbarCloseButton:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/view/TopBarViewToast;->setTopBarButtonView(Landroid/view/View;)V

    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 3

    const-string v0, "TopbarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Toast TopbarView() setTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarViewToast;->mTopbarTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setTopBarButtonView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarViewToast;->mTopbarButton:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/TopBarViewToast;->mTopbarButton:Landroid/view/ViewGroup;

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

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/TopBarViewToast;->mTopbarView:Landroid/view/ViewGroup;

    const-string v2, "hsp.topbar"

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/TopBarViewToast;->mTopbarCloseButton:Landroid/view/View;

    const-string v2, "hsp.topbar.closebutton"

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method
