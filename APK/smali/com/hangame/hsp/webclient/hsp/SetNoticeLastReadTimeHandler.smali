.class public final Lcom/hangame/hsp/webclient/hsp/SetNoticeLastReadTimeHandler;
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
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/util/TimestampUtil;->saveNoticeTimestamp()Z

    const-string v0, "WEBCLIENTSERVICE"

    invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/webclient/hsp/SetNoticeLastReadTimeHandler$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/hangame/hsp/webclient/hsp/SetNoticeLastReadTimeHandler$1;-><init>(Lcom/hangame/hsp/webclient/hsp/SetNoticeLastReadTimeHandler;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
