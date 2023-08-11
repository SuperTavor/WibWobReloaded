.class public Lcom/hangame/hsp/ui/view/ToastTermsView;
.super Lcom/hangame/hsp/ui/ContentViewContainer;


# static fields
.field public static LAYOUT_WIDTH_PARAM_LAND:Ljava/lang/String; = null

.field public static LAYOUT_WIDTH_PARAM_PORT:Ljava/lang/String; = null

.field public static RETURN_PARAM:Ljava/lang/String; = null

.field public static SCREEN_HEIGHT_PARAM_LAND:Ljava/lang/String; = null

.field public static SCREEN_HEIGHT_PARAM_PORT:Ljava/lang/String; = null

.field public static SCREEN_WIDTH_PARAM_LAND:Ljava/lang/String; = null

.field public static SCREEN_WIDTH_PARAM_PORT:Ljava/lang/String; = null

.field public static SCROLL_HEIGHT_PARAM_LAND:Ljava/lang/String; = null

.field public static SCROLL_HEIGHT_PARAM_PORT:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ToastTermsView"

.field private static mIsCreateView:Z

.field private static mIsGameUseChecked:Z

.field private static mIsPortView:Z

.field private static mIsPrivacyChecked:Z

.field private static mLandView:Landroid/view/View;

.field private static mMainView:Landroid/view/View;

.field private static mPortView:Landroid/view/View;


# instance fields
.field private mOverDisplayHeight:I

.field private mOverDisplayWidth:I

.field private mUri:Lcom/hangame/hsp/ui/HSPUiUri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "returnParam"

    sput-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->RETURN_PARAM:Ljava/lang/String;

    const-string v0, "screenWidthParamPort"

    sput-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCREEN_WIDTH_PARAM_PORT:Ljava/lang/String;

    const-string v0, "screenHeightParamPort"

    sput-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCREEN_HEIGHT_PARAM_PORT:Ljava/lang/String;

    const-string v0, "scrollHeightParamPort"

    sput-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCROLL_HEIGHT_PARAM_PORT:Ljava/lang/String;

    const-string v0, "layoutWidthParamPort"

    sput-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->LAYOUT_WIDTH_PARAM_PORT:Ljava/lang/String;

    const-string v0, "screenWidthParamLand"

    sput-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCREEN_WIDTH_PARAM_LAND:Ljava/lang/String;

    const-string v0, "screenHeightParamLand"

    sput-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCREEN_HEIGHT_PARAM_LAND:Ljava/lang/String;

    const-string v0, "scrollHeightParamLand"

    sput-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCROLL_HEIGHT_PARAM_LAND:Ljava/lang/String;

    const-string v0, "layoutWidthParamLand"

    sput-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->LAYOUT_WIDTH_PARAM_LAND:Ljava/lang/String;

    sput-boolean v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsPortView:Z

    sput-boolean v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsCreateView:Z

    sput-boolean v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsPrivacyChecked:Z

    sput-boolean v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsGameUseChecked:Z

    return-void
.end method

.method public constructor <init>(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/ContentViewContainer;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    iput v3, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mOverDisplayHeight:I

    iput v3, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mOverDisplayWidth:I

    const-string v0, "ToastTermsView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToastTermsView  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sput-boolean v3, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsCreateView:Z

    const-string v0, "hsp_toast_terms_alert_port"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mPortView:Landroid/view/View;

    const-string v0, "hsp_toast_terms_alert_land"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mLandView:Landroid/view/View;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->setViewAndEvent(I)V

    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/ui/view/ToastTermsView$1;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/ui/view/ToastTermsView$1;-><init>(Lcom/hangame/hsp/ui/view/ToastTermsView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private CheckScreenSizeAndSave()Z
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    const-string v1, "dialoglayout"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :try_start_0
    iget-object v6, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v7, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCREEN_WIDTH_PARAM_PORT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v6, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v7, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCREEN_HEIGHT_PARAM_PORT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    sget-boolean v6, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsPortView:Z

    if-nez v6, :cond_0

    if-gt v1, v4, :cond_1

    :cond_0
    sget-boolean v6, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsPortView:Z

    if-ne v6, v3, :cond_2

    if-le v0, v5, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v6, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCREEN_WIDTH_PARAM_PORT:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v6, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCREEN_HEIGHT_PARAM_PORT:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v4, v0, v5}, Lcom/hangame/hsp/ui/view/ToastTermsView;->checkDisplaySize(IIII)V

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->resizeScrollView()V

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->refreshContentView()V

    move v0, v3

    :goto_1
    return v0

    :cond_2
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private SetScreenLayout()V
    .locals 8

    const/4 v0, 0x0

    sget-object v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    const-string v2, "dialoglayout"

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0, v0}, Landroid/view/View;->measure(II)V

    const-string v1, "ToastTermsView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToastTermsView getMeasuredHeight() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getHeight() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-boolean v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsPortView:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v2, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCREEN_WIDTH_PARAM_PORT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :try_start_1
    iget-object v1, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v2, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCREEN_HEIGHT_PARAM_PORT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :try_start_2
    iget-object v1, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v4, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCROLL_HEIGHT_PARAM_PORT:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    :try_start_3
    iget-object v4, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v5, Lcom/hangame/hsp/ui/view/ToastTermsView;->LAYOUT_WIDTH_PARAM_PORT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    :goto_0
    move v4, v2

    move v5, v3

    move v2, v0

    move v3, v1

    :goto_1
    if-eqz v5, :cond_0

    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    const-string v1, "game_scroll"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    sget-object v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    const-string v7, "privacy_scroll"

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    const-string v1, "gameuselayout"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    const-string v3, "privacylayout"

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return-void

    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v2, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCREEN_WIDTH_PARAM_LAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v3

    :try_start_5
    iget-object v1, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v2, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCREEN_HEIGHT_PARAM_LAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v2

    :try_start_6
    iget-object v1, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v4, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCROLL_HEIGHT_PARAM_LAND:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result v1

    :try_start_7
    iget-object v4, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v5, Lcom/hangame/hsp/ui/view/ToastTermsView;->LAYOUT_WIDTH_PARAM_LAND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_2
    move v4, v2

    move v5, v3

    move v2, v0

    move v3, v1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    move v1, v0

    move v2, v0

    goto :goto_2

    :catch_2
    move-exception v1

    move v1, v0

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method static synthetic access$000()Landroid/view/View;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hangame/hsp/ui/view/ToastTermsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->SetScreenLayout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/hangame/hsp/ui/view/ToastTermsView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->closeView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/hangame/hsp/ui/view/ToastTermsView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->closeView()V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsCreateView:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/hangame/hsp/ui/view/ToastTermsView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->CheckScreenSizeAndSave()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400()Landroid/view/View;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mPortView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500()Landroid/view/View;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mLandView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/hangame/hsp/ui/view/ToastTermsView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->refreshContentView()V

    return-void
.end method

.method static synthetic access$200(Lcom/hangame/hsp/ui/view/ToastTermsView;)Lcom/hangame/hsp/ui/HSPUiUri;
    .locals 1

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->getPreviousView()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsPortView:Z

    return v0
.end method

.method static synthetic access$400(Lcom/hangame/hsp/ui/view/ToastTermsView;)Lcom/hangame/hsp/ui/HSPUiUri;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hangame/hsp/ui/view/ToastTermsView;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hangame/hsp/ui/view/ToastTermsView;->checkDisplaySize(IIII)V

    return-void
.end method

.method static synthetic access$600(Lcom/hangame/hsp/ui/view/ToastTermsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->resizeScrollView()V

    return-void
.end method

.method static synthetic access$700(Lcom/hangame/hsp/ui/view/ToastTermsView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->refreshContentView()V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsPrivacyChecked:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    sput-boolean p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsPrivacyChecked:Z

    return p0
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsGameUseChecked:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    sput-boolean p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsGameUseChecked:Z

    return p0
.end method

.method private checkDisplaySize(IIII)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    const-string v1, "dialoglayout"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    sub-int v0, p3, p4

    iput v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mOverDisplayHeight:I

    iget v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mOverDisplayHeight:I

    if-gez v0, :cond_0

    iput v3, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mOverDisplayHeight:I

    :cond_0
    const-string v0, "ToastTermsView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " dialogHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dialogLayout.getHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ToastTermsView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOverDisplayHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mOverDisplayHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v0, p1, p2

    iput v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mOverDisplayWidth:I

    iget v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mOverDisplayWidth:I

    if-gez v0, :cond_1

    iput v3, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mOverDisplayWidth:I

    :cond_1
    const-string v0, "ToastTermsView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " dialogWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dialogLayout.getWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ToastTermsView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOverDisplayWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mOverDisplayWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resizeScrollView()V
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    const-string v1, "dialoglayout"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    sget-boolean v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsPortView:Z

    if-ne v0, v8, :cond_0

    iget v1, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mOverDisplayWidth:I

    iget v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mOverDisplayHeight:I

    div-int/lit8 v0, v0, 0x2

    move v2, v0

    move v3, v1

    :goto_0
    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    const-string v1, "game_scroll"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    sget-object v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    const-string v5, "privacy_scroll"

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    sub-int v2, v5, v2

    const-string v5, "ToastTermsView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resizedOneScrollHeight : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v5, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mOverDisplayHeight:I

    sub-int/2addr v1, v5

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-boolean v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsPortView:Z

    if-ne v0, v8, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCROLL_HEIGHT_PARAM_PORT:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCREEN_HEIGHT_PARAM_PORT:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    const-string v1, "gameuselayout"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    const-string v2, "privacylayout"

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v3

    const-string v3, "ToastTermsView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resizedOneLayoutWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mOverDisplayWidth:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget-boolean v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsPortView:Z

    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->LAYOUT_WIDTH_PARAM_PORT:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCREEN_WIDTH_PARAM_PORT:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v0, "ToastTermsView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result : dialogLayout.getMeasuredHeight() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "result :  dialogLayout.getHeight() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ToastTermsView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result : dialogLayout.getMeasuredWidth() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "result :  dialogLayout.getWidth() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mOverDisplayWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mOverDisplayHeight:I

    move v2, v0

    move v3, v1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCROLL_HEIGHT_PARAM_LAND:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCREEN_HEIGHT_PARAM_LAND:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->LAYOUT_WIDTH_PARAM_LAND:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mUri:Lcom/hangame/hsp/ui/HSPUiUri;

    sget-object v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->SCREEN_WIDTH_PARAM_LAND:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private setViewEvent()V
    .locals 4

    const/4 v2, 0x0

    const-string v0, "ToastTermsView"

    const-string v1, "setViewEvent"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsPrivacyChecked:Z

    sput-boolean v2, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsGameUseChecked:Z

    new-instance v1, Lcom/hangame/hsp/ui/view/ToastTermsView$2;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/ui/view/ToastTermsView$2;-><init>(Lcom/hangame/hsp/ui/view/ToastTermsView;)V

    new-instance v2, Lcom/hangame/hsp/ui/view/ToastTermsView$3;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/ui/view/ToastTermsView$3;-><init>(Lcom/hangame/hsp/ui/view/ToastTermsView;)V

    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    const-string v3, "privacy_agree"

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "hsp_toast_agree_normal"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    const-string v1, "gameuse_agree"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "hsp_toast_agree_normal"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    const-string v1, "gameuse_webview"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/hangame/hsp/ui/view/ToastTermsView$4;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/ui/view/ToastTermsView$4;-><init>(Lcom/hangame/hsp/ui/view/ToastTermsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    const-string v1, "privacy_webview"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/hangame/hsp/ui/view/ToastTermsView$5;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/ui/view/ToastTermsView$5;-><init>(Lcom/hangame/hsp/ui/view/ToastTermsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onBackButtonPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->closeView()V

    return-void
.end method

.method protected onRotate(I)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsCreateView:Z

    invoke-virtual {p0, p1}, Lcom/hangame/hsp/ui/view/ToastTermsView;->setViewAndEvent(I)V

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->refreshContentView()V

    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/ui/view/ToastTermsView$7;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/ui/view/ToastTermsView$7;-><init>(Lcom/hangame/hsp/ui/view/ToastTermsView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/hangame/hsp/ui/ContentViewContainer;->onWindowFocusChanged(Z)V

    const-string v0, "ToastTermsView"

    const-string v1, "onWindowFocusChanged"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->CheckScreenSizeAndSave()Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsCreateView:Z

    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/ui/view/ToastTermsView$6;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/ui/view/ToastTermsView$6;-><init>(Lcom/hangame/hsp/ui/view/ToastTermsView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public setViewAndEvent(I)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "ToastTermsView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewAndEvent  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_0

    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mPortView:Landroid/view/View;

    sput-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    sput-boolean v3, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsPortView:Z

    :goto_0
    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->setView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/ToastTermsView;->setViewEvent()V

    return-void

    :cond_0
    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mLandView:Landroid/view/View;

    sput-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mMainView:Landroid/view/View;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->mIsPortView:Z

    goto :goto_0
.end method
