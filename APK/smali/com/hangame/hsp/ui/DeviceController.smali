.class public final Lcom/hangame/hsp/ui/DeviceController;
.super Ljava/lang/Object;


# static fields
.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field private static final lock:Ljava/lang/Object;

.field private static sHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

.field private static sImm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/hangame/hsp/ui/DeviceController;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyToClipboard(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0, p0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static disableBackButton()V
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/DeviceController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/ui/DeviceController;->sHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/ui/DeviceController;->sHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->disableBackButton()V

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

.method public static enableBackButton()V
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/DeviceController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/ui/DeviceController;->sHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/ui/DeviceController;->sHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->enableBackButton()V

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

.method public static getOrientation()I
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/DeviceController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/ui/DeviceController;->sHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/hangame/hsp/ui/DeviceController;->sHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static hideKeyboard()V
    .locals 4

    sget-object v1, Lcom/hangame/hsp/ui/DeviceController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/ui/DeviceController;->sHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/ui/DeviceController;->sHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/ui/DeviceController;->sImm:Landroid/view/inputmethod/InputMethodManager;

    sget-object v2, Lcom/hangame/hsp/ui/DeviceController;->sHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-virtual {v2}, Lcom/hangame/hsp/ui/HSPUiActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

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

.method public static lockOrientation(I)V
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/DeviceController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/ui/DeviceController;->sHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/ui/DeviceController;->sHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/ui/HSPUiActivity;->lockOrientation(I)V

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

.method static removeActivity()V
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/DeviceController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/ui/DeviceController;->enableBackButton()V

    invoke-static {}, Lcom/hangame/hsp/ui/DeviceController;->unlockOrientation()V

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/ui/DeviceController;->sHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static setActivity(Lcom/hangame/hsp/ui/HSPUiActivity;)V
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/DeviceController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/hangame/hsp/ui/DeviceController;->sHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/HSPUiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sput-object v0, Lcom/hangame/hsp/ui/DeviceController;->sImm:Landroid/view/inputmethod/InputMethodManager;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static showKeyboard(Landroid/view/View;)V
    .locals 4

    sget-object v1, Lcom/hangame/hsp/ui/DeviceController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/ui/DeviceController;->sHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/ui/DeviceController;->sImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

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

.method public static unlockOrientation()V
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/DeviceController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/ui/DeviceController;->sHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/ui/DeviceController;->sHSPUiActivity:Lcom/hangame/hsp/ui/HSPUiActivity;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiActivity;->unlockOrientation()V

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
