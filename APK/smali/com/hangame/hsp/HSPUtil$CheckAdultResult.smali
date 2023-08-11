.class final enum Lcom/hangame/hsp/HSPUtil$CheckAdultResult;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

.field public static final enum HSP_ADULT:Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

.field public static final enum HSP_ALREADY_AUTHENTICATED_AS_ADULT:Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

.field public static final enum HSP_KID_NOT_PERMITTED_BY_PARENTS:Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

.field public static final enum HSP_KID_PERMITTED_BY_PARENTS:Lcom/hangame/hsp/HSPUtil$CheckAdultResult;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

    const-string v1, "HSP_KID_NOT_PERMITTED_BY_PARENTS"

    invoke-direct {v0, v1, v2, v2}, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;->HSP_KID_NOT_PERMITTED_BY_PARENTS:Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

    new-instance v0, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

    const-string v1, "HSP_KID_PERMITTED_BY_PARENTS"

    invoke-direct {v0, v1, v3, v3}, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;->HSP_KID_PERMITTED_BY_PARENTS:Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

    new-instance v0, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

    const-string v1, "HSP_ADULT"

    invoke-direct {v0, v1, v4, v4}, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;->HSP_ADULT:Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

    new-instance v0, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

    const-string v1, "HSP_ALREADY_AUTHENTICATED_AS_ADULT"

    invoke-direct {v0, v1, v5, v5}, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;->HSP_ALREADY_AUTHENTICATED_AS_ADULT:Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

    sget-object v1, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;->HSP_KID_NOT_PERMITTED_BY_PARENTS:Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;->HSP_KID_PERMITTED_BY_PARENTS:Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;->HSP_ADULT:Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;->HSP_ALREADY_AUTHENTICATED_AS_ADULT:Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;->$VALUES:[Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/HSPUtil$CheckAdultResult;
    .locals 1

    const-class v0, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/HSPUtil$CheckAdultResult;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;->$VALUES:[Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

    invoke-virtual {v0}, [Lcom/hangame/hsp/HSPUtil$CheckAdultResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/HSPUtil$CheckAdultResult;

    return-object v0
.end method


# virtual methods
.method public getVal()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPUtil$CheckAdultResult;->value:I

    return v0
.end method
