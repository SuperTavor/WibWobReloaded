.class Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler$1;->this$0:Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler;

    iput-object p2, p0, Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler$1;->val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeProgressDialog()V

    const-string v0, "ReleaseDeviceHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReleaseDeviceHandler: releaseDevice() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    new-instance v0, Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler$1$1;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler$1$1;-><init>(Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler$1;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {p2}, Lcom/hangame/hsp/util/HSPResultUtil;->showErrorAlertDialog(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
