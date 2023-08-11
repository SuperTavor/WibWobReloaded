.class public final enum Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

.field public static final enum ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

.field public static final enum FREECHARGE:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

.field public static final enum NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2, v2}, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    new-instance v0, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    const-string v1, "ENDING"

    invoke-direct {v0, v1, v3, v3}, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    new-instance v0, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    const-string v1, "FREECHARGE"

    invoke-direct {v0, v1, v4, v4}, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->FREECHARGE:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->FREECHARGE:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->$VALUES:[Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;
    .locals 1

    const-class v0, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->$VALUES:[Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v0}, [Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    return-object v0
.end method


# virtual methods
.method public getShapeTypeByOrdinal(I)Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->values()[Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->value:I

    return v0
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->value:I

    return-void
.end method
