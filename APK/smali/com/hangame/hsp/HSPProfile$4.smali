.class Lcom/hangame/hsp/HSPProfile$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiHttpResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPProfile;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPProfile$HSPDownloadProfileImageCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPProfile;Lcom/hangame/hsp/HSPProfile$HSPDownloadProfileImageCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPProfile$4;->this$0:Lcom/hangame/hsp/HSPProfile;

    iput-object p2, p0, Lcom/hangame/hsp/HSPProfile$4;->val$callback:Lcom/hangame/hsp/HSPProfile$HSPDownloadProfileImageCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$4;->val$callback:Lcom/hangame/hsp/HSPProfile$HSPDownloadProfileImageCB;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$4;->val$callback:Lcom/hangame/hsp/HSPProfile$HSPDownloadProfileImageCB;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-interface {v0, p4, p2}, Lcom/hangame/hsp/HSPProfile$HSPDownloadProfileImageCB;->onProfileImageDownload(Landroid/graphics/Bitmap;Lcom/hangame/hsp/HSPResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "HSPProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "statusCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x130

    if-eq p3, v0, :cond_2

    const/16 v0, 0x194

    if-eq p3, v0, :cond_2

    const/16 v0, 0x1fa

    if-ne p3, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$4;->val$callback:Lcom/hangame/hsp/HSPProfile$HSPDownloadProfileImageCB;

    const-string v1, "PHOTOSERVICE"

    invoke-static {v1}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/hangame/hsp/HSPProfile$HSPDownloadProfileImageCB;->onProfileImageDownload(Landroid/graphics/Bitmap;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$4;->val$callback:Lcom/hangame/hsp/HSPProfile$HSPDownloadProfileImageCB;

    const-string v1, "PHOTOSERVICE"

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/hangame/hsp/HSPProfile$HSPDownloadProfileImageCB;->onProfileImageDownload(Landroid/graphics/Bitmap;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
