.class public final Lcom/hangame/hsp/webclient/hsp/GetTicketHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/webclient/HSPWebClientHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;

    invoke-direct {v1, v0}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;-><init>(Landroid/net/Uri;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getState()Lcom/hangame/hsp/HSPState;

    move-result-object v0

    sget-object v2, Lcom/hangame/hsp/HSPState;->HSP_STATE_ONLINE:Lcom/hangame/hsp/HSPState;

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getTicket()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->isHSPLSP()Z

    move-result v4

    if-eqz v4, :cond_0

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    aput-object v0, v4, v6

    invoke-static {v4}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->getJavaScriptParameter([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->getJavascriptResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "WEBCLIENTSERVICE"

    invoke-static {v1}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/webclient/hsp/GetTicketHandler$1;

    invoke-direct {v2, p0, p2, v0, v1}, Lcom/hangame/hsp/webclient/hsp/GetTicketHandler$1;-><init>(Lcom/hangame/hsp/webclient/hsp/GetTicketHandler;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {v2}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-array v2, v6, [Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v2}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->getJavaScriptParameter([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->getJavascriptResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->isHSPLSP()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "0001"

    aput-object v2, v0, v5

    const-string v2, "Not Login"

    aput-object v2, v0, v6

    invoke-static {v0}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->getJavaScriptParameter([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->getJavascriptResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    invoke-virtual {v1, v6, v0}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->getJavascriptResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
