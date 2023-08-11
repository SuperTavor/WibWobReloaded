.class public Lcom/hangame/hsp/core/HSPVersion;
.super Ljava/lang/Object;


# static fields
.field private static final HSP_SDK_VERSION:Ljava/lang/String; = "2.47.3"

.field private static final TAG:Ljava/lang/String; = "HSPVersion"

.field private static sHSPPlatformVersion:Ljava/lang/String;

.field private static sHSPVersion:Ljava/lang/String;

.field private static sVersionMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/hangame/hsp/core/HSPVersion;->sVersionMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHSPPlatformVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/core/HSPVersion;->sHSPPlatformVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getHSPVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/core/HSPVersion;->sHSPVersion:Ljava/lang/String;

    return-object v0
.end method

.method private static getPlatformVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2e

    const/4 v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/core/HSPVersion;->sVersionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getVersions()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/core/HSPVersion;->sVersionMap:Ljava/util/Map;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/hangame/hsp/core/HSPVersion;->loadVersion(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2.47.3"

    sput-object v0, Lcom/hangame/hsp/core/HSPVersion;->sHSPVersion:Ljava/lang/String;

    const-string v0, "2.47.3"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPVersion;->getPlatformVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/core/HSPVersion;->sHSPPlatformVersion:Ljava/lang/String;

    :cond_0
    const-string v0, "HSPVersion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HSP Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/core/HSPVersion;->sHSPVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HSPVersion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HSP Platform Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/core/HSPVersion;->sHSPPlatformVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loadVersion(Landroid/content/Context;)Z
    .locals 9

    const/4 v2, 0x1

    const-string v0, "hspsdk_version"

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "hspsdk_version"

    const-string v4, "xml"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    :goto_0
    if-eq v1, v2, :cond_0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "module"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const-string v4, "name"

    invoke-interface {v3, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const-string v5, "version"

    invoke-interface {v3, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/hangame/hsp/core/HSPVersion;->sVersionMap:Ljava/util/Map;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "HSPVersion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Version name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "HSPSDK"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sput-object v4, Lcom/hangame/hsp/core/HSPVersion;->sHSPVersion:Ljava/lang/String;

    invoke-static {v4}, Lcom/hangame/hsp/core/HSPVersion;->getPlatformVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/hangame/hsp/core/HSPVersion;->sHSPPlatformVersion:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    :goto_1
    :try_start_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    :goto_2
    return v0

    :catch_0
    move-exception v1

    :goto_3
    :try_start_2
    const-string v2, "HSPVersion"

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_4
    :try_start_3
    const-string v2, "HSPVersion"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_5
    :try_start_4
    const-string v2, "HSPVersion"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v0

    :catch_3
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto :goto_3

    :cond_3
    move v1, v0

    goto :goto_1
.end method
