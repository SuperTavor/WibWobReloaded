.class final Lcom/hangame/hsp/HSPMessage$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPMessage$HSPSendPushNotificationCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMessage$HSPSendPushNotificationCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMessage$8;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPSendPushNotificationCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$8;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPSendPushNotificationCB;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendPushMsg;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendPushMsg;-><init>()V

    invoke-static {v0, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendPushMsg;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$8;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPSendPushNotificationCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPMessage$HSPSendPushNotificationCB;->onPushNotificationSend(Lcom/hangame/hsp/HSPResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/hangame/hsp/HSPMessage$8;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPSendPushNotificationCB;

    const-string v2, "MASHUP"

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsSendPushMsg;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v2, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/hangame/hsp/HSPMessage$HSPSendPushNotificationCB;->onPushNotificationSend(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$8;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPSendPushNotificationCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/HSPMessage$HSPSendPushNotificationCB;->onPushNotificationSend(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
