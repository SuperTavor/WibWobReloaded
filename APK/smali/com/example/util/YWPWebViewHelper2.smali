.class public Lcom/example/util/YWPWebViewHelper2;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static final b:Ljava/lang/String;

.field private static c:Landroid/os/Handler;

.field private static d:Lcom/example/sgf/MainActivity;

.field private static e:Landroid/widget/FrameLayout;

.field private static f:Landroid/util/SparseArray;

.field private static g:I

.field private static h:[B

.field private static i:Ljava/lang/String;

.field public static userAgentStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/example/util/YWPWebViewHelper2;->a:Z

    const-class v0, Lcom/example/util/YWPWebViewHelper2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/util/YWPWebViewHelper2;->b:Ljava/lang/String;

    sput v1, Lcom/example/util/YWPWebViewHelper2;->g:I

    const-string v0, ""

    sput-object v0, Lcom/example/util/YWPWebViewHelper2;->i:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/example/util/YWPWebViewHelper2;->userAgentStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/example/util/YWPWebViewHelper2;->e:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/example/util/YWPWebViewHelper2;->c:Landroid/os/Handler;

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    sput-object v0, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/example/util/YWPWebViewHelper2;->f:Landroid/util/SparseArray;

    return-void
.end method

.method public static _closeWebView(I)V
    .locals 0

    invoke-static {p0}, Lcom/example/util/YWPWebViewHelper2;->closeWebView(I)V

    return-void
.end method

.method public static _didFailLoading(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/util/YWPWebViewHelper2;->didFailLoading(ILjava/lang/String;)V

    return-void
.end method

.method public static _didFinishLoading(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/util/YWPWebViewHelper2;->didFinishLoading(ILjava/lang/String;)V

    return-void
.end method

.method public static _errorWebView(I)V
    .locals 0

    invoke-static {p0}, Lcom/example/util/YWPWebViewHelper2;->errorWebView(I)V

    return-void
.end method

.method public static _getUrlHash(I)V
    .locals 0

    invoke-static {p0}, Lcom/example/util/YWPWebViewHelper2;->getUrlHash(I)V

    return-void
.end method

.method public static _onPageStarted(ILjava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/example/util/YWPWebViewHelper2;->onPageStarted(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static _passMedalMission(ILjava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/util/YWPWebViewHelper2;->passMedalMission(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static _shouldStartLoading(ILjava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/example/util/YWPWebViewHelper2;->shouldStartLoading(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static _soundPlay(ILjava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/example/util/YWPWebViewHelper2;->hex2bin(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/util/YWPWebViewHelper2;->soundPlay(I[B)V

    return-void
.end method

.method static synthetic a()Lcom/example/sgf/MainActivity;
    .locals 1

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    return-object v0
.end method

.method static synthetic b()Landroid/widget/FrameLayout;
    .locals 1

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic c()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->f:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static callInMainThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v1, Lcom/example/util/YWPWebViewHelper2;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static canGoBack(I)Z
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/example/util/bt;

    invoke-direct {v0, p0}, Lcom/example/util/bt;-><init>(I)V

    :try_start_0
    invoke-static {v0}, Lcom/example/util/YWPWebViewHelper2;->callInMainThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static canGoForward(I)Z
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/example/util/bu;

    invoke-direct {v0, p0}, Lcom/example/util/bu;-><init>(I)V

    :try_start_0
    invoke-static {v0}, Lcom/example/util/YWPWebViewHelper2;->callInMainThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private static native closeWebView(I)V
.end method

.method public static createCustomFont()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/example/util/YWPWebViewHelper2;->i:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/example/util/YWPWebViewHelper2;->h:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createWebView()I
    .locals 3

    sget v0, Lcom/example/util/YWPWebViewHelper2;->g:I

    sget-object v1, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    new-instance v2, Lcom/example/util/cb;

    invoke-direct {v2, v0}, Lcom/example/util/cb;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget v0, Lcom/example/util/YWPWebViewHelper2;->g:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/example/util/YWPWebViewHelper2;->g:I

    return v0
.end method

.method private static native didFailLoading(ILjava/lang/String;)V
.end method

.method private static native didFinishLoading(ILjava/lang/String;)V
.end method

.method public static enableCustomFont(IZ)V
    .locals 2

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    new-instance v1, Lcom/example/util/bz;

    invoke-direct {v1, p0, p1}, Lcom/example/util/bz;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static native errorWebView(I)V
.end method

.method public static getCustomFontFileName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->i:Ljava/lang/String;

    return-object v0
.end method

.method private static native getUrlHash(I)V
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->userAgentStr:Ljava/lang/String;

    return-object v0
.end method

.method public static goBack(I)V
    .locals 2

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    new-instance v1, Lcom/example/util/bv;

    invoke-direct {v1, p0}, Lcom/example/util/bv;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static goForward(I)V
    .locals 2

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    new-instance v1, Lcom/example/util/bw;

    invoke-direct {v1, p0}, Lcom/example/util/bw;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static hex2bin(Ljava/lang/String;)[B
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_1

    new-array v0, v1, [B

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_1
    :try_start_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static loadData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget-object v6, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    new-instance v0, Lcom/example/util/ch;

    move v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/example/util/ch;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadHTMLString(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    new-instance v1, Lcom/example/util/ci;

    invoke-direct {v1, p0, p2, p1}, Lcom/example/util/ci;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadUrl(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    new-instance v1, Lcom/example/util/cj;

    invoke-direct {v1, p0, p1}, Lcom/example/util/cj;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onKeyDownBack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static native onPageStarted(ILjava/lang/String;)Z
.end method

.method private static native passMedalMission(ILjava/lang/String;)V
.end method

.method public static reload(I)V
    .locals 2

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    new-instance v1, Lcom/example/util/bs;

    invoke-direct {v1, p0}, Lcom/example/util/bs;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeCustomFont()V
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/example/util/YWPWebViewHelper2;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/example/util/YWPWebViewHelper2;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File Delete true:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/example/util/YWPWebViewHelper2;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/example/util/YWPWebViewHelper2;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File Delete failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/example/util/YWPWebViewHelper2;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static removeWebView(I)V
    .locals 2

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->removeCustomFont()V

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    new-instance v1, Lcom/example/util/cd;

    invoke-direct {v1, p0}, Lcom/example/util/cd;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static replaceLoadDataWithBaseURL(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget-object v6, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    new-instance v0, Lcom/example/util/cc;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/example/util/cc;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static resetUserAgent()V
    .locals 2

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    invoke-virtual {v1}, Lcom/example/sgf/MainActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/util/YWPWebViewHelper2;->userAgentStr:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/example/util/bq;

    invoke-direct {v1}, Lcom/example/util/bq;-><init>()V

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static setFontByteAry(Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x2800

    new-array v0, v0, [B

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sput-object v0, Lcom/example/util/YWPWebViewHelper2;->h:[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/util/YWPWebViewHelper2;->i:Ljava/lang/String;

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->removeCustomFont()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static setOneLoadCustomFont(IZ)V
    .locals 2

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    new-instance v1, Lcom/example/util/cf;

    invoke-direct {v1, p0, p1}, Lcom/example/util/cf;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setScalesPageToFit(IZ)V
    .locals 2

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    new-instance v1, Lcom/example/util/ca;

    invoke-direct {v1, p0, p1}, Lcom/example/util/ca;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setVisible(IZ)V
    .locals 2

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    new-instance v1, Lcom/example/util/ce;

    invoke-direct {v1, p0, p1}, Lcom/example/util/ce;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setWebViewRect(IIIII)V
    .locals 7

    sget-object v6, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    new-instance v0, Lcom/example/util/cg;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/example/util/cg;-><init>(IIIII)V

    invoke-virtual {v6, v0}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static native shouldStartLoading(ILjava/lang/String;)Z
.end method

.method public static showOutsideBrowser(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    new-instance v1, Lcom/example/util/bx;

    invoke-direct {v1, p1}, Lcom/example/util/bx;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showOutsideBrowserOnPageStarted(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    new-instance v1, Lcom/example/util/by;

    invoke-direct {v1, p0, p1}, Lcom/example/util/by;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static native soundPlay(I[B)V
.end method

.method public static stopLoading(I)V
    .locals 2

    sget-object v0, Lcom/example/util/YWPWebViewHelper2;->d:Lcom/example/sgf/MainActivity;

    new-instance v1, Lcom/example/util/br;

    invoke-direct {v1, p0}, Lcom/example/util/br;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
