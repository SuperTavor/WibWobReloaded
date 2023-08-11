.class Lcom/hangame/hsp/webclient/hsplsp/LaunchOAuthLoginViewHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/webclient/hsplsp/LaunchOAuthLoginViewHandler;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/webclient/hsplsp/LaunchOAuthLoginViewHandler;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/webclient/hsplsp/LaunchOAuthLoginViewHandler$1;->this$0:Lcom/hangame/hsp/webclient/hsplsp/LaunchOAuthLoginViewHandler;

    iput-object p2, p0, Lcom/hangame/hsp/webclient/hsplsp/LaunchOAuthLoginViewHandler$1;->val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/webclient/hsplsp/LaunchOAuthLoginViewHandler$1;->val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

    const/4 v1, 0x0

    const-string v2, "LOGINSERVICE"

    invoke-static {v2}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;->onResult(Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
