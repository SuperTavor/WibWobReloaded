.class public Lcom/hangame/hsp/itemdelivery/model/ItemDeliveryConfiguration;
.super Ljava/lang/Object;


# instance fields
.field private biLogServerUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/itemdelivery/model/ItemDeliveryConfiguration;->biLogServerUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/itemdelivery/model/ItemDeliveryConfiguration;->biLogServerUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/hangame/hsp/itemdelivery/model/ItemDeliveryConfiguration;->biLogServerUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBiLogServerUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/itemdelivery/model/ItemDeliveryConfiguration;->biLogServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBiLogServerUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/itemdelivery/model/ItemDeliveryConfiguration;->biLogServerUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemDeliveryConfiguration [biLogServerUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/itemdelivery/model/ItemDeliveryConfiguration;->biLogServerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
