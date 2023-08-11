.class public final Lcom/facebook/internal/FetchedAppSettings;
.super Ljava/lang/Object;


# instance fields
.field private automaticLoggingEnabled:Z

.field private customTabsEnabled:Z

.field private dialogConfigMap:Ljava/util/Map;

.field private errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

.field private nuxContent:Ljava/lang/String;

.field private nuxEnabled:Z

.field private sessionTimeoutInSeconds:I

.field private smartLoginBookmarkIconURL:Ljava/lang/String;

.field private smartLoginMenuIconURL:Ljava/lang/String;

.field private smartLoginOptions:Ljava/util/EnumSet;

.field private supportsImplicitLogging:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/FacebookRequestErrorClassification;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/facebook/internal/FetchedAppSettings;->supportsImplicitLogging:Z

    iput-object p2, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxContent:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxEnabled:Z

    iput-boolean p4, p0, Lcom/facebook/internal/FetchedAppSettings;->customTabsEnabled:Z

    iput-object p7, p0, Lcom/facebook/internal/FetchedAppSettings;->dialogConfigMap:Ljava/util/Map;

    iput-object p9, p0, Lcom/facebook/internal/FetchedAppSettings;->errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

    iput p5, p0, Lcom/facebook/internal/FetchedAppSettings;->sessionTimeoutInSeconds:I

    iput-boolean p8, p0, Lcom/facebook/internal/FetchedAppSettings;->automaticLoggingEnabled:Z

    iput-object p6, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginOptions:Ljava/util/EnumSet;

    iput-object p10, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginBookmarkIconURL:Ljava/lang/String;

    iput-object p11, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginMenuIconURL:Ljava/lang/String;

    return-void
.end method

.method public static getDialogFeatureConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getDialogConfigurations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getAutomaticLoggingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->automaticLoggingEnabled:Z

    return v0
.end method

.method public getCustomTabsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->customTabsEnabled:Z

    return v0
.end method

.method public getDialogConfigurations()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->dialogConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method public getErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

    return-object v0
.end method

.method public getNuxContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxContent:Ljava/lang/String;

    return-object v0
.end method

.method public getNuxEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxEnabled:Z

    return v0
.end method

.method public getSessionTimeoutInSeconds()I
    .locals 1

    iget v0, p0, Lcom/facebook/internal/FetchedAppSettings;->sessionTimeoutInSeconds:I

    return v0
.end method

.method public getSmartLoginBookmarkIconURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginBookmarkIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartLoginMenuIconURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginMenuIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartLoginOptions()Ljava/util/EnumSet;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginOptions:Ljava/util/EnumSet;

    return-object v0
.end method

.method public supportsImplicitLogging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->supportsImplicitLogging:Z

    return v0
.end method
