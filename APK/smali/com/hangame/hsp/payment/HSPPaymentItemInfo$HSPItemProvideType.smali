.class public final enum Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

.field public static final enum HSP_ITEMPROVIDETYPE_COIN:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

.field public static final enum HSP_ITEMPROVIDETYPE_ITEM:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;


# instance fields
.field private value:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

    const-string v1, "HSP_ITEMPROVIDETYPE_COIN"

    invoke-direct {v0, v1, v2, v2}, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;->HSP_ITEMPROVIDETYPE_COIN:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

    new-instance v0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

    const-string v1, "HSP_ITEMPROVIDETYPE_ITEM"

    invoke-direct {v0, v1, v3, v3}, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;->HSP_ITEMPROVIDETYPE_ITEM:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

    sget-object v1, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;->HSP_ITEMPROVIDETYPE_COIN:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;->HSP_ITEMPROVIDETYPE_ITEM:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;->$VALUES:[Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;->value:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;
    .locals 1

    const-class v0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;->$VALUES:[Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

    invoke-virtual {v0}, [Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;

    return-object v0
.end method


# virtual methods
.method getValue()B
    .locals 1

    iget-byte v0, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemProvideType;->value:B

    return v0
.end method
