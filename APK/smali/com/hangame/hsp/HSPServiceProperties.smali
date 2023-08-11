.class public final Lcom/hangame/hsp/HSPServiceProperties;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPServiceProperties"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLaunchingState()Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;
    .locals 4

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getState()I

    move-result v0

    const-string v1, "HSPServiceProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLaunchingState() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_OK:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_OK:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_GAME_INFO_FAIL:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_GAME_INFO_FAIL:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_CLIENT_VERSION_FAIL:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_CLIENT_VERSION_FAIL:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_CLIENT_LATESET_VERSION_EXIST:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_CLIENT_LATESET_VERSION_EXIST:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_HANGAME_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_HANGAME_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_GAME_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_GAME_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_PLATFORM_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_PLATFORM_INSPECTION:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_RESOURCE_UPDATE_FAIL:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_RESOURCE_UPDATE_FAIL:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_BLOCKED_DEVICE:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_8

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_BLOCKED_DEVICE:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    goto :goto_0

    :cond_8
    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_NOT_USABLE_DEVICE:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_NOT_USABLE_DEVICE:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    goto :goto_0

    :cond_9
    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_SERVICE_CLOSED:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_a

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_SERVICE_CLOSED:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    goto :goto_0

    :cond_a
    sget-object v1, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_INTERNAL_ERROR:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_b

    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_INTERNAL_ERROR:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    goto :goto_0

    :cond_b
    sget-object v0, Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;->HSP_LAUNCHINGSTATE_ACCESS_DENIED:Lcom/hangame/hsp/HSPServiceProperties$HSPLaunchingState;

    goto :goto_0
.end method

.method public getMaxRankingSize()I
    .locals 2

    const-string v0, "HSPServiceProperties"

    const-string v1, "getMaxRankingSize()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getMaxRankingSize()I

    move-result v0

    return v0
.end method

.method public getServerAddress(Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;)Ljava/lang/String;
    .locals 3

    const-string v0, "HSPServiceProperties"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServerAddress(serverName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;->access$100(Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getServerInfoMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;->access$100(Lcom/hangame/hsp/HSPServiceProperties$HSPServerName;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServicePropertiesMap()Ljava/util/Map;
    .locals 2

    const-string v0, "HSPServiceProperties"

    const-string v1, "getServicePropertiesMap()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLaunchingInfoMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const-string v0, "HSPServiceProperties"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValue(key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPServiceProperties;->getServicePropertiesMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWebURL(Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;)Ljava/lang/String;
    .locals 3

    const-string v0, "HSPServiceProperties"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWebURL(webName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;->access$000(Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;->access$000(Lcom/hangame/hsp/HSPServiceProperties$HSPWebName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/HSPServiceProperties;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public loadServiceProperties(Lcom/hangame/hsp/HSPServiceProperties$HSPLoadServicePropertiesCB;)V
    .locals 2

    const-string v0, "HSPServiceProperties"

    const-string v1, "loadServiceProperties()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPServiceProperties$1;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPServiceProperties$1;-><init>(Lcom/hangame/hsp/HSPServiceProperties;Lcom/hangame/hsp/HSPServiceProperties$HSPLoadServicePropertiesCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/HSPLaunchingService;->loadLaunchingInfo(Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method
