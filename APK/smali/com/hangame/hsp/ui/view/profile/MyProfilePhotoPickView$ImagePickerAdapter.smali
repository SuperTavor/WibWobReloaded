.class final Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImagePickerAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private mImageItems:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;


# direct methods
.method private constructor <init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImagePickerAdapter;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImagePickerAdapter;->mImageItems:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;Ljava/util/ArrayList;Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImagePickerAdapter;-><init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;Ljava/util/ArrayList;)V

    return-void
.end method

.method private createImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 3

    const/16 v2, 0x96

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImagePickerAdapter;->mImageItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImagePickerAdapter;->mImageItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImagePickerAdapter;->getItem(I)Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImagePickerAdapter;->getItem(I)Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImagePickerAdapter;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->access$900(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImagePickerAdapter;->createImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImagePickerAdapter;->getItem(I)Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;->access$1000(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageItem;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImagePickerAdapter;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;

    invoke-static {v1}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;->access$1100(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView;)Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoPickView$ImageLoader;->loadImageToView(IILandroid/widget/ImageView;)V

    return-object p2

    :cond_0
    check-cast p2, Landroid/widget/ImageView;

    goto :goto_0
.end method
