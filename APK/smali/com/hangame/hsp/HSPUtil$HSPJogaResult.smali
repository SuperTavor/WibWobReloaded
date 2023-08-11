.class public final enum Lcom/hangame/hsp/HSPUtil$HSPJogaResult;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

.field public static final enum HSP_JOGA_AGREE:Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

.field public static final enum HSP_JOGA_ALREADY_AGREED:Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

.field public static final enum HSP_JOGA_CANCELED:Lcom/hangame/hsp/HSPUtil$HSPJogaResult;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

    const-string v1, "HSP_JOGA_AGREE"

    invoke-direct {v0, v1, v2, v2}, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;->HSP_JOGA_AGREE:Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

    new-instance v0, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

    const-string v1, "HSP_JOGA_CANCELED"

    invoke-direct {v0, v1, v3, v3}, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;->HSP_JOGA_CANCELED:Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

    new-instance v0, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

    const-string v1, "HSP_JOGA_ALREADY_AGREED"

    invoke-direct {v0, v1, v4, v4}, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;->HSP_JOGA_ALREADY_AGREED:Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

    sget-object v1, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;->HSP_JOGA_AGREE:Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;->HSP_JOGA_CANCELED:Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;->HSP_JOGA_ALREADY_AGREED:Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;->$VALUES:[Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/HSPUtil$HSPJogaResult;
    .locals 1

    const-class v0, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/HSPUtil$HSPJogaResult;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;->$VALUES:[Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

    invoke-virtual {v0}, [Lcom/hangame/hsp/HSPUtil$HSPJogaResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/HSPUtil$HSPJogaResult;

    return-object v0
.end method


# virtual methods
.method public getVal()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPUtil$HSPJogaResult;->value:I

    return v0
.end method
