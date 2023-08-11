.class public Lcom/toast/android/analytics/promotion/view/PromotionUICache;
.super Ljava/lang/Object;


# static fields
.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final FADE_ANIMATION_DURATION:I = 0x1f4

.field static final TAG:Ljava/lang/String; = "PromotionUICache"

.field private static final VIEW_IS_HIDING:I = 0x1

.field private static final VIEW_IS_SHOWING:I

.field static _sInstance:Lcom/toast/android/analytics/promotion/view/PromotionUICache;

.field static mPromotionActivity:Landroid/app/Activity;


# instance fields
.field mArrVisible:Ljava/util/List;

.field mAutoHideHandler:Landroid/os/Handler;

.field mOnCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

.field mViewCacheMap:Ljava/util/HashMap;

.field mViewPropertyCacheMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    invoke-direct {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;-><init>()V

    sput-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->_sInstance:Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    const/4 v0, 0x0

    sput-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mPromotionActivity:Landroid/app/Activity;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mViewCacheMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mViewPropertyCacheMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mArrVisible:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mAutoHideHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/toast/android/analytics/promotion/view/PromotionUICache;Landroid/view/ViewManager;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->hideViewAndNextPatch(Landroid/view/ViewManager;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$100(Lcom/toast/android/analytics/promotion/view/PromotionUICache;Lcom/toast/android/analytics/promotion/model/Promotion;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->clickPromotion(Lcom/toast/android/analytics/promotion/model/Promotion;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/toast/android/analytics/promotion/view/PromotionUICache;Lcom/toast/android/analytics/promotion/model/Promotion;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getPromotionVisibleKey(Lcom/toast/android/analytics/promotion/model/Promotion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private clickPromotion(Lcom/toast/android/analytics/promotion/model/Promotion;Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getCampaignId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceCampaignClick(Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getLandingUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getLandingType()Lcom/toast/android/analytics/promotion/model/Promotion$LandingType;

    move-result-object v0

    sget-object v2, Lcom/toast/android/analytics/promotion/model/Promotion$LandingType;->DeepLink:Lcom/toast/android/analytics/promotion/model/Promotion$LandingType;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mOnCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mOnCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    invoke-interface {v0, v1}, Lcom/toast/android/analytics/GameAnalytics$CampaignListener;->onCampaignClick(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/WebUtil;->openUrl(Landroid/app/Activity;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private getBackgroundImageUrl(Lcom/toast/android/analytics/promotion/model/Promotion;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getPortraitImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getLandscapeImgUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "PromotionUICache"

    const-string v2, "[ERROR] Promotion \'s both background image url is null ..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_2
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getPortraitImgUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getPortraitImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getPortraitImgUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getLandscapeImgUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getLandscapeImgUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getLandscapeImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getLandscapeImgUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getPortraitImgUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUICache;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->_sInstance:Lcom/toast/android/analytics/promotion/view/PromotionUICache;

    return-object v0
.end method

.method private getPromotionVisibleKey(Lcom/toast/android/analytics/promotion/model/Promotion;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCampaignUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%d_%s_%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getPromoId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getDataType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPromotionVisibleKey(Lcom/toast/android/analytics/promotion/model/Promotion;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCampaignUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%d_%s_%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/toast/android/analytics/promotion/model/Promotion;->getPromoId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSizeOfScreenHigherThanHoneyComb(Landroid/app/Activity;)Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method private static getSizeOfScreenLowerThanHoneyComb(Landroid/app/Activity;)Landroid/graphics/Point;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Landroid/graphics/Point;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private hideViewAndNextPatch(Landroid/view/ViewManager;Landroid/view/ViewGroup;)V
    .locals 7

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mArrVisible:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getTopPendingShowOperation()Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getAdspaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getAnimation()I

    move-result v3

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getParent()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getLifeTime()I

    move-result v5

    move-object v0, p0

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->setVisibility(Ljava/lang/String;ZILandroid/app/Activity;IZ)I

    :cond_0
    return-void
.end method

.method private makeCloseButton(Landroid/app/Activity;ILandroid/graphics/Bitmap;Ljava/lang/String;ILcom/toast/android/analytics/promotion/model/Promotion;)Landroid/widget/ImageButton;
    .locals 7

    const/4 v6, 0x0

    const/4 v2, -0x2

    const/4 v5, 0x1

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    int-to-float v2, p2

    const v3, 0x3db851ec    # 0.09f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x4

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    neg-int v4, v3

    neg-int v3, v3

    invoke-virtual {v1, v6, v4, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const-string v3, "#00FF00FF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    invoke-static {p3, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    new-instance v1, Lcom/toast/android/analytics/promotion/view/PromotionUICache$6;

    invoke-direct {v1, p0, p4, p5}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$6;-><init>(Lcom/toast/android/analytics/promotion/view/PromotionUICache;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private makeForegroundRatioText(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 7

    const/high16 v6, -0x10000

    const-string v0, "white"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, -0x1

    :cond_0
    :goto_0
    const/4 v3, 0x4

    const/16 v4, 0xd

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->makeRadioTextView(Landroid/app/Activity;IIILjava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "black"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v6, -0x1000000

    goto :goto_0
.end method

.method private makeRadioButton(Landroid/app/Activity;ILjava/lang/String;ILcom/toast/android/analytics/promotion/model/Promotion;)Landroid/widget/ImageView;
    .locals 6

    const/4 v5, 0x1

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    int-to-float v2, p2

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v2

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    const-string v2, "#00FF00FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->isPromotionVisible(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getUncheckedImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    new-instance v1, Lcom/toast/android/analytics/promotion/view/PromotionUICache$7;

    invoke-direct {v1, p0, v0, p5, p4}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$7;-><init>(Lcom/toast/android/analytics/promotion/view/PromotionUICache;Landroid/widget/ImageView;Lcom/toast/android/analytics/promotion/model/Promotion;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getCheckedImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private makeRadioTextView(Landroid/app/Activity;IIILjava/lang/String;I)Landroid/widget/TextView;
    .locals 7

    const/4 v6, 0x1

    const/4 v2, -0x2

    const/4 v5, 0x3

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    int-to-float v2, p2

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v2

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    int-to-float v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-object v0
.end method

.method private makeView(Landroid/app/Activity;Lcom/toast/android/analytics/promotion/model/Promotion;Ljava/lang/String;I)Landroid/view/ViewGroup;
    .locals 17

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/Error;

    const-string v3, "cannot find activity!"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getImpressionType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "popup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    new-instance v11, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p2 .. p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getPromotionViewProperty()Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->isExistView(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getView(Ljava/lang/String;)Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v4, v2

    :goto_1
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->invalidate()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-object v4

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getCloseImgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getResource(Ljava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_4

    const-string v2, "PromotionUICache"

    const-string v3, "close image is null..."

    invoke-static {v2, v3}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_5
    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/toast/android/analytics/common/config/Settings;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getBackgroundImageUrl(Lcom/toast/android/analytics/promotion/model/Promotion;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getResource(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_6

    const-string v2, "PromotionUICache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " background image is null..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    array-length v7, v3

    invoke-static {v3, v4, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v12

    if-nez v12, :cond_7

    const-string v2, "PromotionUICache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " invalid backgroundImage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_2

    :cond_7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v3, v4, :cond_c

    invoke-static/range {p1 .. p1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getSizeOfScreenHigherThanHoneyComb(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v3

    :goto_3
    iget v7, v3, Landroid/graphics/Point;->x:I

    iget v4, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v3, v9

    const/4 v3, 0x0

    if-nez v6, :cond_d

    invoke-virtual {v8}, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->getPortImgHorizontalRatio()F

    move-result v3

    :cond_8
    :goto_4
    int-to-float v6, v7

    mul-float/2addr v3, v6

    float-to-int v6, v3

    int-to-float v3, v6

    mul-float/2addr v3, v9

    float-to-int v3, v3

    if-le v3, v4, :cond_9

    int-to-float v3, v4

    div-float/2addr v3, v9

    float-to-int v3, v3

    move v6, v3

    move v3, v4

    :cond_9
    invoke-virtual {v8}, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->getMargin()F

    move-result v9

    int-to-float v10, v4

    mul-float v13, v9, v10

    new-instance v10, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v9, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    invoke-direct/range {v14 .. v16}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v6, v14, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v3, v14, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-nez v2, :cond_f

    invoke-virtual {v8}, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->getMarginType()Ljava/lang/String;

    move-result-object v3

    const-string v6, "bottom"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v3, 0xe

    const/4 v6, -0x1

    invoke-virtual {v14, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xc

    const/4 v6, -0x1

    invoke-virtual {v14, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    float-to-int v3, v13

    iput v3, v14, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_5
    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    if-eqz v2, :cond_13

    if-lt v7, v4, :cond_10

    :goto_6
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->makeCloseButton(Landroid/app/Activity;ILandroid/graphics/Bitmap;Ljava/lang/String;ILcom/toast/android/analytics/promotion/model/Promotion;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {p2 .. p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->isPromotion()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual/range {p2 .. p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getIsRepeatImpression()Ljava/lang/String;

    move-result-object v2

    const-string v3, "y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getRepeatOptionText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getRepeatOptionSentence()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getRepeatOptionColor()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->makeRadioButton(Landroid/app/Activity;ILjava/lang/String;ILcom/toast/android/analytics/promotion/model/Promotion;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v8, v12}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->makeForegroundRatioText(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getLandingUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    new-instance v2, Lcom/toast/android/analytics/promotion/view/PromotionUICache$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$4;-><init>(Lcom/toast/android/analytics/promotion/view/PromotionUICache;Lcom/toast/android/analytics/promotion/model/Promotion;)V

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_7
    const-string v2, "container"

    invoke-virtual {v10, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v10}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->addView(Ljava/lang/String;Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mOnCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mOnCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    move-object/from16 v0, p3

    invoke-interface {v2, v0}, Lcom/toast/android/analytics/GameAnalytics$CampaignListener;->onCampaignLoadSuccess(Ljava/lang/String;)V

    :cond_b
    move-object v3, v9

    move-object v4, v10

    goto/16 :goto_1

    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getSizeOfScreenLowerThanHoneyComb(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v3

    goto/16 :goto_3

    :cond_d
    const/4 v10, 0x1

    if-ne v6, v10, :cond_8

    invoke-virtual {v8}, Lcom/toast/android/analytics/promotion/model/PromotionViewProperty;->getLandImgHorizontalRatio()F

    move-result v3

    goto/16 :goto_4

    :cond_e
    const/16 v3, 0xe

    const/4 v6, -0x1

    invoke-virtual {v14, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xa

    const/4 v6, -0x1

    invoke-virtual {v14, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    float-to-int v3, v13

    iput v3, v14, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_5

    :cond_f
    const/16 v3, 0xd

    const/4 v6, -0x1

    invoke-virtual {v14, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_5

    :cond_10
    move v4, v7

    goto/16 :goto_6

    :cond_11
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :cond_12
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->isPromotion()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual/range {p2 .. p2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getLandingUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    new-instance v2, Lcom/toast/android/analytics/promotion/view/PromotionUICache$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$5;-><init>(Lcom/toast/android/analytics/promotion/view/PromotionUICache;Lcom/toast/android/analytics/promotion/model/Promotion;)V

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :cond_14
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7
.end method

.method private setVisible(Ljava/lang/String;ZILandroid/app/Activity;IZ)I
    .locals 8

    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getViewProperty(Ljava/lang/String;)Lcom/toast/android/analytics/promotion/model/Promotion;

    move-result-object v2

    if-eqz p2, :cond_2

    if-eqz v2, :cond_0

    invoke-direct {p0, p4, v2, p1, p3}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->makeView(Landroid/app/Activity;Lcom/toast/android/analytics/promotion/model/Promotion;Ljava/lang/String;I)Landroid/view/ViewGroup;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mAutoHideHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    invoke-static {}, Lcom/toast/android/analytics/promotion/PromotionManager;->getInstance()Lcom/toast/android/analytics/promotion/PromotionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/PromotionManager;->isNetworkStable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PromotionUICache"

    const-string v1, ">>>>> promotion is empty, but network is stable ... delete top pending..."

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->removePendingShowOperation(Ljava/lang/String;)I

    const/16 v0, 0x7005

    goto :goto_1

    :cond_1
    const-string v0, "PromotionUICache"

    const-string v1, ">>>>> promotion is empty caused by network unstable .."

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7002

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getView(Ljava/lang/String;)Landroid/view/ViewGroup;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    sget-object v3, Lcom/toast/android/analytics/promotion/view/PromotionUICache$8;->$SwitchMap$com$toast$android$analytics$promotion$model$enums$NEAFlatPromotionViewAnimationType:[I

    invoke-static {p3}, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;->valueOf(I)Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/toast/android/analytics/promotion/model/enums/NEAFlatPromotionViewAnimationType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {v2}, Lcom/toast/android/analytics/promotion/model/Promotion;->isPromotion()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/toast/android/analytics/promotion/PromotionManager;->getInstance()Lcom/toast/android/analytics/promotion/PromotionManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/toast/android/analytics/promotion/PromotionManager;->notifyCampaignShowToServer(Lcom/toast/android/analytics/promotion/model/Promotion;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getCampaignId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceCampaignExposure(Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/toast/android/analytics/promotion/model/Promotion;->getIsRepeatImpression()Ljava/lang/String;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getPromotionVisibleKey(Lcom/toast/android/analytics/promotion/model/Promotion;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->PROMOTION_INVISIBLE_FOREVER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->setPromotionVisibility(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mOnCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mOnCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    invoke-interface {v0, p1, p2}, Lcom/toast/android/analytics/GameAnalytics$CampaignListener;->onCampaignVisibilityChanged(Ljava/lang/String;Z)V

    :cond_5
    if-eqz p2, :cond_6

    if-lez p5, :cond_6

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mAutoHideHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mAutoHideHandler:Landroid/os/Handler;

    new-instance v1, Lcom/toast/android/analytics/promotion/view/PromotionUICache$3;

    invoke-direct {v1, p0, p1, p3}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$3;-><init>(Lcom/toast/android/analytics/promotion/view/PromotionUICache;Ljava/lang/String;I)V

    int-to-long v2, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    :pswitch_0
    if-eqz p2, :cond_7

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-direct {p0, v0, v1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->hideViewAndNextPatch(Landroid/view/ViewManager;Landroid/view/ViewGroup;)V

    goto :goto_2

    :pswitch_1
    if-eqz p2, :cond_8

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2

    :cond_8
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v4, Lcom/toast/android/analytics/promotion/view/PromotionUICache$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$1;-><init>(Lcom/toast/android/analytics/promotion/view/PromotionUICache;Landroid/view/ViewManager;Landroid/view/ViewGroup;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2

    :pswitch_2
    if-eqz p2, :cond_9

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x447a4000    # 1001.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2

    :cond_9
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x44480000    # 800.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v4, Lcom/toast/android/analytics/promotion/view/PromotionUICache$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$2;-><init>(Lcom/toast/android/analytics/promotion/view/PromotionUICache;Landroid/view/ViewManager;Landroid/view/ViewGroup;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2

    :cond_a
    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getPromotionVisibleKey(Lcom/toast/android/analytics/promotion/model/Promotion;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->PROMOTION_INVISIBLE_FOREVER:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->setPromotionVisibility(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    move-result-object v0

    const-string v1, "promo"

    invoke-direct {p0, v2, v1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getPromotionVisibleKey(Lcom/toast/android/analytics/promotion/model/Promotion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->PROMOTION_INVISIBLE_FOREVER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->setPromotionVisibility(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateAllParent(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mArrVisible:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;

    invoke-virtual {v0, p1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->setParent(Landroid/app/Activity;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public addPendingShowOperation(Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mArrVisible:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addView(Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mViewCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cleanUpPendingShowOperation()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mArrVisible:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;

    iget-object v2, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mViewPropertyCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getAdspaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const-string v2, "PromotionUICache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Warning] cleanup pending show operation ... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getAdspaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public clearViewCache()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mViewCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteView(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mViewCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public executePendingOperation(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getVisibility(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getTopPendingShowOperation()Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getAdspaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mViewCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    const-string v0, "PromotionUICache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute top pendingShowOperation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getAdspaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getPendingShowOperation(Ljava/lang/String;)Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getAnimation()I

    move-result v3

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getParent()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getLifeTime()I

    move-result v5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->setVisibility(Ljava/lang/String;ZILandroid/app/Activity;IZ)I

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getPendingShowOperation(Ljava/lang/String;)Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getAnimation()I

    move-result v3

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getParent()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getLifeTime()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->setVisibility(Ljava/lang/String;ZILandroid/app/Activity;IZ)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPendingShowOperation(Ljava/lang/String;)Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mArrVisible:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getAdspaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTopPendingShowOperation()Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mArrVisible:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mArrVisible:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getView(Ljava/lang/String;)Landroid/view/ViewGroup;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mViewCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getViewProperties()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mViewPropertyCacheMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getViewProperty(Ljava/lang/String;)Lcom/toast/android/analytics/promotion/model/Promotion;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mViewPropertyCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/toast/android/analytics/promotion/model/Promotion;

    return-object v0
.end method

.method public getViewPropertyCount()I
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mViewPropertyCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getVisibility(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getPendingShowOperation(Ljava/lang/String;)Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isExistView(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mViewCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyPendingOperationFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getTopPendingShowOperation()Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getAdspaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->removePendingShowOperation(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mOnCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mOnCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    new-instance v1, Lcom/toast/android/analytics/exception/CampaignException;

    invoke-direct {v1, p2, p3}, Lcom/toast/android/analytics/exception/CampaignException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/toast/android/analytics/GameAnalytics$CampaignListener;->onCampaignLoadFail(Ljava/lang/String;Lcom/toast/android/analytics/exception/CampaignException;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public redrawPromotion(Landroid/app/Activity;)V
    .locals 7

    invoke-virtual {p0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->clearViewCache()V

    invoke-direct {p0, p1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->updateAllParent(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getTopPendingShowOperation()Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getAdspaceName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getAnimation()I

    move-result v3

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getLifeTime()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->setVisible(Ljava/lang/String;ZILandroid/app/Activity;IZ)I

    :cond_0
    return-void
.end method

.method public removePendingShowOperation(Ljava/lang/String;)I
    .locals 4

    const/4 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mArrVisible:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mArrVisible:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getAdspaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mArrVisible:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public setOnCampaignListener(Lcom/toast/android/analytics/GameAnalytics$CampaignListener;)V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mOnCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mOnCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    :cond_0
    iput-object p1, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mOnCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    return-void
.end method

.method public setViewProperty(Ljava/lang/String;Lcom/toast/android/analytics/promotion/model/Promotion;)V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mViewPropertyCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setVisibility(Ljava/lang/String;ZILandroid/app/Activity;IZ)I
    .locals 8

    const/4 v2, 0x0

    const/16 v1, 0x7001

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getViewPropertyCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getViewProperty(Ljava/lang/String;)Lcom/toast/android/analytics/promotion/model/Promotion;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "PromotionUICache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Warning] campaign data miss match.. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7005

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mViewPropertyCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/toast/android/analytics/promotion/model/Promotion;

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getPromotionVisibleKey(Lcom/toast/android/analytics/promotion/model/Promotion;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->isPromotionVisible(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->isPromotion()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->getIsRepeatImpression()Ljava/lang/String;

    move-result-object v1

    const-string v2, "n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PromotionUICache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " promoid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->getPromoId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is non repeatable promotion.."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getBlockedPromotionList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "PromotionUICache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blocked promtion =>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    const-string v1, "PromotionUICache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " promoid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->getPromoId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is repeatable but set to invisible by user.."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "PromotionUICache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reward "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->getPromoId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " already showed.."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const/16 v0, 0x7004

    monitor-exit p0

    goto/16 :goto_0

    :cond_4
    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->getExpire()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->getUserType()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_5

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    :try_start_2
    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/model/Promotion;->getExpire()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_5

    :try_start_3
    invoke-virtual {v0, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_5

    const/16 v0, 0x7000

    monitor-exit p0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    move-object v0, v2

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->getTopPendingShowOperation()Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mViewCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getAdspaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    :cond_6
    if-nez p6, :cond_8

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mArrVisible:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mArrVisible:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mArrVisible:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;->getAdspaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    monitor-exit p0

    move v0, v1

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;

    invoke-direct {v0, p4, p3, p1, p5}, Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;-><init>(Landroid/app/Activity;ILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->addPendingShowOperation(Lcom/toast/android/analytics/promotion/view/PromotionUICache$PendingShowOperation;)V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_9

    if-nez p6, :cond_9

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->mArrVisible:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    const/16 v0, 0x7002

    monitor-exit p0

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->setVisible(Ljava/lang/String;ZILandroid/app/Activity;IZ)I

    :cond_a
    :goto_4
    monitor-exit p0

    move v0, v7

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->removePendingShowOperation(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    monitor-exit p0

    move v0, v1

    goto/16 :goto_0

    :cond_c
    if-nez v0, :cond_a

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/toast/android/analytics/promotion/view/PromotionUICache;->setVisible(Ljava/lang/String;ZILandroid/app/Activity;IZ)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method
