.class public final enum Lcom/adjust/sdk/ActivityKind;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/adjust/sdk/ActivityKind;

.field public static final enum ATTRIBUTION:Lcom/adjust/sdk/ActivityKind;

.field public static final enum CLICK:Lcom/adjust/sdk/ActivityKind;

.field public static final enum EVENT:Lcom/adjust/sdk/ActivityKind;

.field public static final enum REATTRIBUTION:Lcom/adjust/sdk/ActivityKind;

.field public static final enum REVENUE:Lcom/adjust/sdk/ActivityKind;

.field public static final enum SESSION:Lcom/adjust/sdk/ActivityKind;

.field public static final enum UNKNOWN:Lcom/adjust/sdk/ActivityKind;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/adjust/sdk/ActivityKind;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/adjust/sdk/ActivityKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adjust/sdk/ActivityKind;->UNKNOWN:Lcom/adjust/sdk/ActivityKind;

    new-instance v0, Lcom/adjust/sdk/ActivityKind;

    const-string v1, "SESSION"

    invoke-direct {v0, v1, v4}, Lcom/adjust/sdk/ActivityKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adjust/sdk/ActivityKind;->SESSION:Lcom/adjust/sdk/ActivityKind;

    new-instance v0, Lcom/adjust/sdk/ActivityKind;

    const-string v1, "EVENT"

    invoke-direct {v0, v1, v5}, Lcom/adjust/sdk/ActivityKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adjust/sdk/ActivityKind;->EVENT:Lcom/adjust/sdk/ActivityKind;

    new-instance v0, Lcom/adjust/sdk/ActivityKind;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v6}, Lcom/adjust/sdk/ActivityKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adjust/sdk/ActivityKind;->CLICK:Lcom/adjust/sdk/ActivityKind;

    new-instance v0, Lcom/adjust/sdk/ActivityKind;

    const-string v1, "ATTRIBUTION"

    invoke-direct {v0, v1, v7}, Lcom/adjust/sdk/ActivityKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adjust/sdk/ActivityKind;->ATTRIBUTION:Lcom/adjust/sdk/ActivityKind;

    new-instance v0, Lcom/adjust/sdk/ActivityKind;

    const-string v1, "REVENUE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adjust/sdk/ActivityKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adjust/sdk/ActivityKind;->REVENUE:Lcom/adjust/sdk/ActivityKind;

    new-instance v0, Lcom/adjust/sdk/ActivityKind;

    const-string v1, "REATTRIBUTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adjust/sdk/ActivityKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adjust/sdk/ActivityKind;->REATTRIBUTION:Lcom/adjust/sdk/ActivityKind;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/adjust/sdk/ActivityKind;

    sget-object v1, Lcom/adjust/sdk/ActivityKind;->UNKNOWN:Lcom/adjust/sdk/ActivityKind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adjust/sdk/ActivityKind;->SESSION:Lcom/adjust/sdk/ActivityKind;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adjust/sdk/ActivityKind;->EVENT:Lcom/adjust/sdk/ActivityKind;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adjust/sdk/ActivityKind;->CLICK:Lcom/adjust/sdk/ActivityKind;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adjust/sdk/ActivityKind;->ATTRIBUTION:Lcom/adjust/sdk/ActivityKind;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adjust/sdk/ActivityKind;->REVENUE:Lcom/adjust/sdk/ActivityKind;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adjust/sdk/ActivityKind;->REATTRIBUTION:Lcom/adjust/sdk/ActivityKind;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adjust/sdk/ActivityKind;->$VALUES:[Lcom/adjust/sdk/ActivityKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/adjust/sdk/ActivityKind;
    .locals 1

    const-string v0, "session"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adjust/sdk/ActivityKind;->SESSION:Lcom/adjust/sdk/ActivityKind;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "event"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adjust/sdk/ActivityKind;->EVENT:Lcom/adjust/sdk/ActivityKind;

    goto :goto_0

    :cond_1
    const-string v0, "click"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/adjust/sdk/ActivityKind;->CLICK:Lcom/adjust/sdk/ActivityKind;

    goto :goto_0

    :cond_2
    const-string v0, "attribution"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/adjust/sdk/ActivityKind;->ATTRIBUTION:Lcom/adjust/sdk/ActivityKind;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/adjust/sdk/ActivityKind;->UNKNOWN:Lcom/adjust/sdk/ActivityKind;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adjust/sdk/ActivityKind;
    .locals 1

    const-class v0, Lcom/adjust/sdk/ActivityKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/ActivityKind;

    return-object v0
.end method

.method public static values()[Lcom/adjust/sdk/ActivityKind;
    .locals 1

    sget-object v0, Lcom/adjust/sdk/ActivityKind;->$VALUES:[Lcom/adjust/sdk/ActivityKind;

    invoke-virtual {v0}, [Lcom/adjust/sdk/ActivityKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adjust/sdk/ActivityKind;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/adjust/sdk/ActivityKind$1;->$SwitchMap$com$adjust$sdk$ActivityKind:[I

    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "session"

    goto :goto_0

    :pswitch_1
    const-string v0, "event"

    goto :goto_0

    :pswitch_2
    const-string v0, "click"

    goto :goto_0

    :pswitch_3
    const-string v0, "attribution"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
