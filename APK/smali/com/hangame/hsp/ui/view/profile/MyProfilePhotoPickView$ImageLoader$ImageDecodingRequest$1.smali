.class Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest$1;->this$2:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;

    iput-object p2, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest$1;->this$2:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;

    iget-object v0, v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;->this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest$1;->this$2:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;

    invoke-static {v1}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;->access$1800(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;)I

    move-result v1

    iget-object v2, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest$1;->this$2:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;

    invoke-static {v2}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;->access$1900(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->access$1500(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;ILandroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest$1;->this$2:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;->access$1900(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader$ImageDecodingRequest$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
