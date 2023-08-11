.class public final enum Lcom/hangame/hsp/cgp/constant/CGPType$EventType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

.field public static final enum CROSS_GAME_PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

.field public static final enum IN_GAME_EVENT_BROWSER:Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

.field public static final enum IN_GAME_EVENT_WEB_VIEW:Lcom/hangame/hsp/cgp/constant/CGPType$EventType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

    const-string v1, "CROSS_GAME_PROMOTION"

    invoke-direct {v0, v1, v2, v2}, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;->CROSS_GAME_PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

    new-instance v0, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

    const-string v1, "IN_GAME_EVENT_WEB_VIEW"

    invoke-direct {v0, v1, v3, v3}, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;->IN_GAME_EVENT_WEB_VIEW:Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

    new-instance v0, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

    const-string v1, "IN_GAME_EVENT_BROWSER"

    invoke-direct {v0, v1, v4, v4}, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;->IN_GAME_EVENT_BROWSER:Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;->CROSS_GAME_PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;->IN_GAME_EVENT_WEB_VIEW:Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;->IN_GAME_EVENT_BROWSER:Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;->$VALUES:[Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/hangame/hsp/cgp/constant/CGPType$EventType;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;->values()[Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

    move-result-object v0

    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;->CROSS_GAME_PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/cgp/constant/CGPType$EventType;
    .locals 1

    const-class v0, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/cgp/constant/CGPType$EventType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;->$VALUES:[Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

    invoke-virtual {v0}, [Lcom/hangame/hsp/cgp/constant/CGPType$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/cgp/constant/CGPType$EventType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/cgp/constant/CGPType$EventType;->value:I

    return v0
.end method
