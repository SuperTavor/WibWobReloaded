.class Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;
.super Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$AbstractRequest;


# instance fields
.field private mImageId:I

.field private mImageView:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;IILandroid/widget/ImageView;)V
    .locals 1

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;->this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$AbstractRequest;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$1;)V

    iput p3, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;->mImageId:I

    iput-object p4, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$1800(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;)I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;->mImageId:I

    return v0
.end method

.method static synthetic access$1900(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public doRequest()V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;->this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;

    iget v1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;->mImageId:I

    iget-object v2, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->access$1500(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;ILandroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;->this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;

    iget v1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;->mImageId:I

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->access$1600(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;->this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;

    iget v2, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;->mImageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->access$1700(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    new-instance v1, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest$1;

    invoke-direct {v1, p0, v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest$1;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
