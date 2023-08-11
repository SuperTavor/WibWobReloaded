.class Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field imageMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->makeDefault()V

    return-void
.end method

.method private makeDefault()V
    .locals 11

    const/4 v2, 0x0

    new-instance v3, Lcom/hangame/hsp/ui/view/profile/HighlightView;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$000(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)Lcom/hangame/hsp/ui/view/profile/CropImageView;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/hangame/hsp/ui/view/profile/HighlightView;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$100(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$100(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v1, v0, 0x5

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$200(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$300(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$200(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)I

    move-result v0

    iget-object v7, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v7}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$300(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)I

    move-result v7

    if-le v0, v7, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$300(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)I

    move-result v0

    mul-int/2addr v0, v1

    iget-object v7, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v7}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$200(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)I

    move-result v7

    div-int/2addr v0, v7

    :goto_0
    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v4

    int-to-float v9, v5

    add-int/2addr v1, v4

    int-to-float v1, v1

    add-int/2addr v0, v5

    int-to-float v0, v0

    invoke-direct {v7, v8, v9, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->imageMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$200(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$300(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v1, v6, v7, v0}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$000(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)Lcom/hangame/hsp/ui/view/profile/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->add(Lcom/hangame/hsp/ui/view/profile/HighlightView;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$200(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)I

    move-result v0

    mul-int/2addr v0, v1

    iget-object v7, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v7}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$300(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)I

    move-result v7

    div-int/2addr v0, v7

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$000(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)Lcom/hangame/hsp/ui/view/profile/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->imageMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$600(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1$1;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1$1;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
