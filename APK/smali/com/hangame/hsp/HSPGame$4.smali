.class Lcom/hangame/hsp/HSPGame$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiHttpResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPGame;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPGame$HSPDownloadGameIconCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPGame;Lcom/hangame/hsp/HSPGame$HSPDownloadGameIconCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPGame$4;->this$0:Lcom/hangame/hsp/HSPGame;

    iput-object p2, p0, Lcom/hangame/hsp/HSPGame$4;->val$callback:Lcom/hangame/hsp/HSPGame$HSPDownloadGameIconCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPGame$4;->val$callback:Lcom/hangame/hsp/HSPGame$HSPDownloadGameIconCB;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/HSPGame$4;->val$callback:Lcom/hangame/hsp/HSPGame$HSPDownloadGameIconCB;

    check-cast p4, Landroid/graphics/Bitmap;

    const-string v1, "ICONSERVICE"

    invoke-static {v1}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Lcom/hangame/hsp/HSPGame$HSPDownloadGameIconCB;->onIconDownload(Landroid/graphics/Bitmap;Lcom/hangame/hsp/HSPResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x194

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/HSPGame$4;->val$callback:Lcom/hangame/hsp/HSPGame$HSPDownloadGameIconCB;

    const-string v1, "ICONSERVICE"

    invoke-static {v1}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/hangame/hsp/HSPGame$HSPDownloadGameIconCB;->onIconDownload(Landroid/graphics/Bitmap;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/HSPGame$4;->val$callback:Lcom/hangame/hsp/HSPGame$HSPDownloadGameIconCB;

    const-string v1, "ICONSERVICE"

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/hangame/hsp/HSPGame$HSPDownloadGameIconCB;->onIconDownload(Landroid/graphics/Bitmap;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
