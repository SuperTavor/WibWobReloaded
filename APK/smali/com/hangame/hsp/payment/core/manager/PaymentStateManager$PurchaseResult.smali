.class public final enum Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

.field public static final enum CANCEL:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

.field public static final enum FAIL:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

.field public static final enum NONE:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

.field public static final enum SUCCESS:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->NONE:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    new-instance v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->SUCCESS:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    new-instance v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v4}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->FAIL:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    new-instance v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v5}, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->CANCEL:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    sget-object v1, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->NONE:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->SUCCESS:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->FAIL:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->CANCEL:Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->$VALUES:[Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;
    .locals 1

    const-class v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->$VALUES:[Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    invoke-virtual {v0}, [Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/payment/core/manager/PaymentStateManager$PurchaseResult;

    return-object v0
.end method
