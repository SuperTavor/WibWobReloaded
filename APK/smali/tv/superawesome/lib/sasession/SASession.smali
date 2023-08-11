.class public Ltv/superawesome/lib/sasession/SASession;
.super Ljava/lang/Object;


# static fields
.field private static final DEVICE_PHONE:Ljava/lang/String; = "phone"

.field private static final DEVICE_TABLET:Ljava/lang/String; = "tablet"

.field private static final PRODUCTION_URL:Ljava/lang/String; = "https://ads.superawesome.tv/v2"

.field private static final STAGING_URL:Ljava/lang/String; = "https://ads.staging.superawesome.tv/v2"


# instance fields
.field private appName:Ljava/lang/String;

.field private baseUrl:Ljava/lang/String;

.field private capper:Ltv/superawesome/lib/sasession/SACapper;

.field private configuration:Ltv/superawesome/lib/sasession/SAConfiguration;

.field private connectionType:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

.field private dauId:I

.field private device:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private testEnabled:Z

.field private userAgent:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ltv/superawesome/lib/sasession/SASession;->capper:Ltv/superawesome/lib/sasession/SACapper;

    new-instance v0, Ltv/superawesome/lib/sasession/SACapper;

    invoke-direct {v0, p1}, Ltv/superawesome/lib/sasession/SACapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->capper:Ltv/superawesome/lib/sasession/SACapper;

    invoke-virtual {p0}, Ltv/superawesome/lib/sasession/SASession;->setConfigurationProduction()V

    invoke-virtual {p0}, Ltv/superawesome/lib/sasession/SASession;->disableTestMode()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/superawesome/lib/sasession/SASession;->setDauId(I)V

    const-string v0, "0.0.0"

    invoke-virtual {p0, v0}, Ltv/superawesome/lib/sasession/SASession;->setVersion(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->packageName:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ltv/superawesome/lib/sautils/SAUtils;->getAppLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->appName:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-static {p1}, Ltv/superawesome/lib/sautils/SAUtils;->getNetworkConnectivity(Landroid/content/Context;)Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->connectionType:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->lang:Ljava/lang/String;

    invoke-static {}, Ltv/superawesome/lib/sautils/SAUtils;->getSystemSize()Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;

    move-result-object v0

    sget-object v1, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;->phone:Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;

    if-ne v0, v1, :cond_3

    const-string v0, "phone"

    :goto_3
    iput-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->device:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-static {p1}, Ltv/superawesome/lib/sautils/SAUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->userAgent:Ljava/lang/String;

    :goto_4
    return-void

    :cond_0
    const-string v0, "unknown"

    goto :goto_0

    :cond_1
    const-string v0, "unknown"

    goto :goto_1

    :cond_2
    sget-object v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->unknown:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    goto :goto_2

    :cond_3
    const-string v0, "tablet"

    goto :goto_3

    :cond_4
    invoke-static {v2}, Ltv/superawesome/lib/sautils/SAUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->userAgent:Ljava/lang/String;

    goto :goto_4
.end method


# virtual methods
.method public disableTestMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltv/superawesome/lib/sasession/SASession;->setTestMode(Z)V

    return-void
.end method

.method public enableTestMode()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltv/superawesome/lib/sasession/SASession;->setTestMode(Z)V

    return-void
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCachebuster()I
    .locals 1

    invoke-static {}, Ltv/superawesome/lib/sautils/SAUtils;->getCacheBuster()I

    move-result v0

    return v0
.end method

.method public getConfiguration()Ltv/superawesome/lib/sasession/SAConfiguration;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->configuration:Ltv/superawesome/lib/sasession/SAConfiguration;

    return-object v0
.end method

.method public getConnectionType()Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->connectionType:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    return-object v0
.end method

.method public getDauId()I
    .locals 1

    iget v0, p0, Ltv/superawesome/lib/sasession/SASession;->dauId:I

    return v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTestMode()Z
    .locals 1

    iget-boolean v0, p0, Ltv/superawesome/lib/sasession/SASession;->testEnabled:Z

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->version:Ljava/lang/String;

    return-object v0
.end method

.method public prepareSession(Ltv/superawesome/lib/sasession/SASessionInterface;)V
    .locals 2

    iget-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->capper:Ltv/superawesome/lib/sasession/SACapper;

    new-instance v1, Ltv/superawesome/lib/sasession/SASession$1;

    invoke-direct {v1, p0, p1}, Ltv/superawesome/lib/sasession/SASession$1;-><init>(Ltv/superawesome/lib/sasession/SASession;Ltv/superawesome/lib/sasession/SASessionInterface;)V

    invoke-virtual {v0, v1}, Ltv/superawesome/lib/sasession/SACapper;->getDauID(Ltv/superawesome/lib/sasession/SACapperInterface;)V

    return-void
.end method

.method public setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V
    .locals 1

    sget-object v0, Ltv/superawesome/lib/sasession/SAConfiguration;->PRODUCTION:Ltv/superawesome/lib/sasession/SAConfiguration;

    if-ne p1, v0, :cond_0

    sget-object v0, Ltv/superawesome/lib/sasession/SAConfiguration;->PRODUCTION:Ltv/superawesome/lib/sasession/SAConfiguration;

    iput-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->configuration:Ltv/superawesome/lib/sasession/SAConfiguration;

    const-string v0, "https://ads.superawesome.tv/v2"

    iput-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->baseUrl:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ltv/superawesome/lib/sasession/SAConfiguration;->STAGING:Ltv/superawesome/lib/sasession/SAConfiguration;

    iput-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->configuration:Ltv/superawesome/lib/sasession/SAConfiguration;

    const-string v0, "https://ads.staging.superawesome.tv/v2"

    iput-object v0, p0, Ltv/superawesome/lib/sasession/SASession;->baseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public setConfigurationProduction()V
    .locals 1

    sget-object v0, Ltv/superawesome/lib/sasession/SAConfiguration;->PRODUCTION:Ltv/superawesome/lib/sasession/SAConfiguration;

    invoke-virtual {p0, v0}, Ltv/superawesome/lib/sasession/SASession;->setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V

    return-void
.end method

.method public setConfigurationStaging()V
    .locals 1

    sget-object v0, Ltv/superawesome/lib/sasession/SAConfiguration;->STAGING:Ltv/superawesome/lib/sasession/SAConfiguration;

    invoke-virtual {p0, v0}, Ltv/superawesome/lib/sasession/SASession;->setConfiguration(Ltv/superawesome/lib/sasession/SAConfiguration;)V

    return-void
.end method

.method public setDauId(I)V
    .locals 0

    iput p1, p0, Ltv/superawesome/lib/sasession/SASession;->dauId:I

    return-void
.end method

.method public setTestMode(Z)V
    .locals 0

    iput-boolean p1, p0, Ltv/superawesome/lib/sasession/SASession;->testEnabled:Z

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/sasession/SASession;->version:Ljava/lang/String;

    return-void
.end method
