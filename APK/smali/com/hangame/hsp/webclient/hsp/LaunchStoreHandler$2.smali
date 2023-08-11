.class Lcom/hangame/hsp/webclient/hsp/LaunchStoreHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/webclient/hsp/LaunchStoreHandler;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

.field final synthetic val$result:Lcom/hangame/hsp/HSPResult;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/webclient/hsp/LaunchStoreHandler;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;Lcom/hangame/hsp/HSPResult;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/webclient/hsp/LaunchStoreHandler$2;->this$0:Lcom/hangame/hsp/webclient/hsp/LaunchStoreHandler;

    iput-object p2, p0, Lcom/hangame/hsp/webclient/hsp/LaunchStoreHandler$2;->val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

    iput-object p3, p0, Lcom/hangame/hsp/webclient/hsp/LaunchStoreHandler$2;->val$result:Lcom/hangame/hsp/HSPResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/webclient/hsp/LaunchStoreHandler$2;->val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hangame/hsp/webclient/hsp/LaunchStoreHandler$2;->val$result:Lcom/hangame/hsp/HSPResult;

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;->onResult(Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
