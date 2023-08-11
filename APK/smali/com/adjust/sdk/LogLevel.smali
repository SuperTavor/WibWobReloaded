.class public final enum Lcom/adjust/sdk/LogLevel;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/adjust/sdk/LogLevel;

.field public static final enum ASSERT:Lcom/adjust/sdk/LogLevel;

.field public static final enum DEBUG:Lcom/adjust/sdk/LogLevel;

.field public static final enum ERROR:Lcom/adjust/sdk/LogLevel;

.field public static final enum INFO:Lcom/adjust/sdk/LogLevel;

.field public static final enum VERBOSE:Lcom/adjust/sdk/LogLevel;

.field public static final enum WARN:Lcom/adjust/sdk/LogLevel;


# instance fields
.field final androidLogLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    new-instance v0, Lcom/adjust/sdk/LogLevel;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v7, v3}, Lcom/adjust/sdk/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adjust/sdk/LogLevel;->VERBOSE:Lcom/adjust/sdk/LogLevel;

    new-instance v0, Lcom/adjust/sdk/LogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v4}, Lcom/adjust/sdk/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adjust/sdk/LogLevel;->DEBUG:Lcom/adjust/sdk/LogLevel;

    new-instance v0, Lcom/adjust/sdk/LogLevel;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3, v5}, Lcom/adjust/sdk/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adjust/sdk/LogLevel;->INFO:Lcom/adjust/sdk/LogLevel;

    new-instance v0, Lcom/adjust/sdk/LogLevel;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v4, v6}, Lcom/adjust/sdk/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adjust/sdk/LogLevel;->WARN:Lcom/adjust/sdk/LogLevel;

    new-instance v0, Lcom/adjust/sdk/LogLevel;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lcom/adjust/sdk/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adjust/sdk/LogLevel;->ERROR:Lcom/adjust/sdk/LogLevel;

    new-instance v0, Lcom/adjust/sdk/LogLevel;

    const-string v1, "ASSERT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lcom/adjust/sdk/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adjust/sdk/LogLevel;->ASSERT:Lcom/adjust/sdk/LogLevel;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/adjust/sdk/LogLevel;

    sget-object v1, Lcom/adjust/sdk/LogLevel;->VERBOSE:Lcom/adjust/sdk/LogLevel;

    aput-object v1, v0, v7

    const/4 v1, 0x1

    sget-object v2, Lcom/adjust/sdk/LogLevel;->DEBUG:Lcom/adjust/sdk/LogLevel;

    aput-object v2, v0, v1

    sget-object v1, Lcom/adjust/sdk/LogLevel;->INFO:Lcom/adjust/sdk/LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adjust/sdk/LogLevel;->WARN:Lcom/adjust/sdk/LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adjust/sdk/LogLevel;->ERROR:Lcom/adjust/sdk/LogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adjust/sdk/LogLevel;->ASSERT:Lcom/adjust/sdk/LogLevel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/adjust/sdk/LogLevel;->$VALUES:[Lcom/adjust/sdk/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/adjust/sdk/LogLevel;->androidLogLevel:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adjust/sdk/LogLevel;
    .locals 1

    const-class v0, Lcom/adjust/sdk/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/adjust/sdk/LogLevel;
    .locals 1

    sget-object v0, Lcom/adjust/sdk/LogLevel;->$VALUES:[Lcom/adjust/sdk/LogLevel;

    invoke-virtual {v0}, [Lcom/adjust/sdk/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adjust/sdk/LogLevel;

    return-object v0
.end method


# virtual methods
.method public getAndroidLogLevel()I
    .locals 1

    iget v0, p0, Lcom/adjust/sdk/LogLevel;->androidLogLevel:I

    return v0
.end method
