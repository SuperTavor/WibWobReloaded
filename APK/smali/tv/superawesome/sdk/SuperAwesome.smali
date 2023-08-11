.class public Ltv/superawesome/sdk/SuperAwesome;
.super Ljava/lang/Object;


# static fields
.field private static instance:Ltv/superawesome/sdk/SuperAwesome;


# instance fields
.field private sdk:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltv/superawesome/sdk/SuperAwesome;

    invoke-direct {v0}, Ltv/superawesome/sdk/SuperAwesome;-><init>()V

    sput-object v0, Ltv/superawesome/sdk/SuperAwesome;->instance:Ltv/superawesome/sdk/SuperAwesome;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltv/superawesome/sdk/SuperAwesome;->version:Ljava/lang/String;

    iput-object v0, p0, Ltv/superawesome/sdk/SuperAwesome;->sdk:Ljava/lang/String;

    const-string v0, "5.5.7"

    iput-object v0, p0, Ltv/superawesome/sdk/SuperAwesome;->version:Ljava/lang/String;

    const-string v0, "android"

    iput-object v0, p0, Ltv/superawesome/sdk/SuperAwesome;->sdk:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Ltv/superawesome/sdk/SuperAwesome;
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/SuperAwesome;->instance:Ltv/superawesome/sdk/SuperAwesome;

    return-object v0
.end method

.method private getSdk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/SuperAwesome;->sdk:Ljava/lang/String;

    return-object v0
.end method

.method private getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/SuperAwesome;->version:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public defaultBackButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public defaultBgColor()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public defaultCloseAtEnd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public defaultCloseButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public defaultConfiguration()Ltv/superawesome/lib/sasession/SAConfiguration;
    .locals 1

    sget-object v0, Ltv/superawesome/lib/sasession/SAConfiguration;->PRODUCTION:Ltv/superawesome/lib/sasession/SAConfiguration;

    return-object v0
.end method

.method public defaultOrientation()Ltv/superawesome/sdk/views/SAOrientation;
    .locals 1

    sget-object v0, Ltv/superawesome/sdk/views/SAOrientation;->ANY:Ltv/superawesome/sdk/views/SAOrientation;

    return-object v0
.end method

.method public defaultParentalGate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public defaultPlacementId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public defaultSmallClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public defaultTestMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Ltv/superawesome/sdk/SuperAwesome;->getSdk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Ltv/superawesome/sdk/SuperAwesome;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public overrideSdk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/SuperAwesome;->sdk:Ljava/lang/String;

    return-void
.end method

.method public overrideVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/sdk/SuperAwesome;->version:Ljava/lang/String;

    return-void
.end method
