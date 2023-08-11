.class public final Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/webclient/HSPWebClientHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchGameHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V
    .locals 8

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v1, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;

    invoke-direct {v1, v6}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;-><init>(Landroid/net/Uri;)V

    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->isHSPLSP()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "URLScheme"

    invoke-virtual {v6, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "StoreURL"

    invoke-virtual {v6, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "HSPLSP://OpenGame"

    :try_start_0
    const-string v5, "gameNo"

    invoke-virtual {v6, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move-object v5, v3

    move-object v3, v4

    :goto_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v6

    if-ne v6, v0, :cond_1

    const-string v0, "hsp.common.backtogame"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$1;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$1;-><init>(Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler;)V

    invoke-static {v0, v1, v4}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkCancelButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    const-string v0, "WEBCLIENTSERVICE"

    invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$4;

    invoke-direct {v1, p0, p2, v0}, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$4;-><init>(Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v5

    const-string v6, "LaunchGameHandler"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v3

    move-object v3, v4

    goto :goto_0

    :cond_0
    const-string v1, "urlScheme"

    invoke-virtual {v6, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "bundleId"

    invoke-virtual {v6, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "storeUrl"

    invoke-virtual {v6, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "requesterUri"

    invoke-virtual {v6, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_1
    const-string v7, "gameNo"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v6

    const-string v7, "LaunchGameHandler"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {v5, v3}, Lcom/hangame/hsp/util/AppUtil;->isExistApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v0, "hsp.common.gameinstalled"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$2;

    invoke-direct {v1, p0, v5, v3}, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$2;-><init>(Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v4}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkCancelButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :cond_2
    const-string v3, "hsp.common.gamenotinstalled"

    invoke-static {v3}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$3;

    invoke-direct {v5, p0, v0, v2, v1}, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$3;-><init>(Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v5, v4}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkCancelButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1
.end method
