.class public final enum Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

.field public static final enum BANNER:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

.field public static final enum BUTTON:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

.field public static final enum ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

.field public static final enum FREECHARGE:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

.field public static final enum POPUP:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    const-string v1, "BUTTON"

    invoke-direct {v0, v1, v7, v3}, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->BUTTON:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    new-instance v0, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    const-string v1, "BANNER"

    invoke-direct {v0, v1, v3, v4}, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->BANNER:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    new-instance v0, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    const-string v1, "POPUP"

    invoke-direct {v0, v1, v4, v5}, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->POPUP:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    new-instance v0, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    const-string v1, "ENDING"

    invoke-direct {v0, v1, v5, v6}, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    new-instance v0, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    const-string v1, "FREECHARGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->FREECHARGE:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->BUTTON:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->BANNER:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->POPUP:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->FREECHARGE:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->$VALUES:[Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;
    .locals 1

    const-class v0, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->$VALUES:[Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    invoke-virtual {v0}, [Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->value:I

    return v0
.end method
