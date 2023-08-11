.class public final Lcom/hangame/hsp/ui/UiThreadUtil;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "UiThreadUtil"

.field private static sHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static init()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/hangame/hsp/ui/UiThreadUtil;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/hangame/hsp/ui/UiThreadUtil;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/ui/UiThreadUtil;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/hangame/hsp/ui/UiThreadUtil$1;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/ui/UiThreadUtil$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "UiThreadUtil"

    const-string v1, "Handler is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
