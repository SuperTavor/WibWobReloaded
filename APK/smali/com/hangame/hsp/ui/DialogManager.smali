.class public final Lcom/hangame/hsp/ui/DialogManager;
.super Ljava/lang/Object;


# static fields
.field private static final PROGRESS_TIMER_DELAY_TIME:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "DialogManager"

.field private static final dummyListener:Landroid/content/DialogInterface$OnClickListener;

.field private static final lock:Ljava/lang/Object;

.field private static mAlertDialog:Landroid/app/AlertDialog;

.field private static mProgressDialog:Landroid/app/ProgressDialog;

.field private static progressDialogCount:I

.field private static progressTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/hangame/hsp/ui/DialogManager;->lock:Ljava/lang/Object;

    new-instance v0, Lcom/hangame/hsp/ui/DialogManager$DummyListener;

    invoke-direct {v0, v2}, Lcom/hangame/hsp/ui/DialogManager$DummyListener;-><init>(Lcom/hangame/hsp/ui/DialogManager$1;)V

    sput-object v0, Lcom/hangame/hsp/ui/DialogManager;->dummyListener:Landroid/content/DialogInterface$OnClickListener;

    sput-object v2, Lcom/hangame/hsp/ui/DialogManager;->progressTimer:Ljava/util/Timer;

    sput v1, Lcom/hangame/hsp/ui/DialogManager;->progressDialogCount:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/ui/DialogManager;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/hangame/hsp/ui/DialogManager;->progressDialogCount:I

    return v0
.end method

.method static synthetic access$208()I
    .locals 2

    sget v0, Lcom/hangame/hsp/ui/DialogManager;->progressDialogCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/hangame/hsp/ui/DialogManager;->progressDialogCount:I

    return v0
.end method

.method static synthetic access$210()I
    .locals 2

    sget v0, Lcom/hangame/hsp/ui/DialogManager;->progressDialogCount:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/hangame/hsp/ui/DialogManager;->progressDialogCount:I

    return v0
.end method

.method static synthetic access$300()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/ui/DialogManager;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/hangame/hsp/ui/DialogManager;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$400()Ljava/util/Timer;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/ui/DialogManager;->progressTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$402(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    sput-object p0, Lcom/hangame/hsp/ui/DialogManager;->progressTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$600()Landroid/app/ProgressDialog;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/ui/DialogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    sput-object p0, Lcom/hangame/hsp/ui/DialogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public static closeAlertDialog()V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/ui/DialogManager$2;

    invoke-direct {v0}, Lcom/hangame/hsp/ui/DialogManager$2;-><init>()V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static closeAllProgressDialog()V
    .locals 4

    sget-object v1, Lcom/hangame/hsp/ui/DialogManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "DialogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeAllProgressDialog() START: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/hangame/hsp/ui/DialogManager;->progressDialogCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/ui/DialogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/ui/DialogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DialogManager"

    const-string v2, "closeAllProgressDialog() : close progress dialog"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/hangame/hsp/ui/DialogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/hangame/hsp/ui/DialogManager;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    sput v0, Lcom/hangame/hsp/ui/DialogManager;->progressDialogCount:I

    sget-object v0, Lcom/hangame/hsp/ui/DialogManager;->progressTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hangame/hsp/ui/DialogManager;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/ui/DialogManager;->progressTimer:Ljava/util/Timer;

    :cond_1
    const-string v0, "DialogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeAllProgressDialog() END: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/hangame/hsp/ui/DialogManager;->progressDialogCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeDialog()V
    .locals 2

    const-string v0, "DialogManager"

    const-string v1, "closeDialog() "

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeAllProgressDialog()V

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeAlertDialog()V

    return-void
.end method

.method public static closeProgressDialog()V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/ui/DialogManager$1;

    invoke-direct {v0}, Lcom/hangame/hsp/ui/DialogManager$1;-><init>()V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static dialogShow(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/ui/DialogManager$11;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/ui/DialogManager$11;-><init>(Landroid/app/AlertDialog$Builder;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showAlertDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/ui/DialogManager$4;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/ui/DialogManager$4;-><init>(Landroid/app/AlertDialog$Builder;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showAlertDialogOfMultiChoiceWithActivity(Landroid/app/Activity;Landroid/app/AlertDialog$Builder;Ljava/lang/String;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/hangame/hsp/ui/DialogManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "DialogManager"

    const-string v3, "showDialogOfMultiChoiceWithActivity()"

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeDialog()V

    if-eqz p0, :cond_3

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_0
    if-eqz p3, :cond_1

    if-nez p4, :cond_2

    :cond_1
    const-string v2, "DialogManager"

    const-string v3, "you should allocate choiceItems and listener"

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    move-object p1, v0

    :goto_0
    return-object p1

    :cond_2
    invoke-virtual {p1, p3, p4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/hangame/hsp/ui/DialogManager$12;

    invoke-direct {v0, p1}, Lcom/hangame/hsp/ui/DialogManager$12;-><init>(Landroid/app/AlertDialog$Builder;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v0

    goto :goto_0
.end method

.method public static showAlertDialogWithOkButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, v0, p1, v0}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/webkit/JsResult;)V

    return-void
.end method

.method public static showAlertDialogWithOkButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/webkit/JsResult;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, v0, p1, p2}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/webkit/JsResult;)V

    return-void
.end method

.method public static showAlertDialogWithOkButton(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, v0}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/webkit/JsResult;)V

    return-void
.end method

.method public static showAlertDialogWithOkButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/webkit/JsResult;)V

    return-void
.end method

.method public static showAlertDialogWithOkButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/webkit/JsResult;)V
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/DialogManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "DialogManager"

    const-string v2, "showAlertDialogWithOkButton()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DialogManager"

    const-string v2, "HSP Activity is finishing"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeDialog()V

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p0, :cond_1

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-nez p3, :cond_2

    sget-object p3, Lcom/hangame/hsp/ui/DialogManager;->dummyListener:Landroid/content/DialogInterface$OnClickListener;

    :cond_2
    if-nez p2, :cond_3

    const-string v0, "hsp.common.alert.positive.button"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-virtual {v2, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/hangame/hsp/ui/DialogManager$5;

    invoke-direct {v0, v2, p4}, Lcom/hangame/hsp/ui/DialogManager$5;-><init>(Landroid/app/AlertDialog$Builder;Landroid/webkit/JsResult;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static showAlertDialogWithOkCancelButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, v0

    move-object v7, v0

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkCancelButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/webkit/JsResult;)V

    return-void
.end method

.method public static showAlertDialogWithOkCancelButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/webkit/JsResult;)V
    .locals 8

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, v0

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkCancelButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/webkit/JsResult;)V

    return-void
.end method

.method public static showAlertDialogWithOkCancelButton(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, p3

    move-object v6, v2

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkCancelButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/webkit/JsResult;)V

    return-void
.end method

.method public static showAlertDialogWithOkCancelButton(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    move-object v7, v0

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkCancelButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/webkit/JsResult;)V

    return-void
.end method

.method public static showAlertDialogWithOkCancelButton(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 4

    sget-object v1, Lcom/hangame/hsp/ui/DialogManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "DialogManager"

    const-string v2, "showAlertDialogWithOkCancelButton()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DialogManager"

    const-string v2, "HSP Activity is finishing"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeDialog()V

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-nez p2, :cond_1

    sget-object p2, Lcom/hangame/hsp/ui/DialogManager;->dummyListener:Landroid/content/DialogInterface$OnClickListener;

    :cond_1
    if-nez p4, :cond_2

    sget-object p4, Lcom/hangame/hsp/ui/DialogManager;->dummyListener:Landroid/content/DialogInterface$OnClickListener;

    :cond_2
    if-nez p1, :cond_3

    const-string v0, "hsp.common.alert.positive.button"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    if-nez p3, :cond_4

    const-string v0, "hsp.common.alert.negative.button"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_4
    invoke-virtual {v2, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, p3, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz p5, :cond_5

    const-string v0, "DialogManager"

    const-string v3, "setOnCancelListener backKeyListener."

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, p5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_5
    new-instance v0, Lcom/hangame/hsp/ui/DialogManager$8;

    invoke-direct {v0, v2}, Lcom/hangame/hsp/ui/DialogManager$8;-><init>(Landroid/app/AlertDialog$Builder;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static showAlertDialogWithOkCancelButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/webkit/JsResult;)V
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/DialogManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "DialogManager"

    const-string v2, "showAlertDialogWithOkCancelButton()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DialogManager"

    const-string v2, "HSP Activity is finishing"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeDialog()V

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez p4, :cond_7

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    :goto_1
    if-eqz p0, :cond_1

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-nez p3, :cond_2

    sget-object p3, Lcom/hangame/hsp/ui/DialogManager;->dummyListener:Landroid/content/DialogInterface$OnClickListener;

    :cond_2
    if-nez p5, :cond_3

    sget-object p5, Lcom/hangame/hsp/ui/DialogManager;->dummyListener:Landroid/content/DialogInterface$OnClickListener;

    :cond_3
    if-nez p2, :cond_4

    const-string v0, "hsp.common.alert.positive.button"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_4
    if-nez p4, :cond_5

    const-string v0, "hsp.common.alert.negative.button"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_5
    invoke-virtual {v2, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, p4, p5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz p6, :cond_8

    invoke-virtual {v2, p6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :goto_2
    new-instance v0, Lcom/hangame/hsp/ui/DialogManager$7;

    invoke-direct {v0, v2, p7}, Lcom/hangame/hsp/ui/DialogManager$7;-><init>(Landroid/app/AlertDialog$Builder;Landroid/webkit/JsResult;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_8
    new-instance v0, Lcom/hangame/hsp/ui/DialogManager$6;

    invoke-direct {v0, p7}, Lcom/hangame/hsp/ui/DialogManager$6;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public static showAlertDialogWithOkCancelButtonWithActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkCancelButtonWithActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static showAlertDialogWithOkCancelButtonWithActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/DialogManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "DialogManager"

    const-string v2, "showAlertDialogWithOkCancelButtonWithActivity()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeDialog()V

    if-eqz p0, :cond_5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez p5, :cond_6

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-nez p4, :cond_1

    sget-object p4, Lcom/hangame/hsp/ui/DialogManager;->dummyListener:Landroid/content/DialogInterface$OnClickListener;

    :cond_1
    if-nez p6, :cond_2

    sget-object p6, Lcom/hangame/hsp/ui/DialogManager;->dummyListener:Landroid/content/DialogInterface$OnClickListener;

    :cond_2
    if-nez p3, :cond_3

    const-string v2, "hsp.common.alert.positive.button"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_3
    if-nez p5, :cond_4

    const-string v2, "hsp.common.alert.negative.button"

    invoke-static {v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_4
    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/hangame/hsp/ui/DialogManager$9;

    invoke-direct {v2, v0}, Lcom/hangame/hsp/ui/DialogManager$9;-><init>(Landroid/app/AlertDialog$Builder;)V

    invoke-static {v2}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    monitor-exit v1

    return-void

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static showAlertDialogWithTwoButtonWithBuilder(Landroid/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/DialogManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "DialogManager"

    const-string v2, "showDialogOfMultiChoiceWithActivity()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeDialog()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-nez p4, :cond_1

    sget-object p4, Lcom/hangame/hsp/ui/DialogManager;->dummyListener:Landroid/content/DialogInterface$OnClickListener;

    :cond_1
    if-nez p6, :cond_2

    sget-object p6, Lcom/hangame/hsp/ui/DialogManager;->dummyListener:Landroid/content/DialogInterface$OnClickListener;

    :cond_2
    invoke-virtual {p0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/hangame/hsp/ui/DialogManager$10;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/ui/DialogManager$10;-><init>(Landroid/app/AlertDialog$Builder;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static showProgressDialog()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "hsp.common.progress.message"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/DialogManager;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static showProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/hangame/hsp/ui/DialogManager;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static showProgressDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/hangame/hsp/ui/DialogManager;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method public static showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 7

    new-instance v1, Lcom/hangame/hsp/ui/DialogManager$3;

    move-wide v2, p3

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/hangame/hsp/ui/DialogManager$3;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showProgressDialog(Z)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "hsp.common.progress.message"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/hangame/hsp/ui/DialogManager;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
