.class Lcom/hangame/hsp/HSPResult$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiHttpResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPResult;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPResult$HSPRequestResultPageURLCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPResult;Lcom/hangame/hsp/HSPResult$HSPRequestResultPageURLCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPResult$1;->this$0:Lcom/hangame/hsp/HSPResult;

    iput-object p2, p0, Lcom/hangame/hsp/HSPResult$1;->val$callback:Lcom/hangame/hsp/HSPResult$HSPRequestResultPageURLCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPResult$1;->val$callback:Lcom/hangame/hsp/HSPResult$HSPRequestResultPageURLCB;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p4, Ljava/lang/String;

    invoke-static {p4}, Lcom/hangame/hsp/util/SimpleJsonParser;->json2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/hangame/hsp/HSPResult$1;->val$callback:Lcom/hangame/hsp/HSPResult$HSPRequestResultPageURLCB;

    invoke-interface {v1, v0, p2}, Lcom/hangame/hsp/HSPResult$HSPRequestResultPageURLCB;->onResultPageURLReceive(Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/HSPResult$1;->val$callback:Lcom/hangame/hsp/HSPResult$HSPRequestResultPageURLCB;

    const-string v1, "HTTPMANAGER"

    invoke-static {v1}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/hangame/hsp/HSPResult$HSPRequestResultPageURLCB;->onResultPageURLReceive(Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/HSPResult$1;->val$callback:Lcom/hangame/hsp/HSPResult$HSPRequestResultPageURLCB;

    invoke-interface {v0, v2, p2}, Lcom/hangame/hsp/HSPResult$HSPRequestResultPageURLCB;->onResultPageURLReceive(Ljava/lang/String;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
