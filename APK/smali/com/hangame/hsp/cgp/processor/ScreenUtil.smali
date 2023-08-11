.class public Lcom/hangame/hsp/cgp/processor/ScreenUtil;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScreenOrientation(Landroid/app/Activity;)Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const-string v1, "ScreenUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ud654\uba74 \ubc29\ud5a5 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;->PORTRAIT:Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;->LANDSCAPE:Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;->LANDSCAPE:Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "ScreenUtil"

    const-string v1, "Failure to get Screen Orientation."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;->LANDSCAPE:Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

    goto :goto_0
.end method
