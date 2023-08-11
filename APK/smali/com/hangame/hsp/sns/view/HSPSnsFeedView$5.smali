.class Lcom/hangame/hsp/sns/view/HSPSnsFeedView$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPUtil$HSPDownloadImageCB;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/view/HSPSnsFeedView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$5;->this$0:Lcom/hangame/hsp/sns/view/HSPSnsFeedView;

    iput-object p2, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageDownload(Landroid/graphics/Bitmap;Lcom/hangame/hsp/HSPResult;)V
    .locals 2

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$5;->val$view:Landroid/view/View;

    const-string v1, "hsp.sns.feed.facebook.image"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "HSPSnsFeedView"

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
