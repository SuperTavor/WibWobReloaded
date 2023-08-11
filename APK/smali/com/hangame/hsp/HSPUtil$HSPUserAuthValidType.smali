.class public final enum Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;

.field public static final enum HSP_TOAST_REAUTH_PAYMENT_TYPE:Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;

.field public static final enum HSP_TOAST_REAUTH_TYPE:Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;

    const-string v1, "HSP_TOAST_REAUTH_PAYMENT_TYPE"

    invoke-direct {v0, v1, v2, v2}, Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;->HSP_TOAST_REAUTH_PAYMENT_TYPE:Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;

    new-instance v0, Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;

    const-string v1, "HSP_TOAST_REAUTH_TYPE"

    invoke-direct {v0, v1, v3, v3}, Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;->HSP_TOAST_REAUTH_TYPE:Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;

    sget-object v1, Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;->HSP_TOAST_REAUTH_PAYMENT_TYPE:Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;->HSP_TOAST_REAUTH_TYPE:Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;->$VALUES:[Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;->value:I

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;)I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;->value:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;
    .locals 1

    const-class v0, Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;->$VALUES:[Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;

    invoke-virtual {v0}, [Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;

    return-object v0
.end method


# virtual methods
.method public getVal()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPUtil$HSPUserAuthValidType;->value:I

    return v0
.end method
