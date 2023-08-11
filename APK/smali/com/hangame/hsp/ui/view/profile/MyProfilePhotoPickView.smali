.class public Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;
.super Lcom/hangame/hsp/ui/ContentViewContainer;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MyProfilePhotoPickView"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGridView:Landroid/widget/GridView;

.field private final mImageLoader:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;

.field private final mMainView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/hangame/hsp/ui/ContentViewContainer;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->mContext:Landroid/content/Context;

    const-string v0, "hsp_profile_myprofile_photopick"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->mMainView:Landroid/view/View;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->mMainView:Landroid/view/View;

    const-string v1, "hsp.profile.myprofile.photopick.grid"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->mGridView:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->mGridView:Landroid/widget/GridView;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;)V

    iput-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->mImageLoader:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->setView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->showView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;)Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->mImageLoader:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->loadAllImages()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->closeAllView()V

    return-void
.end method

.method static synthetic access$900(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private loadAllImages()Ljava/util/ArrayList;
    .locals 7

    const/4 v3, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$Config;->access$200()[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$Config;->access$300()Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;ILjava/lang/String;Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$1;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v6
.end method

.method private showView()V
    .locals 2

    new-instance v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$InitializationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$InitializationTask;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$InitializationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected onClose()V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->mImageLoader:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->clearCache()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/util/ExternalDeviceInfoUtil;->isSdcardUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;

    const-string v1, "profile.myprofile.photocrop"

    invoke-static {v1}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v1

    const-string v2, "UriParameterImagePath"

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;->access$100(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    :goto_0
    return-void

    :cond_0
    const-string v0, "hsp.view.sdcard.notusable"

    invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
