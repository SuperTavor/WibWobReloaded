.class public Lcom/example/util/r;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String;

.field static c:Z


# instance fields
.field b:Landroid/bluetooth/BluetoothA2dp;

.field private d:Landroid/app/Activity;

.field private e:Landroid/bluetooth/BluetoothAdapter;

.field private f:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/example/util/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/util/r;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/example/util/r;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/example/util/r;->d:Landroid/app/Activity;

    iput-object v0, p0, Lcom/example/util/r;->b:Landroid/bluetooth/BluetoothA2dp;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/example/util/r;->e:Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Lcom/example/util/s;

    invoke-direct {v0, p0}, Lcom/example/util/s;-><init>(Lcom/example/util/r;)V

    iput-object v0, p0, Lcom/example/util/r;->f:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Lcom/example/util/t;

    invoke-direct {v0, p0}, Lcom/example/util/t;-><init>(Lcom/example/util/r;)V

    iput-object v0, p0, Lcom/example/util/r;->g:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/example/util/r;->d:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/example/util/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/util/r;->f()V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/example/util/r;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/example/util/r;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/example/util/r;->e:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/example/util/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/util/r;->d()V

    return-void
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/example/util/r;->e:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/example/util/r;->e:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/util/r;->e:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/example/util/r;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/example/util/r;->f:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/example/util/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/util/r;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/example/util/r;->e:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/example/util/r;->b:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/util/r;->e:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/example/util/r;->b:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/util/r;->b:Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/example/util/r;->d:Landroid/app/Activity;

    instance-of v0, v0, Lcom/example/sgf/MainActivity;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/example/util/YWPSoundHelper;->_setHWVolumeMode()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/example/util/r;->d:Landroid/app/Activity;

    instance-of v0, v0, Lcom/example/util/YWPMoviePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/util/r;->d:Landroid/app/Activity;

    check-cast v0, Lcom/example/util/YWPMoviePlayer;

    invoke-virtual {v0}, Lcom/example/util/YWPMoviePlayer;->a()V

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/example/util/r;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/example/util/r;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/example/util/r;->e()V

    return-void
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/example/util/r;->c:Z

    invoke-direct {p0}, Lcom/example/util/r;->d()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/example/util/r;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/example/util/r;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
