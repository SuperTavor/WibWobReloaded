.class Lcom/hangame/hsp/oauth/HSPOAuth20Service$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;

.field final synthetic val$uri:Lcom/hangame/hsp/ui/HSPUiUri;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1$1;->this$1:Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;

    iput-object p2, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1$1;->val$uri:Lcom/hangame/hsp/ui/HSPUiUri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseView(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1$1;->val$uri:Lcom/hangame/hsp/ui/HSPUiUri;

    if-ne p1, v0, :cond_1

    :cond_0
    const-string v0, "HSPOAuth20"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloseViewEvent.onCloseView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/hangame/hsp/ui/ViewEventManager;->removeCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V

    if-eqz p1, :cond_3

    const-string v0, "accessToken"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "LOGINSERVICE"

    const/16 v2, 0x4005

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1$1;->this$1:Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;

    iget-object v2, v2, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    invoke-static {v2, v1, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1$1;->this$1:Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;

    iget-object v2, v2, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;->this$0:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-static {v2, v0}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->access$502(Lcom/hangame/hsp/oauth/HSPOAuth20Service;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "HSPOAuth20"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAccessToken  ::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1$1;->this$1:Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;

    iget-object v3, v3, Lcom/hangame/hsp/oauth/HSPOAuth20Service$1;->this$0:Lcom/hangame/hsp/oauth/HSPOAuth20Service;

    invoke-static {v3}, Lcom/hangame/hsp/oauth/HSPOAuth20Service;->access$500(Lcom/hangame/hsp/oauth/HSPOAuth20Service;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SNS"

    invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
