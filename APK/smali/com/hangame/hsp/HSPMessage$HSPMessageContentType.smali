.class public final enum Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

.field public static final enum HSP_MESSAGECONTENTTYPE_IMAGE:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

.field public static final enum HSP_MESSAGECONTENTTYPE_TEXT:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;


# instance fields
.field private value:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    const-string v1, "HSP_MESSAGECONTENTTYPE_TEXT"

    invoke-direct {v0, v1, v3, v2}, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->HSP_MESSAGECONTENTTYPE_TEXT:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    new-instance v0, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    const-string v1, "HSP_MESSAGECONTENTTYPE_IMAGE"

    invoke-direct {v0, v1, v2, v4}, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->HSP_MESSAGECONTENTTYPE_IMAGE:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    new-array v0, v4, [Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    sget-object v1, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->HSP_MESSAGECONTENTTYPE_TEXT:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->HSP_MESSAGECONTENTTYPE_IMAGE:Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->$VALUES:[Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->value:B

    return-void
.end method

.method static synthetic access$1100(Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;)B
    .locals 1

    iget-byte v0, p0, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->value:B

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;
    .locals 1

    const-class v0, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->$VALUES:[Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    invoke-virtual {v0}, [Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;

    return-object v0
.end method


# virtual methods
.method getValue()B
    .locals 1

    iget-byte v0, p0, Lcom/hangame/hsp/HSPMessage$HSPMessageContentType;->value:B

    return v0
.end method
