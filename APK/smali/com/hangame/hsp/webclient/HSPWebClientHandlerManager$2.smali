.class final Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

.field final synthetic val$uiUri:Lcom/hangame/hsp/ui/HSPUiUri;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/HSPUiUri;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$2;->val$uiUri:Lcom/hangame/hsp/ui/HSPUiUri;

    iput-object p2, p0, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$2;->val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$2;->val$uiUri:Lcom/hangame/hsp/ui/HSPUiUri;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$2;->val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;->onResult(Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
