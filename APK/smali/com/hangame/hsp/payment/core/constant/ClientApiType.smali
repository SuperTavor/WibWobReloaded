.class public final enum Lcom/hangame/hsp/payment/core/constant/ClientApiType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/payment/core/constant/ClientApiType;

.field public static final enum PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientApiType;

.field public static final enum REDEEM:Lcom/hangame/hsp/payment/core/constant/ClientApiType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    const-string v1, "PURCHASE"

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/payment/core/constant/ClientApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    new-instance v0, Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    const-string v1, "REDEEM"

    invoke-direct {v0, v1, v3}, Lcom/hangame/hsp/payment/core/constant/ClientApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->REDEEM:Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->REDEEM:Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->$VALUES:[Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/payment/core/constant/ClientApiType;
    .locals 1

    const-class v0, Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/payment/core/constant/ClientApiType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->$VALUES:[Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    invoke-virtual {v0}, [Lcom/hangame/hsp/payment/core/constant/ClientApiType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    return-object v0
.end method
