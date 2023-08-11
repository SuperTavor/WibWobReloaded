.class Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPMyProfile$HSPUploadProfileImageCB;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5$1;->this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpload(Lcom/hangame/hsp/HSPResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hsp.profile.myprofile.photocrop.image.save"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5$1$1;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5$1$1;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5$1;)V

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

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
