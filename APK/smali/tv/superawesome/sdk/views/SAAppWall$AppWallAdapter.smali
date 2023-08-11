.class public Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private ads:Ljava/util/List;

.field private context:Landroid/content/Context;

.field final synthetic this$0:Ltv/superawesome/sdk/views/SAAppWall;


# direct methods
.method constructor <init>(Ltv/superawesome/sdk/views/SAAppWall;Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->this$0:Ltv/superawesome/sdk/views/SAAppWall;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->ads:Ljava/util/List;

    iput-object p2, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->context:Landroid/content/Context;

    iput-object p3, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->ads:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->ads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    iget-object v0, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->ads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->ads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41700000    # 15.0f

    mul-float v4, v1, v3

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Ltv/superawesome/lib/sautils/SAUtils;->getScaleFactor(Landroid/app/Activity;)F

    move-result v5

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v1, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v2

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/4 v6, 0x1

    invoke-static {v1, v6}, Ltv/superawesome/lib/sautils/SAUtils;->getRealScreenSize(Landroid/app/Activity;Z)Ltv/superawesome/lib/sautils/SAUtils$SASize;

    move-result-object v6

    new-instance v7, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->context:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, v6, Ltv/superawesome/lib/sautils/SAUtils$SASize;->height:I

    div-int/lit8 v8, v8, 0x2

    const/high16 v9, 0x43200000    # 160.0f

    mul-float/2addr v9, v5

    float-to-int v9, v9

    invoke-direct {v1, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v2

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v8, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v9, 0x42f00000    # 120.0f

    mul-float/2addr v9, v5

    float-to-int v9, v9

    const/high16 v10, 0x42f00000    # 120.0f

    mul-float/2addr v10, v5

    float-to-int v10, v10

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x78

    const/16 v10, 0x78

    const/4 v11, -0x1

    invoke-static {v9, v10, v11, v4}, Ltv/superawesome/lib/sautils/SAImageUtils;->createDrawable(IIIF)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v9, 0xd

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v9, 0x42e40000    # 114.0f

    mul-float/2addr v9, v5

    float-to-int v9, v9

    const/high16 v10, 0x42e40000    # 114.0f

    mul-float/2addr v10, v5

    float-to-int v10, v10

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xd

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->context:Landroid/content/Context;

    iget-object v9, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v9, v9, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v9, v9, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iget-object v9, v9, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->path:Ljava/lang/String;

    const/high16 v10, 0x42e40000    # 114.0f

    mul-float/2addr v10, v3

    float-to-int v10, v10

    const/high16 v11, 0x42e40000    # 114.0f

    mul-float/2addr v3, v11

    float-to-int v3, v3

    invoke-static {v8, v9, v10, v3, v4}, Ltv/superawesome/lib/sautils/SAImageUtils;->createDrawable(Landroid/content/Context;Ljava/lang/String;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v3, v3, Ltv/superawesome/lib/samodelspace/saad/SACreative;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v6, Ltv/superawesome/lib/sautils/SAUtils$SASize;->height:I

    div-int/lit8 v3, v3, 0x2

    const/high16 v4, 0x43200000    # 160.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    return-object v2

    :cond_0
    const-string v0, "Undefined"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Ltv/superawesome/lib/sautils/SAUtils;->getScaleFactor(Landroid/app/Activity;)F

    move-result v3

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41700000    # 15.0f

    mul-float v5, v1, v4

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v1, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v2

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->context:Landroid/content/Context;

    invoke-direct {v6, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/high16 v8, 0x42bc0000    # 94.0f

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-direct {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v2

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v8, 0x42b40000    # 90.0f

    mul-float/2addr v8, v3

    float-to-int v8, v8

    const/high16 v9, 0x42b40000    # 90.0f

    mul-float/2addr v9, v3

    float-to-int v9, v9

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x5a

    const/16 v9, 0x5a

    const/4 v10, -0x1

    invoke-static {v8, v9, v10, v5}, Ltv/superawesome/lib/sautils/SAImageUtils;->createDrawable(IIIF)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v8, 0xd

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v8, 0x42a80000    # 84.0f

    mul-float/2addr v8, v3

    float-to-int v8, v8

    const/high16 v9, 0x42a80000    # 84.0f

    mul-float/2addr v9, v3

    float-to-int v9, v9

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xd

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->context:Landroid/content/Context;

    iget-object v8, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v8, v8, Ltv/superawesome/lib/samodelspace/saad/SACreative;->details:Ltv/superawesome/lib/samodelspace/saad/SADetails;

    iget-object v8, v8, Ltv/superawesome/lib/samodelspace/saad/SADetails;->media:Ltv/superawesome/lib/samodelspace/saad/SAMedia;

    iget-object v8, v8, Ltv/superawesome/lib/samodelspace/saad/SAMedia;->path:Ljava/lang/String;

    const/high16 v9, 0x42a80000    # 84.0f

    mul-float/2addr v9, v4

    float-to-int v9, v9

    const/high16 v10, 0x42a80000    # 84.0f

    mul-float/2addr v4, v10

    float-to-int v4, v4

    invoke-static {v7, v8, v9, v4, v5}, Ltv/superawesome/lib/sautils/SAImageUtils;->createDrawable(Landroid/content/Context;Ljava/lang/String;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Ltv/superawesome/sdk/views/SAAppWall$AppWallAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v4, v4, Ltv/superawesome/lib/samodelspace/saad/SACreative;->name:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SAAd;->creative:Ltv/superawesome/lib/samodelspace/saad/SACreative;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/saad/SACreative;->name:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "Undefined"

    goto :goto_2
.end method
