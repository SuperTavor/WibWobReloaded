.class final Lcom/hangame/hsp/ui/MainViewContainer;
.super Lcom/hangame/hsp/ui/BaseViewContainer;


# static fields
.field private static final TAG:Ljava/lang/String; = "MainViewContainer"

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final mActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

.field private mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

.field private final mGnbViewContainer:Lcom/hangame/hsp/ui/GnbViewContainer;

.field private final mLandscapeViewContainer:Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

.field private final mPortraitViewContainer:Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

.field private final mTopBarViewContainer:Lcom/hangame/hsp/ui/TopBarViewContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getLock()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/ui/MainViewContainer;->lock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/hangame/hsp/ui/HSPUiActivity;)V
    .locals 4

    invoke-direct {p0}, Lcom/hangame/hsp/ui/BaseViewContainer;-><init>()V

    const-string v0, "MainViewContainer"

    const-string v1, "MainViewContainer()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    new-instance v0, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    const-string v1, "hsp_main_land"

    invoke-direct {v0, p0, v1}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;-><init>(Lcom/hangame/hsp/ui/MainViewContainer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mLandscapeViewContainer:Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    new-instance v0, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    const-string v1, "hsp_main_port"

    invoke-direct {v0, p0, v1}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;-><init>(Lcom/hangame/hsp/ui/MainViewContainer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mPortraitViewContainer:Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getCurrentView()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "topbar"

    invoke-static {v1}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/hangame/hsp/ui/MainViewContainer;->createTopBarView(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/ui/TopBarViewContainer;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mTopBarViewContainer:Lcom/hangame/hsp/ui/TopBarViewContainer;

    invoke-direct {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->getCurrentMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->access$000(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mTopBarViewContainer:Lcom/hangame/hsp/ui/TopBarViewContainer;

    invoke-virtual {v2}, Lcom/hangame/hsp/ui/TopBarViewContainer;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v1, "gnb"

    invoke-static {v1}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "false"

    const-string v3, "_gnbShow"

    invoke-virtual {v0, v3}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MainViewContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GNB View is defined: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/hangame/hsp/ui/MainViewContainer;->createGnbView(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/ui/GnbViewContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mGnbViewContainer:Lcom/hangame/hsp/ui/GnbViewContainer;

    invoke-direct {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->getCurrentMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->access$100(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mGnbViewContainer:Lcom/hangame/hsp/ui/GnbViewContainer;

    invoke-virtual {v1}, Lcom/hangame/hsp/ui/GnbViewContainer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MainViewContainer"

    const-string v1, "GNB View is not defined"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mGnbViewContainer:Lcom/hangame/hsp/ui/GnbViewContainer;

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->hideGnb()V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/hangame/hsp/ui/MainViewContainer;)Lcom/hangame/hsp/ui/TopBarViewContainer;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mTopBarViewContainer:Lcom/hangame/hsp/ui/TopBarViewContainer;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/ui/MainViewContainer;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hangame/hsp/ui/MainViewContainer;)Lcom/hangame/hsp/ui/ContentViewContainer;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/hangame/hsp/ui/MainViewContainer;)Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;
    .locals 1

    invoke-direct {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->getCurrentMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/hangame/hsp/ui/MainViewContainer;)Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mLandscapeViewContainer:Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/hangame/hsp/ui/MainViewContainer;)Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mPortraitViewContainer:Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/hangame/hsp/ui/MainViewContainer;)Lcom/hangame/hsp/ui/GnbViewContainer;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mGnbViewContainer:Lcom/hangame/hsp/ui/GnbViewContainer;

    return-object v0
.end method

.method private clearAllView()V
    .locals 2

    const-string v0, "MainViewContainer"

    const-string v1, "clearAllView()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mLandscapeViewContainer:Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->access$000(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mLandscapeViewContainer:Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->access$100(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mLandscapeViewContainer:Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->access$300(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mPortraitViewContainer:Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->access$000(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mPortraitViewContainer:Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->access$100(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mPortraitViewContainer:Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->access$300(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method private clearContentView()V
    .locals 2

    const-string v0, "MainViewContainer"

    const-string v1, "clearContentView()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mLandscapeViewContainer:Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->access$300(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mPortraitViewContainer:Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->access$300(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method private createContentView(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/ui/ContentViewContainer;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/hangame/hsp/ui/HSPUiUri;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/hangame/hsp/ui/HSPUiUri;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/ContentViewContainer;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "MainViewContainer"

    const-string v3, "Exception occurred in Content View"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "MainViewContainer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private createGnbView(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/ui/GnbViewContainer;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lcom/hangame/hsp/ui/HSPUiUri;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/GnbViewContainer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MainViewContainer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invaild Gnb Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gnb"

    invoke-static {v3}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/ui/HSPUiUri;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createTopBarView(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/ui/TopBarViewContainer;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lcom/hangame/hsp/ui/HSPUiUri;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/TopBarViewContainer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MainViewContainer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invaild TopBar Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "topbar"

    invoke-static {v3}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/ui/HSPUiUri;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getCurrentMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/ui/DeviceController;->getOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mLandscapeViewContainer:Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mPortraitViewContainer:Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    goto :goto_0
.end method

.method private handleViewParameter(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "MainViewContainer"

    const-string v1, "handleViewParameter()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "false"

    const-string v1, "_topbarShow"

    invoke-virtual {p1, v1}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->hideTopBar()V

    :goto_0
    const-string v0, "false"

    const-string v1, "_topbarCloseShow"

    invoke-virtual {p1, v1}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mTopBarViewContainer:Lcom/hangame/hsp/ui/TopBarViewContainer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/ui/TopBarViewContainer;->onOffCloseBtn(Ljava/lang/Boolean;)V

    :goto_1
    const-string v0, "false"

    const-string v1, "_gnbShow"

    invoke-virtual {p1, v1}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->hideGnb()V

    :goto_2
    const-string v0, "_orientation"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/hangame/hsp/ui/DeviceController;->lockOrientation(I)V

    :goto_3
    const-string v0, "false"

    const-string v1, "_backbutton"

    invoke-virtual {p1, v1}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/hangame/hsp/ui/DeviceController;->disableBackButton()V

    :goto_4
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->showTopBar()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mTopBarViewContainer:Lcom/hangame/hsp/ui/TopBarViewContainer;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/ui/TopBarViewContainer;->onOffCloseBtn(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->showGnb()V

    goto :goto_2

    :cond_3
    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v2}, Lcom/hangame/hsp/ui/DeviceController;->lockOrientation(I)V

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/hangame/hsp/ui/DeviceController;->unlockOrientation()V

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/hangame/hsp/ui/DeviceController;->enableBackButton()V

    goto :goto_4
.end method

.method private resetEnvironment()V
    .locals 2

    const-string v0, "MainViewContainer"

    const-string v1, "resetEnvironment()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mTopBarViewContainer:Lcom/hangame/hsp/ui/TopBarViewContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/TopBarViewContainer;->resetView()V

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeDialog()V

    invoke-static {}, Lcom/hangame/hsp/ui/DeviceController;->hideKeyboard()V

    return-void
.end method


# virtual methods
.method getContentView()Lcom/hangame/hsp/ui/ContentViewContainer;
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/MainViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getMainView()Landroid/view/ViewGroup;
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/MainViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->getCurrentMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->access$200(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/MainViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mTopBarViewContainer:Lcom/hangame/hsp/ui/TopBarViewContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/TopBarViewContainer;->getTitle()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hideGnb()V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/ui/MainViewContainer$3;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/ui/MainViewContainer$3;-><init>(Lcom/hangame/hsp/ui/MainViewContainer;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method hideTopBar()V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/ui/MainViewContainer$5;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/ui/MainViewContainer$5;-><init>(Lcom/hangame/hsp/ui/MainViewContainer;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method isShowGnb()Z
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/MainViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->getCurrentMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->access$100(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isShowTopBar()Z
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/MainViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->getCurrentMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->access$000(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method notifyActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "MainViewContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyActivityResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/hangame/hsp/ui/MainViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->getContentView()Lcom/hangame/hsp/ui/ContentViewContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/hangame/hsp/ui/ContentViewContainer;->onActivityResult(IILandroid/content/Intent;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onClose()V
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/MainViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "MainViewContainer"

    const-string v2, "onDestroy()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->resetEnvironment()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/ContentViewContainer;->handleCloseView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mTopBarViewContainer:Lcom/hangame/hsp/ui/TopBarViewContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mTopBarViewContainer:Lcom/hangame/hsp/ui/TopBarViewContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/TopBarViewContainer;->onClose()V

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mGnbViewContainer:Lcom/hangame/hsp/ui/GnbViewContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mGnbViewContainer:Lcom/hangame/hsp/ui/GnbViewContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/GnbViewContainer;->onClose()V

    :cond_2
    invoke-direct {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->clearAllView()V

    invoke-static {}, Ljava/lang/System;->gc()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onCreate()V
    .locals 5

    sget-object v1, Lcom/hangame/hsp/ui/MainViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/ui/ViewHistoryManager;->getCurrentView()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v2, "MainViewContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mTopBarViewContainer:Lcom/hangame/hsp/ui/TopBarViewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mTopBarViewContainer:Lcom/hangame/hsp/ui/TopBarViewContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/TopBarViewContainer;->onCreate()V

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mGnbViewContainer:Lcom/hangame/hsp/ui/GnbViewContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mGnbViewContainer:Lcom/hangame/hsp/ui/GnbViewContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/GnbViewContainer;->onCreate()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onPause()V
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/MainViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "MainViewContainer"

    const-string v2, "onPause()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/ContentViewContainer;->handlePauseView()V

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mTopBarViewContainer:Lcom/hangame/hsp/ui/TopBarViewContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mTopBarViewContainer:Lcom/hangame/hsp/ui/TopBarViewContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/TopBarViewContainer;->onPause()V

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mGnbViewContainer:Lcom/hangame/hsp/ui/GnbViewContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mGnbViewContainer:Lcom/hangame/hsp/ui/GnbViewContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/GnbViewContainer;->onPause()V

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/MainViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "MainViewContainer"

    const-string v2, "onRestoreInstanceState()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/ContentViewContainer;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onResume()V
    .locals 5

    sget-object v1, Lcom/hangame/hsp/ui/MainViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/ui/ViewHistoryManager;->getCurrentView()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v2, "MainViewContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/ContentViewContainer;->handleResumeView()V

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mTopBarViewContainer:Lcom/hangame/hsp/ui/TopBarViewContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mTopBarViewContainer:Lcom/hangame/hsp/ui/TopBarViewContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/TopBarViewContainer;->onResume()V

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mGnbViewContainer:Lcom/hangame/hsp/ui/GnbViewContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mGnbViewContainer:Lcom/hangame/hsp/ui/GnbViewContainer;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/GnbViewContainer;->onResume()V

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->getMainView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/ui/HSPUiActivity;->setContentView(Landroid/view/View;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onRotate(I)V
    .locals 4

    sget-object v1, Lcom/hangame/hsp/ui/MainViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "MainViewContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRotate() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->clearAllView()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->getCurrentMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->access$300(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    invoke-virtual {v2}, Lcom/hangame/hsp/ui/ContentViewContainer;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mTopBarViewContainer:Lcom/hangame/hsp/ui/TopBarViewContainer;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->getCurrentMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->access$000(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mTopBarViewContainer:Lcom/hangame/hsp/ui/TopBarViewContainer;

    invoke-virtual {v2}, Lcom/hangame/hsp/ui/TopBarViewContainer;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mGnbViewContainer:Lcom/hangame/hsp/ui/GnbViewContainer;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->getCurrentMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->access$100(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mGnbViewContainer:Lcom/hangame/hsp/ui/GnbViewContainer;

    invoke-virtual {v2}, Lcom/hangame/hsp/ui/GnbViewContainer;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->getMainView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hangame/hsp/ui/HSPUiActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/ContentViewContainer;->onRotate(I)V

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mTopBarViewContainer:Lcom/hangame/hsp/ui/TopBarViewContainer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mTopBarViewContainer:Lcom/hangame/hsp/ui/TopBarViewContainer;

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/TopBarViewContainer;->onRotate(I)V

    :cond_4
    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mGnbViewContainer:Lcom/hangame/hsp/ui/GnbViewContainer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mGnbViewContainer:Lcom/hangame/hsp/ui/GnbViewContainer;

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/GnbViewContainer;->onRotate(I)V

    :cond_5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/MainViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "MainViewContainer"

    const-string v2, "onSaveInstanceState()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/ContentViewContainer;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onWindowFocusChanged(Z)V
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/MainViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "MainViewContainer"

    const-string v2, "onRestoreInstanceState()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/ContentViewContainer;->onWindowFocusChanged(Z)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method refreshContentView()V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/ui/MainViewContainer$2;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/ui/MainViewContainer$2;-><init>(Lcom/hangame/hsp/ui/MainViewContainer;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/ui/MainViewContainer$7;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/ui/MainViewContainer$7;-><init>(Lcom/hangame/hsp/ui/MainViewContainer;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setTopBarButtonView(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/ui/MainViewContainer$8;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/ui/MainViewContainer$8;-><init>(Lcom/hangame/hsp/ui/MainViewContainer;Landroid/view/View;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setTopbarColor(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/ui/MainViewContainer$9;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/ui/MainViewContainer$9;-><init>(Lcom/hangame/hsp/ui/MainViewContainer;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method showContentView(Lcom/hangame/hsp/ui/HSPUiUri;)Z
    .locals 4

    sget-object v1, Lcom/hangame/hsp/ui/MainViewContainer;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "MainViewContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showContentView(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->resetEnvironment()V

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/MainViewContainer;->createContentView(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/ui/ContentViewContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    invoke-virtual {v2}, Lcom/hangame/hsp/ui/ContentViewContainer;->handleCloseView()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    :cond_0
    invoke-direct {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->clearContentView()V

    iput-object v0, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    invoke-direct {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->getCurrentMainViewContainer()Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;

    move-result-object v2

    invoke-static {v2}, Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;->access$300(Lcom/hangame/hsp/ui/MainViewContainer$ViewContainer;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/ui/MainViewContainer;->mContentViewContainer:Lcom/hangame/hsp/ui/ContentViewContainer;

    invoke-virtual {v3}, Lcom/hangame/hsp/ui/ContentViewContainer;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/MainViewContainer;->handleViewParameter(Lcom/hangame/hsp/ui/HSPUiUri;)V

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/ContentViewContainer;->handleCreateView()V

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/MainViewContainer;->onResume()V

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/ui/ViewHistoryManager;->pop()Lcom/hangame/hsp/ui/HSPUiUri;

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method showGnb()V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/ui/MainViewContainer$4;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/ui/MainViewContainer$4;-><init>(Lcom/hangame/hsp/ui/MainViewContainer;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method showTopBar()V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/ui/MainViewContainer$6;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/ui/MainViewContainer$6;-><init>(Lcom/hangame/hsp/ui/MainViewContainer;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateContentView()V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/ui/MainViewContainer$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/ui/MainViewContainer$1;-><init>(Lcom/hangame/hsp/ui/MainViewContainer;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
