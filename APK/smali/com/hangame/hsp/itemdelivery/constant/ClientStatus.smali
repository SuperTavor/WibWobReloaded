.class public final enum Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

.field public static final enum DL100_STARTED_ITEM_DELIVERY_TRANSACTION:Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

.field public static final enum DL200_RESPONDED_REQUEST_ITEM_DELIVERY:Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

.field public static final enum DL300_RESPONDED_FINISH_ITEM_DELIVERY:Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

.field public static final enum UNKNOWN:Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    const-string v1, "DL100_STARTED_ITEM_DELIVERY_TRANSACTION"

    const-string v2, "DL100"

    invoke-direct {v0, v1, v3, v2}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->DL100_STARTED_ITEM_DELIVERY_TRANSACTION:Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    new-instance v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    const-string v1, "DL200_RESPONDED_REQUEST_ITEM_DELIVERY"

    const-string v2, "DL200"

    invoke-direct {v0, v1, v4, v2}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->DL200_RESPONDED_REQUEST_ITEM_DELIVERY:Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    new-instance v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    const-string v1, "DL300_RESPONDED_FINISH_ITEM_DELIVERY"

    const-string v2, "DL300"

    invoke-direct {v0, v1, v5, v2}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->DL300_RESPONDED_FINISH_ITEM_DELIVERY:Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    new-instance v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    const-string v1, "UNKNOWN"

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v1, v6, v2}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->UNKNOWN:Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    sget-object v1, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->DL100_STARTED_ITEM_DELIVERY_TRANSACTION:Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->DL200_RESPONDED_REQUEST_ITEM_DELIVERY:Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->DL300_RESPONDED_FINISH_ITEM_DELIVERY:Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->UNKNOWN:Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->$VALUES:[Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->value:Ljava/lang/String;

    return-void
.end method

.method public static getClientStatus(Ljava/lang/String;)Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;
    .locals 5

    invoke-static {}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->values()[Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->UNKNOWN:Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;
    .locals 1

    const-class v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->$VALUES:[Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    invoke-virtual {v0}, [Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatus;->value:Ljava/lang/String;

    return-object v0
.end method
