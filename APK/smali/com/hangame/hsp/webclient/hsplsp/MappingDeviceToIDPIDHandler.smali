.class public final Lcom/hangame/hsp/webclient/hsplsp/MappingDeviceToIDPIDHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/webclient/HSPWebClientHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "MappingDeviceToIDPIDHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V
    .locals 4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "MappingDeviceToIDPIDHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "NID"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IDPAuthData"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/hangame/hsp/auth/OAuthData;->createHangameExOAuthData(Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/auth/OAuthData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/hangame/hsp/ui/DialogManager;->showProgressDialog(Z)V

    const-string v1, "hangameEx"

    invoke-static {v1, v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->mapByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeProgressDialog()V

    const-string v1, "MappingDeviceToIDPIDHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapByOAuth() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeCurrentView()V

    :goto_0
    new-instance v1, Lcom/hangame/hsp/webclient/hsplsp/MappingDeviceToIDPIDHandler$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/hangame/hsp/webclient/hsplsp/MappingDeviceToIDPIDHandler$2;-><init>(Lcom/hangame/hsp/webclient/hsplsp/MappingDeviceToIDPIDHandler;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isHangame()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isToastGame()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/hangame/hsp/webclient/hsplsp/MappingDeviceToIDPIDHandler$1;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/webclient/hsplsp/MappingDeviceToIDPIDHandler$1;-><init>(Lcom/hangame/hsp/webclient/hsplsp/MappingDeviceToIDPIDHandler;)V

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/HSPResultUtil;->showErrorAlertDialog(Lcom/hangame/hsp/HSPResult;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/hangame/hsp/util/HSPResultUtil;->showErrorAlertDialog(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
