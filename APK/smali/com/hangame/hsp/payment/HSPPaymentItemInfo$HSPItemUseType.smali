.class public final enum Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

.field public static final enum HSP_ITEMUSETYPE_FOREVER:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

.field public static final enum HSP_ITEMUSETYPE_ONCE:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;


# instance fields
.field private value:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

    const-string v1, "HSP_ITEMUSETYPE_ONCE"

    invoke-direct {v0, v1, v2, v2}, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;->HSP_ITEMUSETYPE_ONCE:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

    new-instance v0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

    const-string v1, "HSP_ITEMUSETYPE_FOREVER"

    invoke-direct {v0, v1, v3, v3}, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;->HSP_ITEMUSETYPE_FOREVER:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

    sget-object v1, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;->HSP_ITEMUSETYPE_ONCE:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;->HSP_ITEMUSETYPE_FOREVER:Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;->$VALUES:[Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;->value:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;
    .locals 1

    const-class v0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;->$VALUES:[Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

    invoke-virtual {v0}, [Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;

    return-object v0
.end method


# virtual methods
.method getValue()B
    .locals 1

    iget-byte v0, p0, Lcom/hangame/hsp/payment/HSPPaymentItemInfo$HSPItemUseType;->value:B

    return v0
.end method
