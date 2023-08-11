.class public final Lcom/hangame/hsp/webclient/hsp/GetMemberNoHandler;
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
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;

    invoke-direct {v1, v0}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;-><init>(Landroid/net/Uri;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->getJavaScriptParameter([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/hangame/hsp/webclient/hsp/WebClientHandlerUtil;->getJavascriptResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WEBCLIENTSERVICE"

    invoke-static {v1}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/webclient/hsp/GetMemberNoHandler$1;

    invoke-direct {v2, p0, p2, v0, v1}, Lcom/hangame/hsp/webclient/hsp/GetMemberNoHandler$1;-><init>(Lcom/hangame/hsp/webclient/hsp/GetMemberNoHandler;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {v2}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
