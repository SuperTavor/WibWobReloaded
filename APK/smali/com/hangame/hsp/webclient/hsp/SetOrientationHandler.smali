.class public final Lcom/hangame/hsp/webclient/hsp/SetOrientationHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/webclient/HSPWebClientHandler;


# static fields
.field private static final KEY_LOCK_LANDSCAPE:Ljava/lang/String; = "landscape"

.field private static final KEY_LOCK_PORTRAIT:Ljava/lang/String; = "portrait"

.field private static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final KEY_UNLOCK:Ljava/lang/String; = "both"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V
    .locals 2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/hangame/hsp/ui/DeviceController;->lockOrientation(I)V

    :cond_0
    :goto_0
    const-string v0, "WEBCLIENTSERVICE"

    invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/webclient/hsp/SetOrientationHandler$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/hangame/hsp/webclient/hsp/SetOrientationHandler$1;-><init>(Lcom/hangame/hsp/webclient/hsp/SetOrientationHandler;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/hangame/hsp/ui/DeviceController;->lockOrientation(I)V

    goto :goto_0

    :cond_2
    const-string v1, "both"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/ui/DeviceController;->unlockOrientation()V

    goto :goto_0
.end method
