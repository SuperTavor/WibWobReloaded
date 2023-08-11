.class public final enum Ltv/superawesome/sdk/views/SAOrientation;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Ltv/superawesome/sdk/views/SAOrientation;

.field public static final enum ANY:Ltv/superawesome/sdk/views/SAOrientation;

.field public static final enum LANDSCAPE:Ltv/superawesome/sdk/views/SAOrientation;

.field public static final enum PORTRAIT:Ltv/superawesome/sdk/views/SAOrientation;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ltv/superawesome/sdk/views/SAOrientation;

    const-string v1, "ANY"

    invoke-direct {v0, v1, v2, v2}, Ltv/superawesome/sdk/views/SAOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ltv/superawesome/sdk/views/SAOrientation;->ANY:Ltv/superawesome/sdk/views/SAOrientation;

    new-instance v0, Ltv/superawesome/sdk/views/SAOrientation;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v3, v3}, Ltv/superawesome/sdk/views/SAOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ltv/superawesome/sdk/views/SAOrientation;->PORTRAIT:Ltv/superawesome/sdk/views/SAOrientation;

    new-instance v0, Ltv/superawesome/sdk/views/SAOrientation;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v4, v4}, Ltv/superawesome/sdk/views/SAOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ltv/superawesome/sdk/views/SAOrientation;->LANDSCAPE:Ltv/superawesome/sdk/views/SAOrientation;

    const/4 v0, 0x3

    new-array v0, v0, [Ltv/superawesome/sdk/views/SAOrientation;

    sget-object v1, Ltv/superawesome/sdk/views/SAOrientation;->ANY:Ltv/superawesome/sdk/views/SAOrientation;

    aput-object v1, v0, v2

    sget-object v1, Ltv/superawesome/sdk/views/SAOrientation;->PORTRAIT:Ltv/superawesome/sdk/views/SAOrientation;

    aput-object v1, v0, v3

    sget-object v1, Ltv/superawesome/sdk/views/SAOrientation;->LANDSCAPE:Ltv/superawesome/sdk/views/SAOrientation;

    aput-object v1, v0, v4

    sput-object v0, Ltv/superawesome/sdk/views/SAOrientation;->$VALUES:[Ltv/superawesome/sdk/views/SAOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ltv/superawesome/sdk/views/SAOrientation;->value:I

    return-void
.end method

.method public static fromValue(I)Ltv/superawesome/sdk/views/SAOrientation;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object v0, Ltv/superawesome/sdk/views/SAOrientation;->LANDSCAPE:Ltv/superawesome/sdk/views/SAOrientation;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object v0, Ltv/superawesome/sdk/views/SAOrientation;->PORTRAIT:Ltv/superawesome/sdk/views/SAOrientation;

    goto :goto_0

    :cond_1
    sget-object v0, Ltv/superawesome/sdk/views/SAOrientation;->ANY:Ltv/superawesome/sdk/views/SAOrientation;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/superawesome/sdk/views/SAOrientation;
    .locals 1

    const-class v0, Ltv/superawesome/sdk/views/SAOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltv/superawesome/sdk/views/SAOrientation;

    return-object v0
.end method

.method public static values()[Ltv/superawesome/sdk/views/SAOrientation;
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAOrientation;->$VALUES:[Ltv/superawesome/sdk/views/SAOrientation;

    invoke-virtual {v0}, [Ltv/superawesome/sdk/views/SAOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/superawesome/sdk/views/SAOrientation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Ltv/superawesome/sdk/views/SAOrientation;->value:I

    return v0
.end method
