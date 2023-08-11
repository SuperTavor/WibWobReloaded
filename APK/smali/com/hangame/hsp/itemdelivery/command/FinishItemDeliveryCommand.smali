.class public Lcom/hangame/hsp/itemdelivery/command/FinishItemDeliveryCommand;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mItemSeqList:Ljava/util/List;

.field private final mTxId:J


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FinishItemDeliveryCommand"

    iput-object v0, p0, Lcom/hangame/hsp/itemdelivery/command/FinishItemDeliveryCommand;->TAG:Ljava/lang/String;

    iput-wide p1, p0, Lcom/hangame/hsp/itemdelivery/command/FinishItemDeliveryCommand;->mTxId:J

    iput-object p3, p0, Lcom/hangame/hsp/itemdelivery/command/FinishItemDeliveryCommand;->mItemSeqList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqFinishItemDelivery;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqFinishItemDelivery;-><init>()V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqFinishItemDelivery;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/itemdelivery/util/ItemDeliveryUtil;->createDeliveryHeader()Lcom/hangame/hsp/xdr/hsp13/request/DeliveryHeader;

    move-result-object v1

    iput-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqFinishItemDelivery;->deliveryHeader:Lcom/hangame/hsp/xdr/hsp13/request/DeliveryHeader;

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqFinishItemDelivery;->deliveryHeader:Lcom/hangame/hsp/xdr/hsp13/request/DeliveryHeader;

    iget-wide v2, p0, Lcom/hangame/hsp/itemdelivery/command/FinishItemDeliveryCommand;->mTxId:J

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/DeliveryHeader;->deliveryTxId:J

    new-instance v1, Ljava/util/Vector;

    iget-object v2, p0, Lcom/hangame/hsp/itemdelivery/command/FinishItemDeliveryCommand;->mItemSeqList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqFinishItemDelivery;->itemDeliverySequences:Ljava/util/Vector;

    iget-wide v2, p0, Lcom/hangame/hsp/itemdelivery/command/FinishItemDeliveryCommand;->mTxId:J

    invoke-static {v2, v3}, Lcom/hangame/hsp/itemdelivery/util/ItemDeliveryUtil;->createDeliveryLogHeader(J)Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    new-instance v4, Lcom/hangame/hsp/itemdelivery/command/handler/FinishItemDeliveryResponseHandler;

    invoke-direct {v4, v1}, Lcom/hangame/hsp/itemdelivery/command/handler/FinishItemDeliveryResponseHandler;-><init>(Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;)V

    invoke-static {v0, v2, v3, v4}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;JLcom/hangame/hsp/core/HSPResHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FinishItemDeliveryCommand"

    const-string v2, "FinishItemDeliveryCommand exception."

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
