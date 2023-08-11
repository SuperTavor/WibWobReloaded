.class public Lcom/hangame/hsp/ui/HSPUiFactory;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPUiFactory"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/ui/view/ViewListManager;->getView(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/hangame/hsp/ui/HSPUiUri;

    invoke-virtual {v1}, Lcom/hangame/hsp/ui/HSPUiUri;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hangame/hsp/ui/HSPUiUri;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/hangame/hsp/ui/HSPUiUri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static isPreviligedView(Lcom/hangame/hsp/ui/HSPUiUri;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "HSPUiFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPreviligedView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/HSPUiUri;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/hangame/hsp/ui/HSPUiUri;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/hangame/hsp/ui/InternalHSPUiUri;->isAuthView(Lcom/hangame/hsp/ui/HSPUiUri;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "auth.mapping"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "auth.mapping.email"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/hangame/hsp/ui/InternalHSPUiUri;->isSupportsView(Lcom/hangame/hsp/ui/HSPUiUri;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "supports.cscenter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/hangame/hsp/util/HSPLocaleUtil;->isJapan()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v3, "gameplus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/hangame/hsp/util/HSPLocaleUtil;->isJapan()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_6
    const-string v3, "webview"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static registerUiUri(Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    return-object v0
.end method

.method public static registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;
    .locals 3

    const-string v0, "HSPUiFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerUri("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCHEME://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/UriData;->createUriData(Ljava/lang/String;)Lcom/hangame/hsp/util/UriData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/util/UriData;->getParameter()Ljava/util/Map;

    move-result-object v0

    :goto_1
    invoke-static {p0, p1, v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_1
.end method

.method public static registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/hangame/hsp/ui/HSPUiUri;
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/hangame/hsp/ui/HSPUiUri;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/ui/HSPUiUri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hangame/hsp/ui/view/ViewListManager;->addView(Ljava/lang/String;Lcom/hangame/hsp/ui/HSPUiUri;)V

    goto :goto_0
.end method

.method public static unregisterUiUri(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/ViewListManager;->removeView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
