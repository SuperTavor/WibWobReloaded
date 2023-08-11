.class Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

.field final synthetic val$util:Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler;Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1;->this$0:Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler;

    iput-object p2, p0, Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1;->val$util:Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;

    iput-object p3, p0, Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1;->val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMyProfileLoad(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPResult;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1;->val$util:Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v1

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPMyProfile;->getHangameID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->getJavaScriptParameter([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->getJavascriptResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "WEBCLIENTSERVICE"

    invoke-static {v1}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1$1;-><init>(Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1;Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {v2}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1;->val$util:Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;

    invoke-virtual {v0}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->isHSPLSP()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1;->val$util:Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0001"

    aput-object v3, v2, v4

    const-string v3, "Not Login"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->getJavaScriptParameter([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->getJavascriptResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1;->val$util:Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->getJavascriptResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
