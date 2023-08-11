.class public Lcom/example/util/YWPWebView2;
.super Landroid/webkit/WebView;


# static fields
.field public static final CUSTOMURLSCHEME_CLOSEWV:Ljava/lang/String; = "closewebview::"

.field public static final CUSTOMURLSCHEME_ERRORWV:Ljava/lang/String; = "errorwebview::"

.field public static final CUSTOMURLSCHEME_EXEGMBROWSER:Ljava/lang/String; = "exeGMBrowser::"

.field public static final CUSTOMURLSCHEME_GETURLHASH:Ljava/lang/String; = "geturlhash::"

.field public static final CUSTOMURLSCHEME_PASSMEDALMISSION:Ljava/lang/String; = "passmedalmission::"

.field public static final CUSTOMURLSCHEME_PLAYAUDIO:Ljava/lang/String; = "playaudio::"

.field public static final METHOD_KEY:Ljava/lang/String; = "coresng::command::"

.field public static final METHOD_SEPARATER:Ljava/lang/String; = "::"

.field private static final a:Ljava/lang/String;

.field private static c:Z


# instance fields
.field private b:I

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Lcom/example/util/bp;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/example/util/YWPWebView2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/util/YWPWebView2;->a:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/example/util/YWPWebView2;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/FrameLayout;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/example/util/YWPWebView2;->d:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/example/util/YWPWebView2;->e:Z

    iput-boolean v2, p0, Lcom/example/util/YWPWebView2;->f:Z

    iput-boolean v2, p0, Lcom/example/util/YWPWebView2;->g:Z

    iput-boolean v1, p0, Lcom/example/util/YWPWebView2;->h:Z

    iput-boolean v2, p0, Lcom/example/util/YWPWebView2;->i:Z

    iput v1, p0, Lcom/example/util/YWPWebView2;->j:I

    iput v1, p0, Lcom/example/util/YWPWebView2;->k:I

    iput v1, p0, Lcom/example/util/YWPWebView2;->l:I

    iput v1, p0, Lcom/example/util/YWPWebView2;->m:I

    iput-boolean v1, p0, Lcom/example/util/YWPWebView2;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/util/YWPWebView2;->p:Landroid/view/View;

    iput p2, p0, Lcom/example/util/YWPWebView2;->b:I

    invoke-virtual {p0, v2}, Lcom/example/util/YWPWebView2;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/example/util/YWPWebView2;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/example/util/YWPWebView2;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p0}, Lcom/example/util/YWPWebView2;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    invoke-virtual {p0}, Lcom/example/util/YWPWebView2;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v0, "ywpwebview"

    invoke-virtual {p0, p0, v0}, Lcom/example/util/YWPWebView2;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/example/util/YWPWebView2;->setBackgroundColor(I)V

    invoke-virtual {p0, v1}, Lcom/example/util/YWPWebView2;->setLongClickable(Z)V

    new-instance v0, Lcom/example/util/bk;

    invoke-direct {v0, p0}, Lcom/example/util/bk;-><init>(Lcom/example/util/YWPWebView2;)V

    invoke-virtual {p0, v0}, Lcom/example/util/YWPWebView2;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "removeJavascriptInterface"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "searchBoxJavaBridge_"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p3, p0, Lcom/example/util/YWPWebView2;->q:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/example/util/bp;

    invoke-direct {v0, p0, p0}, Lcom/example/util/bp;-><init>(Lcom/example/util/YWPWebView2;Lcom/example/util/YWPWebView2;)V

    iput-object v0, p0, Lcom/example/util/YWPWebView2;->o:Lcom/example/util/bp;

    iget-object v0, p0, Lcom/example/util/YWPWebView2;->o:Lcom/example/util/bp;

    invoke-virtual {p0, v0}, Lcom/example/util/YWPWebView2;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v0}, Lcom/example/util/YWPWebView2;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/example/util/YWPWebView2;)V
    .locals 2

    iget-object v0, p3, Lcom/example/util/YWPWebView2;->q:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p2, v0}, Lcom/example/util/YWPWebView2;-><init>(Landroid/content/Context;ILandroid/widget/FrameLayout;)V

    iget-boolean v0, p3, Lcom/example/util/YWPWebView2;->e:Z

    iput-boolean v0, p0, Lcom/example/util/YWPWebView2;->e:Z

    iget-boolean v0, p3, Lcom/example/util/YWPWebView2;->f:Z

    iput-boolean v0, p0, Lcom/example/util/YWPWebView2;->f:Z

    iget-boolean v0, p3, Lcom/example/util/YWPWebView2;->g:Z

    iput-boolean v0, p0, Lcom/example/util/YWPWebView2;->g:Z

    iget-boolean v0, p3, Lcom/example/util/YWPWebView2;->h:Z

    iput-boolean v0, p0, Lcom/example/util/YWPWebView2;->h:Z

    iget-boolean v0, p3, Lcom/example/util/YWPWebView2;->i:Z

    iput-boolean v0, p0, Lcom/example/util/YWPWebView2;->i:Z

    iget v0, p3, Lcom/example/util/YWPWebView2;->j:I

    iput v0, p0, Lcom/example/util/YWPWebView2;->j:I

    iget v0, p3, Lcom/example/util/YWPWebView2;->k:I

    iput v0, p0, Lcom/example/util/YWPWebView2;->k:I

    iget v0, p3, Lcom/example/util/YWPWebView2;->l:I

    iput v0, p0, Lcom/example/util/YWPWebView2;->l:I

    iget v0, p3, Lcom/example/util/YWPWebView2;->m:I

    iput v0, p0, Lcom/example/util/YWPWebView2;->m:I

    iget-boolean v0, p3, Lcom/example/util/YWPWebView2;->n:Z

    iput-boolean v0, p0, Lcom/example/util/YWPWebView2;->n:Z

    iget-object v0, p0, Lcom/example/util/YWPWebView2;->o:Lcom/example/util/bp;

    iget-object v1, p3, Lcom/example/util/YWPWebView2;->o:Lcom/example/util/bp;

    invoke-virtual {v0, v1}, Lcom/example/util/bp;->a(Lcom/example/util/bp;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/example/util/YWPWebView2;-><init>(Landroid/content/Context;ILandroid/widget/FrameLayout;)V

    return-void
.end method

.method static synthetic a(Lcom/example/util/YWPWebView2;)I
    .locals 1

    iget v0, p0, Lcom/example/util/YWPWebView2;->b:I

    return v0
.end method

.method static synthetic a(Lcom/example/util/YWPWebView2;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/example/util/YWPWebView2;->setLVisibility(I)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/example/util/YWPWebView2;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/example/util/YWPWebView2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/example/util/YWPWebView2;->i:Z

    return p1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/example/util/YWPWebView2;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/example/util/YWPWebView2;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/util/YWPWebView2;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/example/util/YWPWebView2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/example/util/YWPWebView2;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/example/util/YWPWebView2;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/util/YWPWebView2;->n:Z

    return v0
.end method

.method static synthetic d(Lcom/example/util/YWPWebView2;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/util/YWPWebView2;->h:Z

    return v0
.end method

.method static synthetic e(Lcom/example/util/YWPWebView2;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/util/YWPWebView2;->i:Z

    return v0
.end method

.method static synthetic f(Lcom/example/util/YWPWebView2;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/util/YWPWebView2;->d:Ljava/lang/String;

    return-object v0
.end method

.method private setLVisibility(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/util/YWPWebView2;->f:Z

    :goto_0
    iget-boolean v0, p0, Lcom/example/util/YWPWebView2;->e:Z

    invoke-virtual {p0, v0}, Lcom/example/util/YWPWebView2;->setGVisibility(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/util/YWPWebView2;->f:Z

    goto :goto_0
.end method


# virtual methods
.method public enableCustomFont(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/example/util/YWPWebView2;->g:Z

    return-void
.end method

.method public getEnableCustomFont()Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/util/YWPWebView2;->g:Z

    return v0
.end method

.method public getSource(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/example/util/bl;

    invoke-direct {v1, p0, p1}, Lcom/example/util/bl;-><init>(Lcom/example/util/YWPWebView2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSource2(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-boolean v0, Lcom/example/util/YWPWebView2;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/example/util/YWPWebView2;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onKeyDownBack()Z
    .locals 1

    iget-object v0, p0, Lcom/example/util/YWPWebView2;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openOutSideCSSite(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/example/util/bm;

    invoke-direct {v1, p0, p1}, Lcom/example/util/bm;-><init>(Lcom/example/util/YWPWebView2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/YWPWebView2;->d:Ljava/lang/String;

    return-void
.end method

.method public setGVisibility(Z)V
    .locals 2

    const/16 v0, 0x8

    iput-boolean p1, p0, Lcom/example/util/YWPWebView2;->e:Z

    iget-boolean v1, p0, Lcom/example/util/YWPWebView2;->e:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/example/util/YWPWebView2;->f:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/example/util/YWPWebView2;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/example/util/YWPWebView2;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOneLoadCustomFont(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/example/util/YWPWebView2;->h:Z

    return-void
.end method

.method public setScalesPageToFit(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/example/util/YWPWebView2;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    return-void
.end method

.method public setWebViewRect()V
    .locals 4

    iget v0, p0, Lcom/example/util/YWPWebView2;->j:I

    iget v1, p0, Lcom/example/util/YWPWebView2;->k:I

    iget v2, p0, Lcom/example/util/YWPWebView2;->l:I

    iget v3, p0, Lcom/example/util/YWPWebView2;->m:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/example/util/YWPWebView2;->setWebViewRect(IIII)V

    return-void
.end method

.method public setWebViewRect(IIII)V
    .locals 2

    const/4 v1, -0x2

    iput p1, p0, Lcom/example/util/YWPWebView2;->j:I

    iput p2, p0, Lcom/example/util/YWPWebView2;->k:I

    iput p3, p0, Lcom/example/util/YWPWebView2;->l:I

    iput p4, p0, Lcom/example/util/YWPWebView2;->m:I

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Lcom/example/util/YWPWebView2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public webVisible()V
    .locals 4

    new-instance v0, Ljava/util/Timer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/example/util/bn;

    invoke-direct {v1, p0, p0, v0}, Lcom/example/util/bn;-><init>(Lcom/example/util/YWPWebView2;Lcom/example/util/YWPWebView2;Ljava/util/Timer;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
