.class public final enum Ltv/superawesome/lib/sasession/SAConfiguration;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Ltv/superawesome/lib/sasession/SAConfiguration;

.field public static final enum PRODUCTION:Ltv/superawesome/lib/sasession/SAConfiguration;

.field public static final enum STAGING:Ltv/superawesome/lib/sasession/SAConfiguration;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ltv/superawesome/lib/sasession/SAConfiguration;

    const-string v1, "PRODUCTION"

    invoke-direct {v0, v1, v2, v2}, Ltv/superawesome/lib/sasession/SAConfiguration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ltv/superawesome/lib/sasession/SAConfiguration;->PRODUCTION:Ltv/superawesome/lib/sasession/SAConfiguration;

    new-instance v0, Ltv/superawesome/lib/sasession/SAConfiguration;

    const-string v1, "STAGING"

    invoke-direct {v0, v1, v3, v3}, Ltv/superawesome/lib/sasession/SAConfiguration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ltv/superawesome/lib/sasession/SAConfiguration;->STAGING:Ltv/superawesome/lib/sasession/SAConfiguration;

    const/4 v0, 0x2

    new-array v0, v0, [Ltv/superawesome/lib/sasession/SAConfiguration;

    sget-object v1, Ltv/superawesome/lib/sasession/SAConfiguration;->PRODUCTION:Ltv/superawesome/lib/sasession/SAConfiguration;

    aput-object v1, v0, v2

    sget-object v1, Ltv/superawesome/lib/sasession/SAConfiguration;->STAGING:Ltv/superawesome/lib/sasession/SAConfiguration;

    aput-object v1, v0, v3

    sput-object v0, Ltv/superawesome/lib/sasession/SAConfiguration;->$VALUES:[Ltv/superawesome/lib/sasession/SAConfiguration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ltv/superawesome/lib/sasession/SAConfiguration;->value:I

    return-void
.end method

.method public static fromValue(I)Ltv/superawesome/lib/sasession/SAConfiguration;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Ltv/superawesome/lib/sasession/SAConfiguration;->PRODUCTION:Ltv/superawesome/lib/sasession/SAConfiguration;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ltv/superawesome/lib/sasession/SAConfiguration;->STAGING:Ltv/superawesome/lib/sasession/SAConfiguration;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/superawesome/lib/sasession/SAConfiguration;
    .locals 1

    const-class v0, Ltv/superawesome/lib/sasession/SAConfiguration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/sasession/SAConfiguration;

    return-object v0
.end method

.method public static values()[Ltv/superawesome/lib/sasession/SAConfiguration;
    .locals 1

    sget-object v0, Ltv/superawesome/lib/sasession/SAConfiguration;->$VALUES:[Ltv/superawesome/lib/sasession/SAConfiguration;

    invoke-virtual {v0}, [Ltv/superawesome/lib/sasession/SAConfiguration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/superawesome/lib/sasession/SAConfiguration;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Ltv/superawesome/lib/sasession/SAConfiguration;->value:I

    return v0
.end method
