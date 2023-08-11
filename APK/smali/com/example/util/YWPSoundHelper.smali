.class public Lcom/example/util/YWPSoundHelper;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Z

.field private static c:Lcom/example/util/bf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/example/util/YWPSoundHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/util/YWPSoundHelper;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/example/util/YWPSoundHelper;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/example/util/bf;

    invoke-direct {v0, p0}, Lcom/example/util/bf;-><init>(Lcom/example/util/YWPSoundHelper;)V

    sput-object v0, Lcom/example/util/YWPSoundHelper;->c:Lcom/example/util/bf;

    return-void
.end method

.method public static _setHWVolumeMode()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/example/util/r;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/example/util/ag;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/example/util/bd;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/example/util/YWPSoundHelper;->getVolume()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Lcom/example/util/YWPSoundHelper;->setHWVolumeMode(I)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/example/util/YWPSoundHelper;->b:Z

    return v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/example/util/YWPSoundHelper;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getVolume()F
    .locals 1

    sget-object v0, Lcom/example/util/YWPSoundHelper;->c:Lcom/example/util/bf;

    invoke-virtual {v0}, Lcom/example/util/bf;->b()F

    move-result v0

    return v0
.end method

.method public static load(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/example/util/YWPSoundHelper;->c:Lcom/example/util/bf;

    invoke-virtual {v0, p0}, Lcom/example/util/bf;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static play(Ljava/lang/String;FZ)I
    .locals 1

    sget-object v0, Lcom/example/util/YWPSoundHelper;->c:Lcom/example/util/bf;

    invoke-virtual {v0, p0, p1, p2}, Lcom/example/util/bf;->a(Ljava/lang/String;FZ)I

    move-result v0

    return v0
.end method

.method public static resume()V
    .locals 1

    sget-object v0, Lcom/example/util/YWPSoundHelper;->c:Lcom/example/util/bf;

    invoke-virtual {v0}, Lcom/example/util/bf;->d()V

    return-void
.end method

.method public static resume(I)V
    .locals 1

    sget-object v0, Lcom/example/util/YWPSoundHelper;->c:Lcom/example/util/bf;

    invoke-virtual {v0, p0}, Lcom/example/util/bf;->c(I)V

    return-void
.end method

.method public static native setHWVolumeMode(I)V
.end method

.method public static setLocalVolume(FI)V
    .locals 1

    sget-object v0, Lcom/example/util/YWPSoundHelper;->c:Lcom/example/util/bf;

    invoke-virtual {v0, p0, p1}, Lcom/example/util/bf;->a(FI)V

    return-void
.end method

.method public static setVolume(F)V
    .locals 1

    sget-object v0, Lcom/example/util/YWPSoundHelper;->c:Lcom/example/util/bf;

    invoke-virtual {v0, p0}, Lcom/example/util/bf;->a(F)V

    return-void
.end method

.method public static stop(I)V
    .locals 1

    sget-object v0, Lcom/example/util/YWPSoundHelper;->c:Lcom/example/util/bf;

    invoke-virtual {v0, p0}, Lcom/example/util/bf;->a(I)V

    return-void
.end method

.method public static stopAll()V
    .locals 1

    sget-object v0, Lcom/example/util/YWPSoundHelper;->c:Lcom/example/util/bf;

    invoke-virtual {v0}, Lcom/example/util/bf;->a()V

    return-void
.end method

.method public static suspend()V
    .locals 1

    sget-object v0, Lcom/example/util/YWPSoundHelper;->c:Lcom/example/util/bf;

    invoke-virtual {v0}, Lcom/example/util/bf;->c()V

    return-void
.end method

.method public static suspend(I)V
    .locals 1

    sget-object v0, Lcom/example/util/YWPSoundHelper;->c:Lcom/example/util/bf;

    invoke-virtual {v0, p0}, Lcom/example/util/bf;->b(I)V

    return-void
.end method

.method public static unload(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/example/util/YWPSoundHelper;->c:Lcom/example/util/bf;

    invoke-virtual {v0, p0}, Lcom/example/util/bf;->b(Ljava/lang/String;)V

    return-void
.end method
