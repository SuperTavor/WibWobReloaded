.class Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1$1;->this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1$1;->this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->access$400(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1$1;->this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;

    iget-object v0, v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$000(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)Lcom/hangame/hsp/ui/view/profile/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->invalidate()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1$1;->this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;

    iget-object v0, v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$000(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)Lcom/hangame/hsp/ui/view/profile/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1$1;->this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;

    iget-object v1, v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1$1;->this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;

    iget-object v0, v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$000(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)Lcom/hangame/hsp/ui/view/profile/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/hangame/hsp/ui/view/profile/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/view/profile/HighlightView;

    invoke-static {v1, v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$502(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;Lcom/hangame/hsp/ui/view/profile/HighlightView;)Lcom/hangame/hsp/ui/view/profile/HighlightView;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1$1;->this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;

    iget-object v0, v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$500(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)Lcom/hangame/hsp/ui/view/profile/HighlightView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->setFocus(Z)V

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeProgressDialog()V

    return-void
.end method
