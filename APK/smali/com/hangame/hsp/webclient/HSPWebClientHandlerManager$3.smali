.class final Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$3;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$3;->val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "WEBCLIENTSERVICE"

    const v1, -0x7eff4000

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregisted UI Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$3;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$3;->val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;->onResult(Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
