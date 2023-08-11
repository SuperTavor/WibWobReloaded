.class public final enum Lcom/hangame/hsp/HSPState;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/HSPState;

.field public static final enum HSP_STATE_INIT:Lcom/hangame/hsp/HSPState;

.field public static final enum HSP_STATE_OFFLINE:Lcom/hangame/hsp/HSPState;

.field public static final enum HSP_STATE_ONLINE:Lcom/hangame/hsp/HSPState;

.field public static final enum HSP_STATE_UNAVAILABLE:Lcom/hangame/hsp/HSPState;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/hangame/hsp/HSPState;

    const-string v1, "HSP_STATE_INIT"

    invoke-direct {v0, v1, v2, v2}, Lcom/hangame/hsp/HSPState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/HSPState;->HSP_STATE_INIT:Lcom/hangame/hsp/HSPState;

    new-instance v0, Lcom/hangame/hsp/HSPState;

    const-string v1, "HSP_STATE_ONLINE"

    invoke-direct {v0, v1, v3, v3}, Lcom/hangame/hsp/HSPState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/HSPState;->HSP_STATE_ONLINE:Lcom/hangame/hsp/HSPState;

    new-instance v0, Lcom/hangame/hsp/HSPState;

    const-string v1, "HSP_STATE_OFFLINE"

    invoke-direct {v0, v1, v4, v4}, Lcom/hangame/hsp/HSPState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/HSPState;->HSP_STATE_OFFLINE:Lcom/hangame/hsp/HSPState;

    new-instance v0, Lcom/hangame/hsp/HSPState;

    const-string v1, "HSP_STATE_UNAVAILABLE"

    invoke-direct {v0, v1, v5, v5}, Lcom/hangame/hsp/HSPState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/HSPState;->HSP_STATE_UNAVAILABLE:Lcom/hangame/hsp/HSPState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hangame/hsp/HSPState;

    sget-object v1, Lcom/hangame/hsp/HSPState;->HSP_STATE_INIT:Lcom/hangame/hsp/HSPState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hsp/HSPState;->HSP_STATE_ONLINE:Lcom/hangame/hsp/HSPState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/HSPState;->HSP_STATE_OFFLINE:Lcom/hangame/hsp/HSPState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hangame/hsp/HSPState;->HSP_STATE_UNAVAILABLE:Lcom/hangame/hsp/HSPState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/hangame/hsp/HSPState;->$VALUES:[Lcom/hangame/hsp/HSPState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hangame/hsp/HSPState;->mValue:I

    return-void
.end method

.method public static getHSPState(I)Lcom/hangame/hsp/HSPState;
    .locals 5

    invoke-static {}, Lcom/hangame/hsp/HSPState;->values()[Lcom/hangame/hsp/HSPState;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPState;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/HSPState;
    .locals 1

    const-class v0, Lcom/hangame/hsp/HSPState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPState;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/HSPState;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPState;->$VALUES:[Lcom/hangame/hsp/HSPState;

    invoke-virtual {v0}, [Lcom/hangame/hsp/HSPState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/HSPState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPState;->mValue:I

    return v0
.end method
