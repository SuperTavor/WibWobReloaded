.class Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1;

.field final synthetic val$handlerResult:Lcom/hangame/hsp/HSPResult;

.field final synthetic val$javascript:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1;Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1$1;->this$1:Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1;

    iput-object p2, p0, Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1$1;->val$javascript:Ljava/lang/String;

    iput-object p3, p0, Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1$1;->val$handlerResult:Lcom/hangame/hsp/HSPResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1$1;->this$1:Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1;

    iget-object v0, v0, Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1;->val$callback:Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;

    iget-object v1, p0, Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1$1;->val$javascript:Ljava/lang/String;

    iget-object v2, p0, Lcom/hangame/hsp/webclient/hsp/GetMemberIdHandler$1$1;->val$handlerResult:Lcom/hangame/hsp/HSPResult;

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/HSPWebClient$HSPWebClientCB;->onResult(Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
