.class public Lcom/adjust/sdk/AdjustEvent;
.super Ljava/lang/Object;


# static fields
.field private static logger:Lcom/adjust/sdk/ILogger;


# instance fields
.field callbackParameters:Ljava/util/Map;

.field currency:Ljava/lang/String;

.field eventToken:Ljava/lang/String;

.field partnerParameters:Ljava/util/Map;

.field revenue:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    sput-object v0, Lcom/adjust/sdk/AdjustEvent;->logger:Lcom/adjust/sdk/ILogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/adjust/sdk/AdjustEvent;->logger:Lcom/adjust/sdk/ILogger;

    invoke-static {p1, v0}, Lcom/adjust/sdk/AdjustEvent;->checkEventToken(Ljava/lang/String;Lcom/adjust/sdk/ILogger;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/adjust/sdk/AdjustEvent;->eventToken:Ljava/lang/String;

    goto :goto_0
.end method

.method private static checkEventToken(Ljava/lang/String;Lcom/adjust/sdk/ILogger;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "Missing Event Token"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const-string v2, "Malformed Event Token \'%s\'"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-interface {p1, v2, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private checkRevenue(Ljava/lang/Double;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    sget-object v2, Lcom/adjust/sdk/AdjustEvent;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "Invalid amount %.5f"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-interface {v2, v3, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    sget-object v1, Lcom/adjust/sdk/AdjustEvent;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Currency must be set with revenue"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/adjust/sdk/AdjustEvent;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Currency is empty"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    sget-object v1, Lcom/adjust/sdk/AdjustEvent;->logger:Lcom/adjust/sdk/ILogger;

    const-string v2, "Revenue must be set with currency"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object v2, Lcom/adjust/sdk/AdjustEvent;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "%s parameter %s is missing"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v0

    aput-object p2, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/adjust/sdk/AdjustEvent;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "%s parameter %s is empty"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v0

    aput-object p2, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "key"

    const-string v1, "Callback"

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/AdjustEvent;->isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "value"

    const-string v1, "Callback"

    invoke-direct {p0, p2, v0, v1}, Lcom/adjust/sdk/AdjustEvent;->isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/AdjustEvent;->callbackParameters:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustEvent;->callbackParameters:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/AdjustEvent;->callbackParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adjust/sdk/AdjustEvent;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "key %s was overwritten"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addPartnerParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "key"

    const-string v1, "Partner"

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/AdjustEvent;->isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "value"

    const-string v1, "Partner"

    invoke-direct {p0, p2, v0, v1}, Lcom/adjust/sdk/AdjustEvent;->isValidParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/AdjustEvent;->partnerParameters:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/AdjustEvent;->partnerParameters:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/AdjustEvent;->partnerParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adjust/sdk/AdjustEvent;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "key %s was overwritten"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/AdjustEvent;->eventToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRevenue(DLjava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/adjust/sdk/AdjustEvent;->checkRevenue(Ljava/lang/Double;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustEvent;->revenue:Ljava/lang/Double;

    iput-object p3, p0, Lcom/adjust/sdk/AdjustEvent;->currency:Ljava/lang/String;

    goto :goto_0
.end method
