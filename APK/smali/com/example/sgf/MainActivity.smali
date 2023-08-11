.class public Lcom/example/sgf/MainActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field public static final OutputLog:Z = true

.field public static final REGION_NO_EU:I = 0x3

.field public static final REGION_NO_KR:I = 0x1

.field public static final REGION_NO_TW:I = 0x2

.field public static final REGION_NO_US:I

.field static final a:Ljava/lang/String;

.field private static e:Lcom/example/sgf/MainActivity;

.field public static mKakaoLinkResult:Z

.field private static o:Ljava/lang/String;

.field private static p:D

.field private static q:Z

.field private static r:Z

.field private static s:Z

.field private static t:Landroid/net/Uri;

.field private static u:Z

.field private static v:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private static w:I

.field private static x:J

.field private static y:Lcom/example/sgf/k;


# instance fields
.field protected b:Landroid/widget/FrameLayout;

.field private c:I

.field private d:I

.field private f:Lcom/example/sgf/n;

.field private g:Lcom/example/util/YWPEditBoxHandler;

.field private h:Lcom/example/util/YWPSoundHelper;

.field private i:Lcom/example/util/YWPWebViewHelper2;

.field private j:Lcom/example/util/r;

.field private k:Lcom/example/util/ag;

.field private l:Lcom/example/util/bd;

.field private m:I

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "SGF"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-class v0, Lcom/example/sgf/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    sput-object v3, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    const-string v0, ""

    sput-object v0, Lcom/example/sgf/MainActivity;->o:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/example/sgf/MainActivity;->p:D

    sput-boolean v2, Lcom/example/sgf/MainActivity;->q:Z

    sput-boolean v2, Lcom/example/sgf/MainActivity;->r:Z

    sput-boolean v2, Lcom/example/sgf/MainActivity;->s:Z

    sput-object v3, Lcom/example/sgf/MainActivity;->t:Landroid/net/Uri;

    sput-boolean v2, Lcom/example/sgf/MainActivity;->u:Z

    sput-boolean v2, Lcom/example/sgf/MainActivity;->mKakaoLinkResult:Z

    const/4 v0, 0x1

    sput v0, Lcom/example/sgf/MainActivity;->w:I

    sput-object v3, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/example/sgf/MainActivity;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/example/sgf/MainActivity;->d:I

    iput-object v1, p0, Lcom/example/sgf/MainActivity;->f:Lcom/example/sgf/n;

    iput-object v1, p0, Lcom/example/sgf/MainActivity;->g:Lcom/example/util/YWPEditBoxHandler;

    iput-object v1, p0, Lcom/example/sgf/MainActivity;->h:Lcom/example/util/YWPSoundHelper;

    iput-object v1, p0, Lcom/example/sgf/MainActivity;->i:Lcom/example/util/YWPWebViewHelper2;

    iput-object v1, p0, Lcom/example/sgf/MainActivity;->j:Lcom/example/util/r;

    iput-object v1, p0, Lcom/example/sgf/MainActivity;->k:Lcom/example/util/ag;

    iput-object v1, p0, Lcom/example/sgf/MainActivity;->l:Lcom/example/util/bd;

    iput v2, p0, Lcom/example/sgf/MainActivity;->m:I

    iput-boolean v2, p0, Lcom/example/sgf/MainActivity;->n:Z

    iput-object v1, p0, Lcom/example/sgf/MainActivity;->b:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic a(Lcom/example/sgf/MainActivity;I)I
    .locals 0

    iput p1, p0, Lcom/example/sgf/MainActivity;->m:I

    return p1
.end method

.method static synthetic a()Lcom/example/sgf/MainActivity;
    .locals 1

    sget-object v0, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Landroid/widget/FrameLayout;Landroid/view/SurfaceView;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/example/util/YWPQRCodeHelper;->a(Landroid/app/Activity;Landroid/widget/FrameLayout;Landroid/view/SurfaceView;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/example/sgf/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/example/sgf/MainActivity;->t:Landroid/net/Uri;

    sget-object v0, Lcom/example/sgf/MainActivity;->t:Landroid/net/Uri;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenURL_String : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/example/sgf/MainActivity;->t:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/example/sgf/MainActivity;->f:Lcom/example/sgf/n;

    invoke-virtual {v0}, Lcom/example/sgf/n;->c()V

    :cond_2
    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/example/sgf/MainActivity;->u:Z

    return p0
.end method

.method private b()V
    .locals 0

    invoke-static {}, Lcom/example/util/YWPQRCodeHelper;->e()V

    return-void
.end method

.method private b(Landroid/app/Activity;Landroid/widget/FrameLayout;Landroid/view/SurfaceView;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/example/util/YWPMyPuniHelper;->a(Landroid/app/Activity;Landroid/widget/FrameLayout;Landroid/view/SurfaceView;)V

    return-void
.end method

.method private c()V
    .locals 0

    invoke-static {}, Lcom/example/util/YWPQRCodeHelper;->f()V

    return-void
.end method

.method public static cancelCaptureMyPuni()V
    .locals 0

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->g()V

    return-void
.end method

.method public static cancelCaptureQRCode()V
    .locals 0

    invoke-static {}, Lcom/example/util/YWPQRCodeHelper;->d()V

    return-void
.end method

.method public static changeMyPuniCamera()V
    .locals 0

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->i()V

    return-void
.end method

.method public static checkBrightControlable()Z
    .locals 1

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->k()Z

    move-result v0

    return v0
.end method

.method public static checkDirJni(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/example/util/YWPMyPuniHelper;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static checkRoot()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/sgf/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.noshufou.android.su"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method public static clearURLSchemeUri()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/example/sgf/MainActivity;->t:Landroid/net/Uri;

    return-void
.end method

.method public static connectGoogleApi(J)V
    .locals 4

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "connectGoogleApi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-wide p0, Lcom/example/sgf/MainActivity;->x:J

    sget-object v0, Lcom/example/sgf/MainActivity;->v:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/example/util/HspCallback;

    sget-wide v2, Lcom/example/sgf/MainActivity;->x:J

    invoke-direct {v0, v2, v3}, Lcom/example/util/HspCallback;-><init>(J)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/example/util/HspCallback;->a(ZZ)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/example/sgf/MainActivity;->v:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method

.method private d()V
    .locals 0

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->c()V

    return-void
.end method

.method private e()V
    .locals 0

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->e()V

    return-void
.end method

.method public static exeCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    sget-object v3, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "binName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exeCommand Process true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "binName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exeCommand BufferedReader true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_1
    :try_start_3
    sget-object v2, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exeCommand Process false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_2
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_3
    throw v0

    :cond_4
    :try_start_4
    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exeCommand BufferedReader false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_5
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exeCommand BufferedReader false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_7
    throw v0

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v0, v2

    goto/16 :goto_1
.end method

.method public static getBatteryLevel()I
    .locals 1

    sget-object v0, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    iget v0, v0, Lcom/example/sgf/k;->a:I

    goto :goto_0
.end method

.method public static getBatteryStatus()I
    .locals 5

    const/4 v1, 0x3

    const/4 v0, 0x0

    const/4 v2, 0x2

    sget-object v3, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v3, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    iget v3, v3, Lcom/example/sgf/k;->b:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    iget v3, v3, Lcom/example/sgf/k;->b:I

    if-ne v3, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    iget v3, v3, Lcom/example/sgf/k;->b:I

    if-ne v3, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    iget v1, v1, Lcom/example/sgf/k;->b:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    move v0, v2

    goto :goto_0
.end method

.method public static getBatteryTechnology()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    iget-object v0, v0, Lcom/example/sgf/k;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getBatteryTemperature()I
    .locals 1

    sget-object v0, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    iget v0, v0, Lcom/example/sgf/k;->d:I

    goto :goto_0
.end method

.method public static getBatteryVoltage()I
    .locals 1

    sget-object v0, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    iget v0, v0, Lcom/example/sgf/k;->e:I

    goto :goto_0
.end method

.method private static native getBuildType()I
.end method

.method public static getCurrentCameraBright()F
    .locals 1

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->j()F

    move-result v0

    return v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/example/sgf/MainActivity;
    .locals 1

    sget-object v0, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    return-object v0
.end method

.method public static getInternetConnection()I
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Lcom/example/sgf/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v2, "Active Network NoConnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "Active Network WIFI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "Active Netrowk MOBILE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "Active Network Other"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v2, "Active Network null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public static getModelName()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getOSVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static native getRegionCode()I
.end method

.method public static getSDKVersion()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getStatusBarHeight_static()I
    .locals 2

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Lcom/example/sgf/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v1, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public static getURLSchemeUriString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, " ACTION_VIEW"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/example/sgf/MainActivity;->t:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ACTION_VIEW_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/example/sgf/MainActivity;->t:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/example/sgf/MainActivity;->t:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static idelTimerDisabled(Z)V
    .locals 2

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/example/sgf/i;

    invoke-direct {v1, p0}, Lcom/example/sgf/i;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static isGoolleApiSignin()Z
    .locals 2

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "isGoolleApiSignin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/example/sgf/MainActivity;->v:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "isGoolleApiSignin true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "isGoolleApiSignin false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPackageExist(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/example/sgf/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    sget-object v1, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v1, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static kakaoLinkMessage(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/example/sgf/MainActivity;->getRegionCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    new-instance v1, Lcom/example/sgf/j;

    invoke-direct {v1, p0}, Lcom/example/sgf/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    sget-boolean v0, Lcom/example/sgf/MainActivity;->mKakaoLinkResult:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lineLinkMessage(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-object v2, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lineLinkMessage;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "jp.naver.line.android"

    sget-object v3, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    invoke-virtual {v3}, Lcom/example/sgf/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "utf-8"

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "line://msg/text/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    invoke-virtual {v3, v2}, Lcom/example/sgf/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method private static native nativeOnCompletion(I)V
.end method

.method public static openGooglePlayDownload()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "market://details?id=com.google.android.play.games"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget-object v1, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    invoke-virtual {v1, v0}, Lcom/example/sgf/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static playMovie(Ljava/lang/String;DZZ)V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/example/sgf/MainActivity;->s:Z

    sput-object p0, Lcom/example/sgf/MainActivity;->o:Ljava/lang/String;

    sput-wide p1, Lcom/example/sgf/MainActivity;->p:D

    sput-boolean p4, Lcom/example/sgf/MainActivity;->q:Z

    sput-boolean p3, Lcom/example/sgf/MainActivity;->r:Z

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "[playMovie] start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p3, Lcom/example/util/YWPMoviePlayer;->a:Z

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    const-class v2, Lcom/example/util/YWPMoviePlayer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "VOLUME"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "FILENAME"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ISEVENT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    sget v2, Lcom/example/sgf/MainActivity;->w:I

    invoke-virtual {v1, v0, v2}, Lcom/example/sgf/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static resetBatteryInfo()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/example/sgf/k;

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/example/sgf/k;-><init>(Lcom/example/sgf/MainActivity;)V

    sput-object v0, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/example/sgf/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    const-string v2, "level"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/example/sgf/k;->a:I

    sget-object v1, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    const-string v2, "status"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/example/sgf/k;->b:I

    sget-object v1, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    const-string v2, "technology"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/example/sgf/k;->c:Ljava/lang/String;

    sget-object v1, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    const-string v2, "temperature"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/example/sgf/k;->d:I

    sget-object v1, Lcom/example/sgf/MainActivity;->y:Lcom/example/sgf/k;

    const-string v2, "voltage"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/example/sgf/k;->e:I

    goto :goto_0
.end method

.method public static sendLine(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "jp.naver.line.android"

    :try_start_0
    sget-object v2, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    invoke-virtual {v2}, Lcom/example/sgf/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget-object v2, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    invoke-virtual {v2, v1}, Lcom/example/sgf/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static setCameraBright(F)V
    .locals 0

    invoke-static {p0}, Lcom/example/util/YWPMyPuniHelper;->a(F)V

    return-void
.end method

.method public static setFrame(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/example/util/YWPMyPuniHelper;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static setMask(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/example/util/YWPMyPuniHelper;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static setSaveName(I)V
    .locals 0

    invoke-static {p0}, Lcom/example/util/YWPMyPuniHelper;->a(I)V

    return-void
.end method

.method public static showStatusBar(Z)V
    .locals 2

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/sgf/MainActivity;->isShowStatusModel()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/example/sgf/h;

    invoke-direct {v1, p0}, Lcom/example/sgf/h;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static startCaptureMyPuni()V
    .locals 4

    sget-object v0, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/support/v4/a/k;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "shouldShowRequestPermissionRationale:\u8ffd\u52a0\u8aac\u660e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    sget-object v2, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    iget v2, v2, Lcom/example/sgf/MainActivity;->d:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->b()V

    goto :goto_0
.end method

.method public static startCaptureQRCode()V
    .locals 4

    sget-object v0, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/support/v4/a/k;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "shouldShowRequestPermissionRationale:\u8ffd\u52a0\u8aac\u660e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    sget-object v2, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    iget v2, v2, Lcom/example/sgf/MainActivity;->c:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/example/util/YWPQRCodeHelper;->a()V

    goto :goto_0
.end method

.method public static takePicture()V
    .locals 0

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->h()V

    return-void
.end method

.method public static terminateProcess()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public static useAssetPath()V
    .locals 0

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->a()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->onKeyDownBack()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/example/sgf/MainActivity;->f:Lcom/example/sgf/n;

    invoke-virtual {v0}, Lcom/example/sgf/n;->d()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDeviceSize()Landroid/graphics/Point;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/example/sgf/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v0, v3, :cond_1

    :try_start_0
    const-class v0, Landroid/view/Display;

    const-string v3, "getRawWidth"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-class v3, Landroid/view/Display;

    const-string v4, "getRawHeight"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v4, v0}, Landroid/graphics/Point;->set(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getRenderThread()Lcom/example/sgf/n;
    .locals 1

    iget-object v0, p0, Lcom/example/sgf/MainActivity;->f:Lcom/example/sgf/n;

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/example/sgf/MainActivity;->n:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/example/sgf/MainActivity;->u:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x4b

    goto :goto_0
.end method

.method public init()V
    .locals 3

    const/4 v2, -0x1

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/example/sgf/MainActivity;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/example/sgf/MainActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/example/sgf/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/example/sgf/MainActivity;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, v1, v0}, Lcom/example/sgf/MainActivity;->a(Landroid/app/Activity;Landroid/widget/FrameLayout;Landroid/view/SurfaceView;)V

    iget-object v1, p0, Lcom/example/sgf/MainActivity;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0, p0, v1, v0}, Lcom/example/sgf/MainActivity;->b(Landroid/app/Activity;Landroid/widget/FrameLayout;Landroid/view/SurfaceView;)V

    iget-object v1, p0, Lcom/example/sgf/MainActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/example/sgf/MainActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/example/sgf/MainActivity;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/example/sgf/MainActivity;->f:Lcom/example/sgf/n;

    invoke-virtual {v1, v0}, Lcom/example/sgf/n;->a(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public isShowStatusModel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/example/sgf/MainActivity;->n:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onActivityResult] start! requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    sget v0, Lcom/example/sgf/MainActivity;->w:I

    if-ne p1, v0, :cond_0

    if-ne p2, v3, :cond_0

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "[YWPMoviePlayer] activity success!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "result"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput-boolean v4, Lcom/example/sgf/MainActivity;->s:Z

    invoke-static {v0}, Lcom/example/sgf/MainActivity;->nativeOnCompletion(I)V

    :cond_0
    if-ne p1, v5, :cond_1

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[REQUEST_OAUTH] end!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v3, :cond_4

    sget-object v0, Lcom/example/sgf/MainActivity;->v:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/example/sgf/MainActivity;->getRegionCode()I

    move-result v0

    if-eq v0, v5, :cond_2

    invoke-static {}, Lcom/example/sgf/MainActivity;->getRegionCode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-static {p1, p2, p3}, Lcom/example/util/FacebookConnector;->onActivityResult(IILandroid/content/Intent;)V

    :cond_3
    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "[onActivityResult] end!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance v0, Lcom/example/util/HspCallback;

    sget-wide v2, Lcom/example/sgf/MainActivity;->x:J

    invoke-direct {v0, v2, v3}, Lcom/example/util/HspCallback;-><init>(J)V

    invoke-virtual {v0, v4, v4}, Lcom/example/util/HspCallback;->a(ZZ)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 4

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "onConnected;"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/example/util/HspCallback;

    sget-wide v2, Lcom/example/sgf/MainActivity;->x:J

    invoke-direct {v0, v2, v3}, Lcom/example/util/HspCallback;-><init>(J)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/example/util/HspCallback;->a(ZZ)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v3, "onConnectionFailed"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectionResult.getErrorCode()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/example/util/HspCallback;

    sget-wide v4, Lcom/example/sgf/MainActivity;->x:J

    invoke-direct {v0, v4, v5}, Lcom/example/util/HspCallback;-><init>(J)V

    invoke-virtual {v0, v2, v2}, Lcom/example/util/HspCallback;->a(ZZ)V

    :goto_0
    return-void

    :pswitch_1
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/example/util/HspCallback;

    sget-wide v4, Lcom/example/sgf/MainActivity;->x:J

    invoke-direct {v1, v4, v5}, Lcom/example/util/HspCallback;-><init>(J)V

    invoke-virtual {v1, v2, v2}, Lcom/example/util/HspCallback;->a(ZZ)V

    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    new-instance v3, Lcom/example/util/HspCallback;

    sget-wide v4, Lcom/example/sgf/MainActivity;->x:J

    invoke-direct {v3, v4, v5}, Lcom/example/util/HspCallback;-><init>(J)V

    :try_start_1
    invoke-virtual {p0}, Lcom/example/sgf/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.google.android.play.games"

    const/16 v5, 0x80

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    sget-object v4, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInstalled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    :goto_2
    invoke-virtual {v3, v2, v1}, Lcom/example/util/HspCallback;->a(ZZ)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "onConnectionSuspended;"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/example/sgf/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/bc;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v4, "onCreate"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    invoke-static {}, Lcom/example/sgf/MainActivity;->getRegionCode()I

    move-result v0

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    sput-object v0, Lcom/example/sgf/MainActivity;->v:Lcom/google/android/gms/common/api/GoogleApiClient;

    :cond_0
    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v4, "onCreate : new NDKApplication();"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/example/sgf/NDKApplication;

    invoke-direct {v0}, Lcom/example/sgf/NDKApplication;-><init>()V

    iget-object v4, v0, Lcom/example/sgf/GLApplication;->platform:Lcom/example/sgf/l;

    iput-object p0, v4, Lcom/example/sgf/l;->c:Landroid/content/Context;

    new-instance v4, Lcom/example/sgf/n;

    invoke-direct {v4, v0}, Lcom/example/sgf/n;-><init>(Lcom/example/sgf/GLApplication;)V

    iput-object v4, p0, Lcom/example/sgf/MainActivity;->f:Lcom/example/sgf/n;

    invoke-virtual {p0}, Lcom/example/sgf/MainActivity;->init()V

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v4, "onCreate : Z3"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "401SO"

    aput-object v5, v4, v3

    const-string v5, "SO-01G"

    aput-object v5, v4, v2

    const-string v5, "D6603"

    aput-object v5, v4, v8

    const-string v5, "D6616"

    aput-object v5, v4, v7

    const/4 v5, 0x4

    const-string v6, "D6643"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "D6653"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "L55t"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "L55u"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "SOL26"

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    iput-boolean v2, p0, Lcom/example/sgf/MainActivity;->n:Z

    :cond_1
    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v4, "onCreate : new YWPEditBoxHandler(this);"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/example/util/YWPEditBoxHandler;

    invoke-direct {v0, p0}, Lcom/example/util/YWPEditBoxHandler;-><init>(Lcom/example/sgf/MainActivity;)V

    iput-object v0, p0, Lcom/example/sgf/MainActivity;->g:Lcom/example/util/YWPEditBoxHandler;

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v4, "onCreate : new YWPWebViewHelper2(mFrameLayout);"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/example/sgf/MainActivity;->i:Lcom/example/util/YWPWebViewHelper2;

    if-nez v0, :cond_2

    new-instance v0, Lcom/example/util/YWPWebViewHelper2;

    iget-object v4, p0, Lcom/example/sgf/MainActivity;->b:Landroid/widget/FrameLayout;

    invoke-direct {v0, v4}, Lcom/example/util/YWPWebViewHelper2;-><init>(Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/example/sgf/MainActivity;->i:Lcom/example/util/YWPWebViewHelper2;

    :cond_2
    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v4, "onCreate : new YWPSoundHelper();"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/example/sgf/MainActivity;->h:Lcom/example/util/YWPSoundHelper;

    if-nez v0, :cond_3

    new-instance v0, Lcom/example/util/YWPSoundHelper;

    invoke-direct {v0}, Lcom/example/util/YWPSoundHelper;-><init>()V

    iput-object v0, p0, Lcom/example/sgf/MainActivity;->h:Lcom/example/util/YWPSoundHelper;

    :cond_3
    iget-object v0, p0, Lcom/example/sgf/MainActivity;->j:Lcom/example/util/r;

    if-nez v0, :cond_4

    new-instance v0, Lcom/example/util/r;

    invoke-direct {v0, p0}, Lcom/example/util/r;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/example/sgf/MainActivity;->j:Lcom/example/util/r;

    :cond_4
    iget-object v0, p0, Lcom/example/sgf/MainActivity;->k:Lcom/example/util/ag;

    if-nez v0, :cond_5

    new-instance v0, Lcom/example/util/ag;

    invoke-direct {v0, p0}, Lcom/example/util/ag;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/example/sgf/MainActivity;->k:Lcom/example/util/ag;

    :cond_5
    iget-object v0, p0, Lcom/example/sgf/MainActivity;->l:Lcom/example/util/bd;

    if-nez v0, :cond_6

    new-instance v0, Lcom/example/util/bd;

    invoke-direct {v0, p0}, Lcom/example/util/bd;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/example/sgf/MainActivity;->l:Lcom/example/util/bd;

    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/example/sgf/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/example/sgf/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/example/sgf/MainActivity;->getRegionCode()I

    move-result v4

    if-eq v4, v8, :cond_7

    invoke-static {}, Lcom/example/sgf/MainActivity;->getRegionCode()I

    move-result v4

    if-ne v4, v7, :cond_8

    :cond_7
    invoke-static {}, Lcom/example/util/FacebookConnector;->init()V

    :cond_8
    invoke-static {}, Lcom/example/sgf/MainActivity;->getRegionCode()I

    move-result v4

    if-ne v4, v7, :cond_9

    invoke-static {}, Lcom/example/util/AdjustApplication;->a()Lcom/example/util/AdjustApplication;

    move-result-object v4

    invoke-static {}, Lcom/example/sgf/MainActivity;->getBuildType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/example/util/AdjustApplication;->a(I)V

    invoke-static {p0}, Lcom/example/util/bi;->c(Landroid/content/Context;)V

    :cond_9
    invoke-virtual {p0}, Lcom/example/sgf/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/example/util/bc;->k:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SK"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v4, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HSP gameID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBuildType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/example/sgf/MainActivity;->getBuildType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-static {}, Lcom/example/sgf/MainActivity;->getBuildType()I

    move-result v4

    if-ne v4, v2, :cond_d

    invoke-virtual {p0}, Lcom/example/sgf/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/example/util/bc;->b:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/example/sgf/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/example/util/bc;->c:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/example/sgf/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v4, v7, v0, v9}, Lcom/toast/android/analytics/GameAnalytics;->initializeSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v4

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/toast/android/analytics/GameAnalytics;->setDebugMode(Z)V

    sget-object v7, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initialize GameAnalytics "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lcom/toast/android/analytics/GameAnalytics;->getResultMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    :goto_1
    invoke-static {p0, v5, v6, v0}, Lcom/hangame/hsp/HSPCore;->createInstance(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v4, "HSPCore.createInstance is failed "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-static {}, Lcom/example/sgf/MainActivity;->getRegionCode()I

    move-result v0

    if-nez v0, :cond_b

    const-string v4, "75093ba70a224049b03ad7b7baf701d8"

    const-string v5, "9SWa4gzpFrsrH2zgOgcEfWF2ivFz_gMB890JuzLFvubWMV7FkzD45ofVWlvF7XWu"

    invoke-static {}, Lcom/example/sgf/MainActivity;->getBuildType()I

    move-result v0

    if-ne v0, v2, :cond_f

    move v0, v2

    :goto_3
    invoke-static {p0, v4, v5, v0}, Lcom/example/util/bi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_b
    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRegionCode;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/example/sgf/MainActivity;->getRegionCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/example/sgf/MainActivity;->getRegionCode()I

    move-result v0

    if-ne v0, v2, :cond_c

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v4, "onCreate : initMetaps();"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/example/sgf/MainActivity;->getBuildType()I

    move-result v0

    if-ne v0, v2, :cond_11

    const-string v0, "kod500dbed865b8a3eab47f3a1-8c-android5730441f001a2"

    const-string v4, "741256120025"

    invoke-static {}, Lcom/example/sgf/MainActivity;->getBuildType()I

    move-result v5

    if-ne v5, v2, :cond_10

    :goto_4
    invoke-static {p0, v0, v4, v2}, Lcom/example/util/bi;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_c
    :goto_5
    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v2, "onCreate : renderThread.start();"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/example/sgf/MainActivity;->f:Lcom/example/sgf/n;

    invoke-virtual {v0}, Lcom/example/sgf/n;->start()V

    invoke-direct {p0, v1}, Lcom/example/sgf/MainActivity;->a(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    :try_start_2
    const-string v4, "o5xY5I8XqAfdQ9Ih"

    const-string v7, "zhrdjDbXfsVRilJh"

    invoke-virtual {p0}, Lcom/example/sgf/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v4, v7, v0, v9}, Lcom/toast/android/analytics/GameAnalytics;->initializeSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v4

    const/4 v7, 0x1

    invoke-static {v7}, Lcom/toast/android/analytics/GameAnalytics;->setDebugMode(Z)V

    sget-object v7, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initialize GameAnalytics "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lcom/toast/android/analytics/GameAnalytics;->getResultMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v4, v7, :cond_a

    const/4 v4, 0x1

    invoke-static {v4}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_e
    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HSPCore.getGameID :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/HSPCore;->getGameID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_f
    move v0, v3

    goto/16 :goto_3

    :cond_10
    move v2, v3

    goto :goto_4

    :cond_11
    const-string v0, "ko16cc6fcde01a42baf2e2100c-71-android-mqfuhmr"

    const-string v4, "281855660465"

    invoke-static {}, Lcom/example/sgf/MainActivity;->getBuildType()I

    move-result v5

    if-ne v5, v2, :cond_12

    :goto_6
    invoke-static {p0, v0, v4, v2}, Lcom/example/util/bi;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    :cond_12
    move v2, v3

    goto :goto_6
.end method

.method protected onDestroy()V
    .locals 2

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/payment/HSPPayment;->closePaymentService()Z

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/example/sgf/MainActivity;->f:Lcom/example/sgf/n;

    invoke-virtual {v0}, Lcom/example/sgf/n;->e()V

    const/4 v0, 0x0

    sput-object v0, Lcom/example/sgf/MainActivity;->e:Lcom/example/sgf/MainActivity;

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/example/sgf/MainActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/example/sgf/MainActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/example/sgf/MainActivity;->b()V

    invoke-direct {p0}, Lcom/example/sgf/MainActivity;->d()V

    iget-object v0, p0, Lcom/example/sgf/MainActivity;->f:Lcom/example/sgf/n;

    invoke-virtual {v0}, Lcom/example/sgf/n;->a()V

    iget-object v0, p0, Lcom/example/sgf/MainActivity;->h:Lcom/example/util/YWPSoundHelper;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/example/util/YWPSoundHelper;->suspend()V

    :cond_0
    iget-object v0, p0, Lcom/example/sgf/MainActivity;->j:Lcom/example/util/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/sgf/MainActivity;->j:Lcom/example/util/r;

    invoke-virtual {v0}, Lcom/example/util/r;->b()V

    :cond_1
    iget-object v0, p0, Lcom/example/sgf/MainActivity;->k:Lcom/example/util/ag;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/example/sgf/MainActivity;->k:Lcom/example/util/ag;

    invoke-virtual {v0}, Lcom/example/util/ag;->b()V

    :cond_2
    iget-object v0, p0, Lcom/example/sgf/MainActivity;->l:Lcom/example/util/bd;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/example/sgf/MainActivity;->l:Lcom/example/util/bd;

    invoke-virtual {v0}, Lcom/example/util/bd;->b()V

    :cond_3
    invoke-virtual {p0}, Lcom/example/sgf/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/example/sgf/MainActivity;->f:Lcom/example/sgf/n;

    invoke-virtual {v0}, Lcom/example/sgf/n;->e()V

    :cond_4
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/example/util/YWPQRCodeHelper;->b()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/example/util/YWPQRCodeHelper;->c()V

    goto :goto_0

    :pswitch_1
    array-length v0, p3

    if-lez v0, :cond_1

    aget v0, p3, v1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->d()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/example/util/YWPMyPuniHelper;->f()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 5

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/example/sgf/MainActivity;->f:Lcom/example/sgf/n;

    invoke-virtual {v0}, Lcom/example/sgf/n;->b()V

    invoke-direct {p0}, Lcom/example/sgf/MainActivity;->c()V

    invoke-direct {p0}, Lcom/example/sgf/MainActivity;->e()V

    iget-object v0, p0, Lcom/example/sgf/MainActivity;->h:Lcom/example/util/YWPSoundHelper;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/example/util/YWPSoundHelper;->resume()V

    :cond_0
    iget-object v0, p0, Lcom/example/sgf/MainActivity;->j:Lcom/example/util/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/sgf/MainActivity;->j:Lcom/example/util/r;

    invoke-virtual {v0}, Lcom/example/util/r;->c()V

    :cond_1
    iget-object v0, p0, Lcom/example/sgf/MainActivity;->k:Lcom/example/util/ag;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/example/sgf/MainActivity;->k:Lcom/example/util/ag;

    invoke-virtual {v0}, Lcom/example/util/ag;->c()V

    :cond_2
    iget-object v0, p0, Lcom/example/sgf/MainActivity;->l:Lcom/example/util/bd;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/example/sgf/MainActivity;->l:Lcom/example/util/bd;

    invoke-virtual {v0}, Lcom/example/util/bd;->c()V

    :cond_3
    sget-boolean v0, Lcom/example/sgf/MainActivity;->s:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/example/sgf/MainActivity;->o:Ljava/lang/String;

    sget-wide v2, Lcom/example/sgf/MainActivity;->p:D

    sget-boolean v1, Lcom/example/sgf/MainActivity;->r:Z

    sget-boolean v4, Lcom/example/sgf/MainActivity;->q:Z

    invoke-static {v0, v2, v3, v1, v4}, Lcom/example/sgf/MainActivity;->playMovie(Ljava/lang/String;DZZ)V

    :cond_4
    invoke-virtual {p0}, Lcom/example/sgf/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/example/sgf/MainActivity;->f:Lcom/example/sgf/n;

    invoke-virtual {v0}, Lcom/example/sgf/n;->e()V

    :cond_5
    return-void
.end method

.method protected onStart()V
    .locals 2

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/example/sgf/MainActivity;->getRegionCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/example/util/bi;->a(Landroid/app/Activity;)V

    :cond_0
    invoke-static {}, Lcom/example/sgf/MainActivity;->getRegionCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/example/util/bi;->a(Landroid/content/Context;)V

    :cond_1
    invoke-static {p0}, Lcom/toast/android/analytics/GameAnalytics;->traceActivation(Landroid/app/Activity;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    sget-object v0, Lcom/example/sgf/MainActivity;->a:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/example/sgf/MainActivity;->getRegionCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/example/util/bi;->b(Landroid/app/Activity;)V

    :cond_0
    invoke-static {}, Lcom/example/sgf/MainActivity;->getRegionCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/example/util/bi;->b(Landroid/content/Context;)V

    sget-object v0, Lcom/example/sgf/MainActivity;->v:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_1
    invoke-static {p0}, Lcom/toast/android/analytics/GameAnalytics;->traceDeactivation(Landroid/app/Activity;)I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    mul-int/lit8 v0, v6, 0x3

    new-array v4, v0, [I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v8, v0, 0xff

    invoke-virtual {p0}, Lcom/example/sgf/MainActivity;->getStatusBarHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    move v0, v1

    move v5, v1

    :goto_0
    if-ge v0, v6, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-eq v7, v10, :cond_1

    const/4 v11, 0x5

    if-eq v8, v11, :cond_0

    const/4 v11, 0x6

    if-ne v8, v11, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v11, v5, 0x1

    aput v10, v4, v5

    add-int/lit8 v10, v11, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v4, v11

    add-int/lit8 v5, v10, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v11, v11

    sub-int/2addr v11, v9

    aput v11, v4, v10

    goto :goto_1

    :cond_2
    packed-switch v8, :pswitch_data_0

    :goto_2
    :pswitch_0
    return v12

    :pswitch_1
    invoke-static {}, Lcom/example/sgf/GLApplication;->instance()Lcom/example/sgf/GLApplication;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/example/sgf/GLApplication;->onTouchEvent(IJ[II)V

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lcom/example/sgf/GLApplication;->instance()Lcom/example/sgf/GLApplication;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/example/sgf/GLApplication;->onTouchEvent(IJ[II)V

    goto :goto_2

    :pswitch_3
    invoke-static {}, Lcom/example/sgf/GLApplication;->instance()Lcom/example/sgf/GLApplication;

    move-result-object v0

    move v1, v12

    invoke-virtual/range {v0 .. v5}, Lcom/example/sgf/GLApplication;->onTouchEvent(IJ[II)V

    goto :goto_2

    :pswitch_4
    invoke-static {}, Lcom/example/sgf/GLApplication;->instance()Lcom/example/sgf/GLApplication;

    move-result-object v0

    move v1, v13

    invoke-virtual/range {v0 .. v5}, Lcom/example/sgf/GLApplication;->onTouchEvent(IJ[II)V

    goto :goto_2

    :pswitch_5
    invoke-static {}, Lcom/example/sgf/GLApplication;->instance()Lcom/example/sgf/GLApplication;

    move-result-object v0

    move v1, v13

    invoke-virtual/range {v0 .. v5}, Lcom/example/sgf/GLApplication;->onTouchEvent(IJ[II)V

    goto :goto_2

    :pswitch_6
    invoke-static {}, Lcom/example/sgf/GLApplication;->instance()Lcom/example/sgf/GLApplication;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/example/sgf/GLApplication;->onTouchEvent(IJ[II)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
