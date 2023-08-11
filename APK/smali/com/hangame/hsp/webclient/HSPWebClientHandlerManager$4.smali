.class final Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

.field final synthetic val$handler:Lcom/hangame/hsp/webclient/HSPWebClientHandler;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/webclient/HSPWebClientHandler;Ljava/lang/String;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$4;->val$handler:Lcom/hangame/hsp/webclient/HSPWebClientHandler;

    iput-object p2, p0, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$4;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$4;->val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$4;->val$handler:Lcom/hangame/hsp/webclient/HSPWebClientHandler;

    iget-object v1, p0, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$4;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/hangame/hsp/webclient/HSPWebClientHandlerManager$4;->val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/webclient/HSPWebClientHandler;->process(Ljava/lang/String;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V

    return-void
.end method
