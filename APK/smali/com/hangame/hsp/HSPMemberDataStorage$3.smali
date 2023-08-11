.class final Lcom/hangame/hsp/HSPMemberDataStorage$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPMemberDataStorage$HSPLoadMemberDataCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMemberDataStorage$HSPLoadMemberDataCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMemberDataStorage$3;->val$callback:Lcom/hangame/hsp/HSPMemberDataStorage$HSPLoadMemberDataCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 4

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameBucketList;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameBucketList;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameBucketList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/HSPMemberDataStorage$3;->val$callback:Lcom/hangame/hsp/HSPMemberDataStorage$HSPLoadMemberDataCB;

    invoke-static {v0}, Lcom/hangame/hsp/HSPMemberDataStorage;->access$000(Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameBucketList;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "MASHUP"

    invoke-static {v2}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/hangame/hsp/HSPMemberDataStorage$HSPLoadMemberDataCB;->onMemberDataLoad(Ljava/util/Map;Lcom/hangame/hsp/HSPResult;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPMemberDataStorage$3;->val$callback:Lcom/hangame/hsp/HSPMemberDataStorage$HSPLoadMemberDataCB;

    invoke-static {v0}, Lcom/hangame/hsp/HSPMemberDataStorage;->access$000(Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameBucketList;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "MASHUP"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameBucketList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v3, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hangame/hsp/HSPMemberDataStorage$HSPLoadMemberDataCB;->onMemberDataLoad(Ljava/util/Map;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
