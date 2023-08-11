.class final enum Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

.field public static final enum HSP_GAMEMATE_EVENT_ACCEPT:Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

.field public static final enum HSP_GAMEMATE_EVENT_PROPOSE:Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

.field public static final enum HSP_GAMEMATE_EVENT_REJECT:Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

.field public static final enum HSP_GAMEMATE_EVENT_REMOVE:Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;


# instance fields
.field private final mEventTypeId:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    const-string v1, "HSP_GAMEMATE_EVENT_PROPOSE"

    invoke-direct {v0, v1, v5, v2}, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->HSP_GAMEMATE_EVENT_PROPOSE:Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    new-instance v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    const-string v1, "HSP_GAMEMATE_EVENT_ACCEPT"

    invoke-direct {v0, v1, v2, v3}, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->HSP_GAMEMATE_EVENT_ACCEPT:Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    new-instance v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    const-string v1, "HSP_GAMEMATE_EVENT_REJECT"

    invoke-direct {v0, v1, v3, v4}, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->HSP_GAMEMATE_EVENT_REJECT:Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    new-instance v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    const-string v1, "HSP_GAMEMATE_EVENT_REMOVE"

    invoke-direct {v0, v1, v4, v6}, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->HSP_GAMEMATE_EVENT_REMOVE:Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    new-array v0, v6, [Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    sget-object v1, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->HSP_GAMEMATE_EVENT_PROPOSE:Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->HSP_GAMEMATE_EVENT_ACCEPT:Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->HSP_GAMEMATE_EVENT_REJECT:Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->HSP_GAMEMATE_EVENT_REMOVE:Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->$VALUES:[Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->mEventTypeId:B

    return-void
.end method

.method static synthetic access$400(B)Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;
    .locals 1

    invoke-static {p0}, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->getEventType(B)Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    move-result-object v0

    return-object v0
.end method

.method private static getEventType(B)Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->HSP_GAMEMATE_EVENT_PROPOSE:Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->getValue()B

    move-result v0

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->HSP_GAMEMATE_EVENT_PROPOSE:Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->HSP_GAMEMATE_EVENT_ACCEPT:Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->getValue()B

    move-result v0

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->HSP_GAMEMATE_EVENT_ACCEPT:Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->HSP_GAMEMATE_EVENT_REJECT:Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->getValue()B

    move-result v0

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->HSP_GAMEMATE_EVENT_REJECT:Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->HSP_GAMEMATE_EVENT_REMOVE:Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->getValue()B

    move-result v0

    if-ne p0, v0, :cond_3

    sget-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->HSP_GAMEMATE_EVENT_REMOVE:Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;
    .locals 1

    const-class v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->$VALUES:[Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    invoke-virtual {v0}, [Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;

    return-object v0
.end method


# virtual methods
.method getValue()B
    .locals 1

    iget-byte v0, p0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateEventType;->mEventTypeId:B

    return v0
.end method
