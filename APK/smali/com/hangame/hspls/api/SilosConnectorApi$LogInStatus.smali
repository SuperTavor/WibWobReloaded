.class public final enum Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

.field public static final enum Status_DeviceLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

.field public static final enum Status_GuestLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

.field public static final enum Status_IDPAutoLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

.field public static final enum Status_IDPLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

.field public static final enum Status_NotExistSession:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

.field public static final enum Status_NotLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

.field public static final enum Status_Reset:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    const-string v1, "Status_NotExistSession"

    invoke-direct {v0, v1, v3}, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_NotExistSession:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    new-instance v0, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    const-string v1, "Status_Reset"

    invoke-direct {v0, v1, v4}, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_Reset:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    new-instance v0, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    const-string v1, "Status_NotLogIn"

    invoke-direct {v0, v1, v5}, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_NotLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    new-instance v0, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    const-string v1, "Status_DeviceLogIn"

    invoke-direct {v0, v1, v6}, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_DeviceLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    new-instance v0, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    const-string v1, "Status_IDPLogIn"

    invoke-direct {v0, v1, v7}, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_IDPLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    new-instance v0, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    const-string v1, "Status_IDPAutoLogIn"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_IDPAutoLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    new-instance v0, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    const-string v1, "Status_GuestLogIn"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_GuestLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    sget-object v1, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_NotExistSession:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_Reset:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_NotLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_DeviceLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_IDPLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_IDPAutoLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_GuestLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->$VALUES:[Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;
    .locals 1

    const-class v0, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;
    .locals 1

    sget-object v0, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->$VALUES:[Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    invoke-virtual {v0}, [Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    return-object v0
.end method
