.class public Ltv/superawesome/lib/sautils/SAUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeDictAsJsonDict(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "%7B%7D"

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltv/superawesome/lib/sautils/SAUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    const-string v0, ""

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static findBaseURLFromResourceURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {p0}, Ltv/superawesome/lib/sautils/SAUtils;->isValidURL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\\"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v1, ""

    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ltv/superawesome/lib/sautils/SAUtils;->isValidURL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    move-object v2, v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_2
.end method

.method public static formGetQueryFromDict(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 7

    const-string v2, ""

    if-nez p0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v1, ""

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    move-object v2, v1

    goto/16 :goto_0
.end method

.method public static generateUniqueKey()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXZY0123456789"

    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXZY0123456789"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v0, ""

    move-object v2, v0

    move v0, v1

    :goto_0
    const/16 v4, 0x20

    if-ge v0, v4, :cond_0

    add-int/lit8 v4, v3, -0x1

    invoke-static {v1, v4}, Ltv/superawesome/lib/sautils/SAUtils;->randomNumberBetween(II)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXZY0123456789"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static getAppLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v1, "Unknown"

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "Unknown"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static getCacheBuster()I
    .locals 2

    const v0, 0xf4240

    const v1, 0x16e360

    invoke-static {v0, v1}, Ltv/superawesome/lib/sautils/SAUtils;->randomNumberBetween(II)I

    move-result v0

    return v0
.end method

.method public static getNetworkConnectivity(Landroid/content/Context;)Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;
    .locals 3

    if-nez p0, :cond_0

    sget-object v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->unknown:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->unknown:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    sget-object v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->wifi:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->unknown:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    goto :goto_0

    :pswitch_0
    sget-object v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->cellular_2g:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->cellular_3g:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->cellular_4g:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    goto :goto_0

    :cond_4
    sget-object v0, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->unknown:Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getRealScreenSize(Landroid/app/Activity;Z)Ltv/superawesome/lib/sautils/SAUtils$SASize;
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-nez p1, :cond_0

    new-instance v0, Ltv/superawesome/lib/sautils/SAUtils$SASize;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Ltv/superawesome/lib/sautils/SAUtils$SASize;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ltv/superawesome/lib/sautils/SAUtils$SASize;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-direct {v0, v2, v1}, Ltv/superawesome/lib/sautils/SAUtils$SASize;-><init>(II)V

    goto :goto_0
.end method

.method public static getScaleFactor(Landroid/app/Activity;)F
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static getSystemSize()Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;
    .locals 10

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v4, v1

    int-to-double v6, v0

    div-double/2addr v4, v6

    int-to-double v2, v2

    int-to-double v0, v0

    div-double v0, v2, v0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;->phone:Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;->tablet:Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;

    goto :goto_0
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVerboseSystemDetails()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ltv/superawesome/lib/sautils/SAUtils;->getSystemSize()Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;

    move-result-object v1

    invoke-virtual {v1}, Ltv/superawesome/lib/sautils/SAUtils$SASystemSize;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isClassAvailable(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static isJSONEmpty(Lorg/json/JSONObject;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTargetRectInFrameRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 10

    const/4 v9, 0x0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, p0, Landroid/graphics/Rect;->left:I

    iget v7, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/graphics/Rect;->top:I

    iget v8, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v0, v2, v0

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidEmail(Ljava/lang/CharSequence;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidURL(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mapSourceSizeIntoBoundingSize(FFFF)Landroid/graphics/Rect;
    .locals 5

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_0

    cmpl-float v0, p2, v2

    if-nez v0, :cond_1

    :cond_0
    move p2, p0

    :cond_1
    cmpl-float v0, p3, v1

    if-eqz v0, :cond_2

    cmpl-float v0, p3, v2

    if-nez v0, :cond_3

    :cond_2
    move p3, p1

    :cond_3
    div-float v0, p2, p3

    div-float v1, p0, p1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    div-float v0, p0, v0

    sub-float v1, p1, v0

    div-float/2addr v1, v3

    move p1, v0

    move v0, v1

    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    float-to-int v2, v2

    float-to-int v0, v0

    float-to-int v3, p0

    float-to-int v4, p1

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    :cond_4
    mul-float/2addr v0, p1

    sub-float v1, p0, v0

    div-float/2addr v1, v3

    move p0, v0

    move v0, v2

    move v2, v1

    goto :goto_0
.end method

.method public static randomNumberBetween(II)I
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static removeAllButFirstElement(Ljava/util/List;)Ljava/util/List;
    .locals 2

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p0, v0

    :cond_0
    return-object p0
.end method
