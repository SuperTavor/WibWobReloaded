.class Lcom/hangame/hsp/webclient/hsp/GetNoticeLastReadTimeHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/webclient/hsp/GetNoticeLastReadTimeHandler;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

.field final synthetic val$javascript:Ljava/lang/String;

.field final synthetic val$result:Lcom/hangame/hsp/HSPResult;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/webclient/hsp/GetNoticeLastReadTimeHandler;Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/webclient/hsp/GetNoticeLastReadTimeHandler$1;->this$0:Lcom/hangame/hsp/webclient/hsp/GetNoticeLastReadTimeHandler;

    iput-object p2, p0, Lcom/hangame/hsp/webclient/hsp/GetNoticeLastReadTimeHandler$1;->val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

    iput-object p3, p0, Lcom/hangame/hsp/webclient/hsp/GetNoticeLastReadTimeHandler$1;->val$javascript:Ljava/lang/String;

    iput-object p4, p0, Lcom/hangame/hsp/webclient/hsp/GetNoticeLastReadTimeHandler$1;->val$result:Lcom/hangame/hsp/HSPResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/webclient/hsp/GetNoticeLastReadTimeHandler$1;->val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

    iget-object v1, p0, Lcom/hangame/hsp/webclient/hsp/GetNoticeLastReadTimeHandler$1;->val$javascript:Ljava/lang/String;

    iget-object v2, p0, Lcom/hangame/hsp/webclient/hsp/GetNoticeLastReadTimeHandler$1;->val$result:Lcom/hangame/hsp/HSPResult;

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;->onResult(Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
