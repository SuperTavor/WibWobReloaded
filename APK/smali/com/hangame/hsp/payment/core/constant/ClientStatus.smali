.class public final enum Lcom/hangame/hsp/payment/core/constant/ClientStatus;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/payment/core/constant/ClientStatus;

.field public static final enum CL100_START_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

.field public static final enum CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

.field public static final enum CL300_REQUEST_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

.field public static final enum CL400_PREPAY_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

.field public static final enum CL410_FINISH_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

.field public static final enum CL420_FINISH_CONSUME:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

.field public static final enum CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

.field public static final enum GG01_PURCHASE_CANCELED:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

.field public static final enum GG02_PURCHASE_REFUNDED:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

.field public static final enum RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

.field public static final enum UNKNOWN:Lcom/hangame/hsp/payment/core/constant/ClientStatus;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    const-string v1, "CL100_START_PURCHASE"

    const-string v2, "CL100"

    invoke-direct {v0, v1, v4, v2}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL100_START_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    new-instance v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    const-string v1, "CL200_PREPARE_PURCHASE"

    const-string v2, "CL200"

    invoke-direct {v0, v1, v5, v2}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    new-instance v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    const-string v1, "CL300_REQUEST_PURCHASE"

    const-string v2, "CL300"

    invoke-direct {v0, v1, v6, v2}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL300_REQUEST_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    new-instance v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    const-string v1, "CL400_PREPAY_PURCHASE"

    const-string v2, "CL400"

    invoke-direct {v0, v1, v7, v2}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL400_PREPAY_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    new-instance v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    const-string v1, "CL410_FINISH_PURCHASE"

    const-string v2, "CL410"

    invoke-direct {v0, v1, v8, v2}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL410_FINISH_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    new-instance v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    const-string v1, "CL420_FINISH_CONSUME"

    const/4 v2, 0x5

    const-string v3, "CL420"

    invoke-direct {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL420_FINISH_CONSUME:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    new-instance v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    const-string v1, "CL500_ADD_ITEM"

    const/4 v2, 0x6

    const-string v3, "CL500"

    invoke-direct {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    new-instance v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    const-string v1, "GG01_PURCHASE_CANCELED"

    const/4 v2, 0x7

    const-string v3, "GG01"

    invoke-direct {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->GG01_PURCHASE_CANCELED:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    new-instance v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    const-string v1, "GG02_PURCHASE_REFUNDED"

    const/16 v2, 0x8

    const-string v3, "GG02"

    invoke-direct {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->GG02_PURCHASE_REFUNDED:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    new-instance v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    const-string v1, "RTRY_RETRY_TARGET"

    const/16 v2, 0x9

    const-string v3, "RTRY"

    invoke-direct {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    new-instance v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xa

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->UNKNOWN:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL100_START_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL200_PREPARE_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL300_REQUEST_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL400_PREPAY_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL410_FINISH_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL420_FINISH_CONSUME:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->GG01_PURCHASE_CANCELED:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->GG02_PURCHASE_REFUNDED:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->RTRY_RETRY_TARGET:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->UNKNOWN:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->$VALUES:[Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->value:Ljava/lang/String;

    return-void
.end method

.method public static getClientStatus(Ljava/lang/String;)Lcom/hangame/hsp/payment/core/constant/ClientStatus;
    .locals 5

    invoke-static {}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->values()[Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

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
    sget-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->UNKNOWN:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/payment/core/constant/ClientStatus;
    .locals 1

    const-class v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/payment/core/constant/ClientStatus;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->$VALUES:[Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v0}, [Lcom/hangame/hsp/payment/core/constant/ClientStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->value:Ljava/lang/String;

    return-object v0
.end method
