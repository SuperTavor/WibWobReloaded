.class public final enum Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

.field public static final enum HSP_LAUNCHINGSTATE_ACCESS_DENIED:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

.field public static final enum HSP_LAUNCHINGSTATE_BLOCKED_DEVICE:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

.field public static final enum HSP_LAUNCHINGSTATE_CLIENT_LATESET_VERSION_EXIST:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

.field public static final enum HSP_LAUNCHINGSTATE_CLIENT_VERSION_FAIL:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

.field public static final enum HSP_LAUNCHINGSTATE_GAME_INFO_FAIL:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

.field public static final enum HSP_LAUNCHINGSTATE_GAME_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

.field public static final enum HSP_LAUNCHINGSTATE_HANGAME_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

.field public static final enum HSP_LAUNCHINGSTATE_INTERNAL_ERROR:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

.field public static final enum HSP_LAUNCHINGSTATE_NOT_USABLE_DEVICE:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

.field public static final enum HSP_LAUNCHINGSTATE_OK:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

.field public static final enum HSP_LAUNCHINGSTATE_PLATFORM_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

.field public static final enum HSP_LAUNCHINGSTATE_RESOURCE_UPDATE_FAIL:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

.field public static final enum HSP_LAUNCHINGSTATE_SERVICE_CLOSED:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;


# instance fields
.field private final mCode:I

.field private final mResultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    const-string v1, "HSP_LAUNCHINGSTATE_OK"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_OK:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    new-instance v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    const-string v1, "HSP_LAUNCHINGSTATE_GAME_INFO_FAIL"

    const/16 v2, 0x2001

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_GAME_INFO_FAIL:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    new-instance v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    const-string v1, "HSP_LAUNCHINGSTATE_CLIENT_VERSION_FAIL"

    const/16 v2, 0x2002

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_CLIENT_VERSION_FAIL:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    new-instance v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    const-string v1, "HSP_LAUNCHINGSTATE_CLIENT_LATESET_VERSION_EXIST"

    const/16 v2, 0x2003

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_CLIENT_LATESET_VERSION_EXIST:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    new-instance v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    const-string v1, "HSP_LAUNCHINGSTATE_HANGAME_INSPECTION"

    const/16 v2, 0x2004

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_HANGAME_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    new-instance v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    const-string v1, "HSP_LAUNCHINGSTATE_GAME_INSPECTION"

    const/4 v2, 0x5

    const/16 v3, 0x8

    const/16 v4, 0x2005

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_GAME_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    new-instance v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    const-string v1, "HSP_LAUNCHINGSTATE_PLATFORM_INSPECTION"

    const/4 v2, 0x6

    const/16 v3, 0xa

    const/16 v4, 0x2006

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_PLATFORM_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    new-instance v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    const-string v1, "HSP_LAUNCHINGSTATE_RESOURCE_UPDATE_FAIL"

    const/4 v2, 0x7

    const/16 v3, 0x14

    const/16 v4, 0x2009

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_RESOURCE_UPDATE_FAIL:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    new-instance v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    const-string v1, "HSP_LAUNCHINGSTATE_BLOCKED_DEVICE"

    const/16 v2, 0x8

    const/16 v3, 0x5b

    const/16 v4, 0x2007

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_BLOCKED_DEVICE:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    new-instance v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    const-string v1, "HSP_LAUNCHINGSTATE_NOT_USABLE_DEVICE"

    const/16 v2, 0x9

    const/16 v3, 0x5c

    const/16 v4, 0x2008

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_NOT_USABLE_DEVICE:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    new-instance v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    const-string v1, "HSP_LAUNCHINGSTATE_SERVICE_CLOSED"

    const/16 v2, 0xa

    const/16 v3, 0x62

    const/16 v4, 0x200c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_SERVICE_CLOSED:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    new-instance v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    const-string v1, "HSP_LAUNCHINGSTATE_INTERNAL_ERROR"

    const/16 v2, 0xb

    const/16 v3, 0x63

    const v4, 0xf001

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_INTERNAL_ERROR:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    new-instance v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    const-string v1, "HSP_LAUNCHINGSTATE_ACCESS_DENIED"

    const/16 v2, 0xc

    const/16 v3, 0xff

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_ACCESS_DENIED:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_OK:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_GAME_INFO_FAIL:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_CLIENT_VERSION_FAIL:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_CLIENT_LATESET_VERSION_EXIST:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_HANGAME_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_GAME_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_PLATFORM_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_RESOURCE_UPDATE_FAIL:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_BLOCKED_DEVICE:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_NOT_USABLE_DEVICE:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_SERVICE_CLOSED:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_INTERNAL_ERROR:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_ACCESS_DENIED:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->$VALUES:[Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->mCode:I

    iput p4, p0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->mResultCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;
    .locals 1

    const-class v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->$VALUES:[Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    invoke-virtual {v0}, [Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->mCode:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->mResultCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%02d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->mCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
