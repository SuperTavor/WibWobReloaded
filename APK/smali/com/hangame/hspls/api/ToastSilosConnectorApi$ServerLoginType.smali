.class public final enum Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

.field public static final enum AUTO:Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

.field public static final enum LOGINBYOAUTH:Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

.field public static final enum UPDATE:Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v4, v2}, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;->AUTO:Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

    new-instance v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v2, v3}, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;->UPDATE:Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

    new-instance v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

    const-string v1, "LOGINBYOAUTH"

    invoke-direct {v0, v1, v3, v5}, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;->LOGINBYOAUTH:Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

    new-array v0, v5, [Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

    sget-object v1, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;->AUTO:Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;->UPDATE:Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;->LOGINBYOAUTH:Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;->$VALUES:[Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;->mValue:I

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;)I
    .locals 1

    iget v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;->mValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;
    .locals 1

    const-class v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;
    .locals 1

    sget-object v0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;->$VALUES:[Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

    invoke-virtual {v0}, [Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/hangame/hspls/api/ToastSilosConnectorApi$ServerLoginType;->mValue:I

    return v0
.end method
