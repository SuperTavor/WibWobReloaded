.class public final enum Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

.field public static final enum HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

.field public static final enum HSP_RELATIONTYPE_FOLLOW:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

.field public static final enum HSP_RELATIONTYPE_NONE:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;


# instance fields
.field private value:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    const-string v1, "HSP_RELATIONTYPE_NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_NONE:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    new-instance v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    const-string v1, "HSP_RELATIONTYPE_FOLLOW"

    invoke-direct {v0, v1, v3, v3}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_FOLLOW:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    new-instance v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    const-string v1, "HSP_RELATIONTYPE_BLOCK"

    invoke-direct {v0, v1, v4, v4}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_NONE:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_FOLLOW:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->$VALUES:[Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->value:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;
    .locals 1

    const-class v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->$VALUES:[Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v0}, [Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    return-object v0
.end method


# virtual methods
.method getValue()B
    .locals 1

    iget-byte v0, p0, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->value:B

    return v0
.end method
