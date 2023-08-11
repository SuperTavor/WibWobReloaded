.class Lcom/hangame/hsp/sns/HSPTwitterService$14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

.field final synthetic val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;

.field final synthetic val$uri:Lcom/hangame/hsp/ui/HSPUiUri;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPTwitterService;Lcom/hangame/hsp/ui/HSPUiUri;Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPTwitterService$14;->this$0:Lcom/hangame/hsp/sns/HSPTwitterService;

    iput-object p2, p0, Lcom/hangame/hsp/sns/HSPTwitterService$14;->val$uri:Lcom/hangame/hsp/ui/HSPUiUri;

    iput-object p3, p0, Lcom/hangame/hsp/sns/HSPTwitterService$14;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseView(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPTwitterService$14;->val$uri:Lcom/hangame/hsp/ui/HSPUiUri;

    if-ne p1, v0, :cond_1

    :cond_0
    const-string v0, "picture"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "HSPTwitterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloseViewEvent.onCloseView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/hangame/hsp/ui/ViewEventManager;->removeCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V

    const-string v0, "feedSuccess"

    invoke-static {v0}, Lcom/hangame/hsp/ui/AppBundle;->getBundle(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "feedSuccess"

    invoke-static {v0}, Lcom/hangame/hsp/ui/AppBundle;->getBundle(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "feedSuccess"

    invoke-static {v0}, Lcom/hangame/hsp/ui/AppBundle;->removeBundle(Ljava/lang/String;)V

    const-string v0, "SNS"

    invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPTwitterService$14;->val$callback:Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;

    invoke-interface {v1, v0}, Lcom/hangame/hsp/sns/HSPTwitter$HSPTwitterFeedByUICB;->onFeed(Lcom/hangame/hsp/HSPResult;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "userCancel"

    invoke-static {v0}, Lcom/hangame/hsp/ui/AppBundle;->getBundle(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "SNS"

    const/16 v1, 0x4005

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    const-string v1, "userCancel"

    invoke-static {v1}, Lcom/hangame/hsp/ui/AppBundle;->removeBundle(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "SNS"

    const v1, 0xf000

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_0
.end method
