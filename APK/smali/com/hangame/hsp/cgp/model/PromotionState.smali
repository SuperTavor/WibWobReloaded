.class public final enum Lcom/hangame/hsp/cgp/model/PromotionState;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/cgp/model/PromotionState;

.field public static final enum CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

.field public static final enum CGP_PROMOTION_EXISTS:Lcom/hangame/hsp/cgp/model/PromotionState;

.field public static final enum CGP_PROMOTION_REWARD_EXISTS:Lcom/hangame/hsp/cgp/model/PromotionState;

.field public static final enum CGP_REWARD_REQUIRED:Lcom/hangame/hsp/cgp/model/PromotionState;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/hangame/hsp/cgp/model/PromotionState;

    const-string v1, "CGP_NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/hangame/hsp/cgp/model/PromotionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

    new-instance v0, Lcom/hangame/hsp/cgp/model/PromotionState;

    const-string v1, "CGP_PROMOTION_EXISTS"

    invoke-direct {v0, v1, v3, v3}, Lcom/hangame/hsp/cgp/model/PromotionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_PROMOTION_EXISTS:Lcom/hangame/hsp/cgp/model/PromotionState;

    new-instance v0, Lcom/hangame/hsp/cgp/model/PromotionState;

    const-string v1, "CGP_REWARD_REQUIRED"

    invoke-direct {v0, v1, v4, v4}, Lcom/hangame/hsp/cgp/model/PromotionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_REWARD_REQUIRED:Lcom/hangame/hsp/cgp/model/PromotionState;

    new-instance v0, Lcom/hangame/hsp/cgp/model/PromotionState;

    const-string v1, "CGP_PROMOTION_REWARD_EXISTS"

    invoke-direct {v0, v1, v5, v5}, Lcom/hangame/hsp/cgp/model/PromotionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_PROMOTION_REWARD_EXISTS:Lcom/hangame/hsp/cgp/model/PromotionState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hangame/hsp/cgp/model/PromotionState;

    sget-object v1, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_PROMOTION_EXISTS:Lcom/hangame/hsp/cgp/model/PromotionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_REWARD_REQUIRED:Lcom/hangame/hsp/cgp/model/PromotionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_PROMOTION_REWARD_EXISTS:Lcom/hangame/hsp/cgp/model/PromotionState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/hangame/hsp/cgp/model/PromotionState;->$VALUES:[Lcom/hangame/hsp/cgp/model/PromotionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hangame/hsp/cgp/model/PromotionState;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/cgp/model/PromotionState;
    .locals 1

    const-class v0, Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/cgp/model/PromotionState;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/cgp/model/PromotionState;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/cgp/model/PromotionState;->$VALUES:[Lcom/hangame/hsp/cgp/model/PromotionState;

    invoke-virtual {v0}, [Lcom/hangame/hsp/cgp/model/PromotionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/cgp/model/PromotionState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/cgp/model/PromotionState;->value:I

    return v0
.end method
