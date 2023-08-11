.class public final enum Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

.field public static final enum HSP_NELOLOGLEVEL_DEBUG:Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

.field public static final enum HSP_NELOLOGLEVEL_ERROR:Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

.field public static final enum HSP_NELOLOGLEVEL_FATAL:Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

.field public static final enum HSP_NELOLOGLEVEL_INFO:Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

.field public static final enum HSP_NELOLOGLEVEL_WARN:Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    const-string v1, "HSP_NELOLOGLEVEL_DEBUG"

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;->HSP_NELOLOGLEVEL_DEBUG:Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    new-instance v0, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    const-string v1, "HSP_NELOLOGLEVEL_INFO"

    invoke-direct {v0, v1, v3}, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;->HSP_NELOLOGLEVEL_INFO:Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    new-instance v0, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    const-string v1, "HSP_NELOLOGLEVEL_WARN"

    invoke-direct {v0, v1, v4}, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;->HSP_NELOLOGLEVEL_WARN:Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    new-instance v0, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    const-string v1, "HSP_NELOLOGLEVEL_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;->HSP_NELOLOGLEVEL_ERROR:Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    new-instance v0, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    const-string v1, "HSP_NELOLOGLEVEL_FATAL"

    invoke-direct {v0, v1, v6}, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;->HSP_NELOLOGLEVEL_FATAL:Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    sget-object v1, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;->HSP_NELOLOGLEVEL_DEBUG:Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;->HSP_NELOLOGLEVEL_INFO:Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;->HSP_NELOLOGLEVEL_WARN:Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;->HSP_NELOLOGLEVEL_ERROR:Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;->HSP_NELOLOGLEVEL_FATAL:Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;->$VALUES:[Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;
    .locals 1

    const-class v0, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;->$VALUES:[Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    invoke-virtual {v0}, [Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/HSPBip$HSPNeloLogLevel;

    return-object v0
.end method
