.class public Lcom/hangame/hsp/itemdelivery/HSPItemDelivery;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishItemDelivery(JLjava/util/List;)Z
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;->getInstance()Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;->finishItemDelivery(JLjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static requestItemDelivery(Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;)Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;->getInstance()Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService;->requestItemDelivery(Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;)Z

    move-result v0

    return v0
.end method
