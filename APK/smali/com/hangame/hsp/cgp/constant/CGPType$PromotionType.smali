.class public final enum Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

.field public static final enum PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

.field public static final enum REWARD:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

.field public static final enum REWARD_INSTALL:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    const-string v1, "PROMOTION"

    invoke-direct {v0, v1, v4, v2}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    new-instance v0, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    const-string v1, "REWARD"

    invoke-direct {v0, v1, v2, v3}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->REWARD:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    new-instance v0, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    const-string v1, "REWARD_INSTALL"

    invoke-direct {v0, v1, v3, v5}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->REWARD_INSTALL:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    new-array v0, v5, [Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->REWARD:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->REWARD_INSTALL:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->$VALUES:[Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;
    .locals 1

    const-class v0, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->$VALUES:[Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v0}, [Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->value:I

    return v0
.end method
