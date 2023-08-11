.class public final Lcom/hangame/hsp/webclient/hsp/LogHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/webclient/HSPWebClientHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "WebLog"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;)V
    .locals 2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebLog"

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WEBCLIENTSERVICE"

    invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/webclient/hsp/LogHandler$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/hangame/hsp/webclient/hsp/LogHandler$1;-><init>(Lcom/hangame/hsp/webclient/hsp/LogHandler;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
