.class public final enum Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

.field public static final enum HSP_IDP_FACEBOOK:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

.field public static final enum HSP_IDP_TWITTER:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    const-string v1, "HSP_IDP_TWITTER"

    const-string v2, "twitter"

    invoke-direct {v0, v1, v3, v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_TWITTER:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    new-instance v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    const-string v1, "HSP_IDP_FACEBOOK"

    const-string v2, "facebook"

    invoke-direct {v0, v1, v4, v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_FACEBOOK:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_TWITTER:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->HSP_IDP_FACEBOOK:Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->$VALUES:[Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;
    .locals 1

    const-class v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->$VALUES:[Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    invoke-virtual {v0}, [Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->value:Ljava/lang/String;

    return-object v0
.end method
