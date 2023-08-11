.class final Lcom/hangame/hsp/HSPUtil$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPUtil$HSPDownloadImageCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPUtil$HSPDownloadImageCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPUtil$2;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPDownloadImageCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->removeUiEventListener(Lcom/hangame/hsp/ui/HSPUiLauncher$HSPUiEventListener;)V

    const-string v0, "_util_call"

    invoke-static {v0, v4}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "_crop_image"

    invoke-static {v0}, Lcom/hangame/hsp/ui/AppBundle;->getBundle(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hangame/hsp/HSPUtil$2;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPDownloadImageCB;

    const-string v0, "_crop_image"

    invoke-static {v0}, Lcom/hangame/hsp/ui/AppBundle;->getBundle(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const-string v2, "PHOTOSERVICE"

    invoke-static {v2}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/hangame/hsp/HSPUtil$HSPDownloadImageCB;->onImageDownload(Landroid/graphics/Bitmap;Lcom/hangame/hsp/HSPResult;)V

    const-string v0, "_crop_image"

    invoke-static {v0, v4}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/HSPUtil$2;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPDownloadImageCB;

    const-string v0, "_crop_image"

    invoke-static {v0}, Lcom/hangame/hsp/ui/AppBundle;->getBundle(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const-string v2, "PHOTOSERVICE"

    const/4 v3, 0x1

    invoke-static {v2, v3, v4}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/hangame/hsp/HSPUtil$HSPDownloadImageCB;->onImageDownload(Landroid/graphics/Bitmap;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    return-void
.end method

.method public onRotate(I)V
    .locals 0

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    return-void
.end method
