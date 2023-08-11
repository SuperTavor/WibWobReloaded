.class public Lcom/hangame/hsp/itemdelivery/command/RequestItemDeliveryCommand;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCallback:Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RequestItemDeliveryCommand"

    iput-object v0, p0, Lcom/hangame/hsp/itemdelivery/command/RequestItemDeliveryCommand;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/hangame/hsp/itemdelivery/command/RequestItemDeliveryCommand;->mCallback:Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/hangame/hsp/itemdelivery/command/RequestItemDeliveryCommand;->mCallback:Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;

    if-nez v0, :cond_0

    const-string v0, "RequestItemDeliveryCommand"

    const-string v1, "RequestItemDelivery : callback is null."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "RequestItemDeliveryCommand"

    const-string v1, "Request to the server"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqRequestItemDelivery2;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqRequestItemDelivery2;-><init>()V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqRequestItemDelivery2;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/itemdelivery/util/ItemDeliveryUtil;->createDeliveryHeader()Lcom/hangame/hsp/xdr/hsp13/request/DeliveryHeader;

    move-result-object v1

    iput-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqRequestItemDelivery2;->deliveryHeader:Lcom/hangame/hsp/xdr/hsp13/request/DeliveryHeader;

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqRequestItemDelivery2;->deliveryHeader:Lcom/hangame/hsp/xdr/hsp13/request/DeliveryHeader;

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqRequestItemDelivery2;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    iget-wide v2, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;->transactionId:J

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/DeliveryHeader;->deliveryTxId:J

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqRequestItemDelivery2;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    iget-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;->transactionId:J

    invoke-static {v2, v3}, Lcom/hangame/hsp/itemdelivery/util/ItemDeliveryUtil;->createDeliveryLogHeader(J)Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    new-instance v4, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;

    iget-object v5, p0, Lcom/hangame/hsp/itemdelivery/command/RequestItemDeliveryCommand;->mCallback:Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;

    invoke-direct {v4, v5, v1}, Lcom/hangame/hsp/itemdelivery/command/handler/RequestItemDeliveryResponseHandler;-><init>(Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;)V

    invoke-static {v0, v2, v3, v4}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;JLcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RequestItemDeliveryCommand exception."

    const-string v2, "RequestItemDeliveryCommand"

    invoke-static {v2, v1, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "HSPItemDelivery"

    const/16 v2, 0x1001

    invoke-static {v0, v2, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    iget-object v0, p0, Lcom/hangame/hsp/itemdelivery/command/RequestItemDeliveryCommand;->mCallback:Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;

    const-wide/16 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, ""

    invoke-interface/range {v0 .. v5}, Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;->onRequestItemDelivery(Lcom/hangame/hsp/HSPResult;JLjava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method
