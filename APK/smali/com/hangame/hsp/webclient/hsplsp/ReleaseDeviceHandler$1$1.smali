.class Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler$1;

.field final synthetic val$result:Lcom/hangame/hsp/HSPResult;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler$1;Lcom/hangame/hsp/HSPResult;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler$1$1;->this$1:Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler$1;

    iput-object p2, p0, Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler$1$1;->val$result:Lcom/hangame/hsp/HSPResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "ReleaseDeviceHandler"

    const-string v1, "ReleaseDeviceHandler: releaseDevice() callback call"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler$1$1;->this$1:Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler$1;

    iget-object v0, v0, Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler$1;->val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hangame/hsp/webclient/hsplsp/ReleaseDeviceHandler$1$1;->val$result:Lcom/hangame/hsp/HSPResult;

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;->onResult(Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
