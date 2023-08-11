.class final Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$InitializationTask;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;


# direct methods
.method private constructor <init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$InitializationTask;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$InitializationTask;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$InitializationTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->showProgressDialog()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$InitializationTask;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->access$500(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$InitializationTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 4

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$InitializationTask;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->access$700(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;)Landroid/widget/GridView;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImagePickerAdapter;

    iget-object v2, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$InitializationTask;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImagePickerAdapter;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;Ljava/util/ArrayList;Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeProgressDialog()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "hsp.profile.myprofile.photocrop.imageList.none"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$InitializationTask$1;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$InitializationTask$1;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$InitializationTask;)V

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method
