.class public final Lcom/hangame/hsp/webclient/hsp/LaunchStoreHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/webclient/HSPWebClientHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchStoreHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V
    .locals 5

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v1, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;

    invoke-direct {v1, v3}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;-><init>(Landroid/net/Uri;)V

    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->isHSPLSP()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "StoreURL"

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "HSPLSP://DownloadGame"

    :goto_0
    const-string v3, "hsp.common.gamenotinstalled"

    invoke-static {v3}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/hangame/hsp/webclient/hsp/LaunchStoreHandler$1;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/hangame/hsp/webclient/hsp/LaunchStoreHandler$1;-><init>(Lcom/hangame/hsp/webclient/hsp/LaunchStoreHandler;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkCancelButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    const-string v0, "WEBCLIENTSERVICE"

    invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/webclient/hsp/LaunchStoreHandler$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/hangame/hsp/webclient/hsp/LaunchStoreHandler$2;-><init>(Lcom/hangame/hsp/webclient/hsp/LaunchStoreHandler;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v1, "storeUrl"

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "requesterUri"

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v4, "gameNo"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "LaunchStoreHandler"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
