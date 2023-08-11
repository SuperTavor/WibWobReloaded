.class public Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;
.super Lcom/hangame/hsp/ui/ContentViewContainer;


# static fields
.field private static final TAG:Ljava/lang/String; = "MyProfilePhotoCropView"

.field static final UriParameterImagePath:Ljava/lang/String; = "UriParameterImagePath"


# instance fields
.field private mAspectX:I

.field private mAspectY:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCropView:Lcom/hangame/hsp/ui/view/profile/HighlightView;

.field private final mHandler:Landroid/os/Handler;

.field private final mImagePath:Ljava/lang/String;

.field private final mImageView:Lcom/hangame/hsp/ui/view/profile/CropImageView;

.field private final mMainView:Landroid/view/View;

.field private mRunFaceDetection:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/ContentViewContainer;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$1;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)V

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mRunFaceDetection:Ljava/lang/Runnable;

    const-string v0, "hsp_profile_myprofile_photocrop"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mMainView:Landroid/view/View;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mMainView:Landroid/view/View;

    const-string v1, "hsp.profile.myprofile.photocrop.imageview"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/view/profile/CropImageView;

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mImageView:Lcom/hangame/hsp/ui/view/profile/CropImageView;

    const-string v0, "UriParameterImagePath"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mImagePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->wireUpControls()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->setIsometricCrop(Z)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->setView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->showView()V

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)Lcom/hangame/hsp/ui/view/profile/CropImageView;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mImageView:Lcom/hangame/hsp/ui/view/profile/CropImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)Lcom/hangame/hsp/ui/HSPUiUri;
    .locals 1

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->getPreviousView()Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->closeView()V

    return-void
.end method

.method static synthetic access$200(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mAspectX:I

    return v0
.end method

.method static synthetic access$300(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mAspectY:I

    return v0
.end method

.method static synthetic access$500(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)Lcom/hangame/hsp/ui/view/profile/HighlightView;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mCropView:Lcom/hangame/hsp/ui/view/profile/HighlightView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;Lcom/hangame/hsp/ui/view/profile/HighlightView;)Lcom/hangame/hsp/ui/view/profile/HighlightView;
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mCropView:Lcom/hangame/hsp/ui/view/profile/HighlightView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->closeView()V

    return-void
.end method

.method static synthetic access$800(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->onSaveButtonClick()V

    return-void
.end method

.method static synthetic access$900(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->onCancelButtonClick()V

    return-void
.end method

.method private getCropImage()Landroid/graphics/Bitmap;
    .locals 9

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mCropView:Lcom/hangame/hsp/ui/view/profile/HighlightView;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/view/profile/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x400

    const/16 v4, 0x400

    invoke-static {v1, v3, v4}, Lcom/hangame/hsp/ui/view/profile/ImageUtil;->loadBitmapFromLocalUri(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v3, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/ImageUtil;->exifOrientationToDegrees(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    float-to-int v0, v0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_1
    if-eqz v0, :cond_0

    int-to-float v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/view/profile/ImageUtil;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    const-string v3, "MyProfilePhotoCropView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    move v1, v2

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private onCancelButtonClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->closeView()V

    return-void
.end method

.method private onSaveButtonClick()V
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/hangame/hsp/util/ExternalDeviceInfoUtil;->isSdcardUsable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mCropView:Lcom/hangame/hsp/ui/view/profile/HighlightView;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->getCropImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "hsp.profile.myprofile.photocrop.image.cannotcrop"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->showProgressDialog()V

    const-string v1, "_util_call"

    invoke-static {v1}, Lcom/hangame/hsp/ui/AppBundle;->getBundle(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_crop_image"

    invoke-static {v1, v0}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeProgressDialog()V

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->closeAllView()V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5;

    invoke-direct {v1, p0, v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/hangame/hsp/HSPMyProfile;->loadMyProfile(Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;)V

    goto :goto_0

    :cond_2
    const-string v0, "hsp.profile.myprofile.photocrop.image.cannotsave"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    const-string v0, "hsp.view.sdcard.notusable"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private setIsometricCrop(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mAspectY:I

    iput v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mAspectX:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mAspectY:I

    iput v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mAspectX:I

    goto :goto_0
.end method

.method private showView()V
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->showProgressDialog()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mImagePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string v0, "hsp.profile.myprofile.photocrop.image.cannotload"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$2;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$2;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)V

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mImageView:Lcom/hangame/hsp/ui/view/profile/CropImageView;

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/view/profile/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mRunFaceDetection:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private wireUpControls()V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mMainView:Landroid/view/View;

    const-string v1, "hsp.profile.myprofile.photocrop.button.save"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$3;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$3;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->mMainView:Landroid/view/View;

    const-string v1, "hsp.profile.myprofile.photocrop.button.cancel"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$4;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$4;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
