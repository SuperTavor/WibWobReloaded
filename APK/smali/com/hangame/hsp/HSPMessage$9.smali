.class Lcom/hangame/hsp/HSPMessage$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiHttpResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPMessage;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPMessage$HSPDownloadImageCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMessage;Lcom/hangame/hsp/HSPMessage$HSPDownloadImageCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMessage$9;->this$0:Lcom/hangame/hsp/HSPMessage;

    iput-object p2, p0, Lcom/hangame/hsp/HSPMessage$9;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPDownloadImageCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$9;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPDownloadImageCB;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$9;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPDownloadImageCB;

    check-cast p4, Landroid/graphics/Bitmap;

    const-string v1, "ICONSERVICE"

    invoke-static {v1}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Lcom/hangame/hsp/HSPMessage$HSPDownloadImageCB;->onImageDownload(Landroid/graphics/Bitmap;Lcom/hangame/hsp/HSPResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/HSPMessage$9;->val$callback:Lcom/hangame/hsp/HSPMessage$HSPDownloadImageCB;

    const/4 v1, 0x0

    const-string v2, "ICONSERVICE"

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/HSPMessage$HSPDownloadImageCB;->onImageDownload(Landroid/graphics/Bitmap;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
