.class public final enum Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

.field public static final enum LANDSCAPE:Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

.field public static final enum PORTRAIT:Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v3, v2}, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;->LANDSCAPE:Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

    new-instance v0, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v2, v4}, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;->PORTRAIT:Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

    new-array v0, v4, [Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

    sget-object v1, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;->LANDSCAPE:Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;->PORTRAIT:Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;->$VALUES:[Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;->values()[Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

    move-result-object v0

    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;->LANDSCAPE:Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;
    .locals 1

    const-class v0, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;->$VALUES:[Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

    invoke-virtual {v0}, [Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;->value:I

    return v0
.end method
