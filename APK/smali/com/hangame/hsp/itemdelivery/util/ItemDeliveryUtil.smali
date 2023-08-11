.class public Lcom/hangame/hsp/itemdelivery/util/ItemDeliveryUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDeliveryHeader()Lcom/hangame/hsp/xdr/hsp13/request/DeliveryHeader;
    .locals 4

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/DeliveryHeader;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/DeliveryHeader;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v1

    iput v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/DeliveryHeader;->gameNo:I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/DeliveryHeader;->memberNo:J

    invoke-static {}, Lcom/hangame/hsp/HSPUtil;->getUniqueDeviceID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/request/DeliveryHeader;->requester:Ljava/lang/String;

    goto :goto_0
.end method

.method public static createDeliveryLogHeader(J)Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;
    .locals 4

    new-instance v0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;

    invoke-direct {v0}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    invoke-virtual {v1}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->setCode(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->setCurrentTime(J)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->setEventNo(I)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v1

    iput v1, v0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->gameNo:I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->memberNo:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->setRequestTime(J)V

    invoke-static {}, Lcom/hangame/hsp/HSPUtil;->getUniqueDeviceID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->requester:Ljava/lang/String;

    sget-object v1, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->DL100_STARTED_ITEM_DELIVERY_TRANSACTION:Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    invoke-virtual {v1}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->setStatus(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->setTxId(J)V

    goto :goto_0
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeHeaderParams(Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;)Ljava/util/Map;
    .locals 6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "eventNo"

    invoke-virtual {p0}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->getEventNo()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "txId"

    invoke-virtual {p0}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->getTxId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "requestTime"

    invoke-virtual {p0}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->getRequestTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "currentTime"

    invoke-virtual {p0}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->getCurrentTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->getMemberNo()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->getGameNo()I

    move-result v0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    :cond_0
    if-gtz v0, :cond_1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v0

    :cond_1
    const-string v4, "memberNo"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gameNo"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "status"

    invoke-virtual {p0}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "code"

    invoke-virtual {p0}, Lcom/hangame/hsp/itemdelivery/model/DeliveryLogHeader;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "requester"

    invoke-static {}, Lcom/hangame/hsp/HSPUtil;->getUniqueDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
