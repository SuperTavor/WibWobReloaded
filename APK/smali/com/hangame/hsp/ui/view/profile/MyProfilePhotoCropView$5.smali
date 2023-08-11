.class Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

.field final synthetic val$croppedImage:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    iput-object p2, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5;->val$croppedImage:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMyProfileLoad(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPResult;)V
    .locals 2

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5;->val$croppedImage:Landroid/graphics/Bitmap;

    new-instance v1, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5$1;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5$1;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5;)V

    invoke-virtual {p1, v0, v1}, Lcom/hangame/hsp/HSPMyProfile;->uploadProfileImage(Landroid/graphics/Bitmap;Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "hsp.profile.myprofile.photocrop.image.cannotsave"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
