.class public Lcom/example/util/bd;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String;

.field private static c:Z


# instance fields
.field private b:Landroid/app/Activity;

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/example/util/bd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/util/bd;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/example/util/bd;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/util/bd;->b:Landroid/app/Activity;

    new-instance v0, Lcom/example/util/be;

    invoke-direct {v0, p0}, Lcom/example/util/be;-><init>(Lcom/example/util/bd;)V

    iput-object v0, p0, Lcom/example/util/bd;->d:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/example/util/bd;->b:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/example/util/bd;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/util/bd;->d()V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/example/util/bd;->c:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/example/util/bd;->c:Z

    return p0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/example/util/bd;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/example/sgf/MainActivity;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/example/util/YWPSoundHelper;->_setHWVolumeMode()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/example/util/bd;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/example/util/YWPMoviePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/util/bd;->b:Landroid/app/Activity;

    check-cast v0, Lcom/example/util/YWPMoviePlayer;

    invoke-virtual {v0}, Lcom/example/util/YWPMoviePlayer;->a()V

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/example/util/bd;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/example/util/bd;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public c()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/example/util/bd;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/example/util/bd;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
