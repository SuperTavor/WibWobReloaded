.class Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand;

.field final synthetic val$strtInfo:Lcom/hangame/hsp/cgp/model/PromotionResultInfo;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand;Lcom/hangame/hsp/cgp/model/PromotionResultInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand$1;->this$0:Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand;

    iput-object p2, p0, Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand$1;->val$strtInfo:Lcom/hangame/hsp/cgp/model/PromotionResultInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 4

    invoke-static {}, Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsPromotionStart2;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsPromotionStart2;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v2, p0, Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand$1;->val$strtInfo:Lcom/hangame/hsp/cgp/model/PromotionResultInfo;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsPromotionStart2;->result:I

    invoke-virtual {v2, v0}, Lcom/hangame/hsp/cgp/model/PromotionResultInfo;->setResult(I)V

    const-string v0, "RequestPromotionStartCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PromotionCompleteInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand$1;->val$strtInfo:Lcom/hangame/hsp/cgp/model/PromotionResultInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand;->access$000()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
