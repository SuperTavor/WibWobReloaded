.class public final Lcom/hangame/hsp/ui/ResourceUtil;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourceUtil"

.field private static final lock:Ljava/lang/Object;

.field private static sActivity:Landroid/app/Activity;

.field private static sAppContext:Landroid/content/Context;

.field private static sLayoutInflater:Landroid/view/LayoutInflater;

.field private static sPackageName:Ljava/lang/String;

.field private static sResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/hangame/hsp/ui/ResourceUtil;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/ResourceUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/ui/ResourceUtil;->sActivity:Landroid/app/Activity;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getColor(Ljava/lang/String;)I
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/ResourceUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "color"

    invoke-static {p0, v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/hangame/hsp/ui/ResourceUtil;->sResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/ResourceUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/ui/ResourceUtil;->sAppContext:Landroid/content/Context;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/ResourceUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "drawable"

    invoke-static {p0, v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Lcom/hangame/hsp/ui/ResourceUtil;->sResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getLayout(Ljava/lang/String;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/hangame/hsp/ui/ResourceUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "layout"

    invoke-static {p0, v2}, Lcom/hangame/hsp/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/hangame/hsp/ui/ResourceUtil;->sLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getLayout(Ljava/lang/String;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/ResourceUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "layout"

    invoke-static {p0, v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Lcom/hangame/hsp/ui/ResourceUtil;->sLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getMultiResourcesId(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 4

    sget-object v1, Lcom/hangame/hsp/ui/ResourceUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    sget-object v2, Lcom/hangame/hsp/ui/ResourceUtil;->sResources:Landroid/content/res/Resources;

    if-nez v2, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/hangame/hsp/ui/ResourceUtil;->sResources:Landroid/content/res/Resources;

    sget-object v2, Lcom/hangame/hsp/ui/ResourceUtil;->sResources:Landroid/content/res/Resources;

    sget-object v3, Lcom/hangame/hsp/ui/ResourceUtil;->sPackageName:Ljava/lang/String;

    invoke-virtual {v2, p0, p1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/ResourceUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/ui/ResourceUtil;->sResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/hangame/hsp/ui/ResourceUtil;->sResources:Landroid/content/res/Resources;

    sget-object v2, Lcom/hangame/hsp/ui/ResourceUtil;->sPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/hangame/hsp/ui/ResourceUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "string"

    invoke-static {p0, v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    sget-object v2, Lcom/hangame/hsp/ui/ResourceUtil;->sResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "ResourceUtil"

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "Not Defined String"

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static varargs getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/hangame/hsp/ui/ResourceUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "string"

    invoke-static {p0, v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    sget-object v2, Lcom/hangame/hsp/ui/ResourceUtil;->sAppContext:Landroid/content/Context;

    invoke-virtual {v2, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "ResourceUtil"

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "Not Defined String"

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static getXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/ResourceUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "xml"

    invoke-static {p0, v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Lcom/hangame/hsp/ui/ResourceUtil;->sResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/ResourceUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/ui/ResourceUtil;->sAppContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/ui/ResourceUtil;->sAppContext:Landroid/content/Context;

    sget-object v0, Lcom/hangame/hsp/ui/ResourceUtil;->sAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/ui/ResourceUtil;->sPackageName:Ljava/lang/String;

    sget-object v0, Lcom/hangame/hsp/ui/ResourceUtil;->sAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/ui/ResourceUtil;->sResources:Landroid/content/res/Resources;

    sget-object v0, Lcom/hangame/hsp/ui/ResourceUtil;->sAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/ui/ResourceUtil;->sLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/hangame/hsp/ui/UiThreadUtil;->init()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static openAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/ResourceUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/ui/ResourceUtil;->sAppContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/hangame/hsp/ui/ResourceUtil;->sAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static removeActivity()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/ui/ResourceUtil;->sActivity:Landroid/app/Activity;

    return-void
.end method

.method static setActivity(Landroid/app/Activity;)V
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/ResourceUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/hangame/hsp/ui/ResourceUtil;->sActivity:Landroid/app/Activity;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
