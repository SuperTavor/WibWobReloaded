.class public Lcom/toast/android/analytics/promotion/model/PromotionDataCache;
.super Ljava/lang/Object;


# static fields
.field static _sInstance:Lcom/toast/android/analytics/promotion/model/PromotionDataCache;


# instance fields
.field mPromotionCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toast/android/analytics/promotion/model/PromotionDataCache;

    invoke-direct {v0}, Lcom/toast/android/analytics/promotion/model/PromotionDataCache;-><init>()V

    sput-object v0, Lcom/toast/android/analytics/promotion/model/PromotionDataCache;->_sInstance:Lcom/toast/android/analytics/promotion/model/PromotionDataCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/toast/android/analytics/promotion/model/PromotionDataCache;->mPromotionCache:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/toast/android/analytics/promotion/model/PromotionDataCache;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/promotion/model/PromotionDataCache;->_sInstance:Lcom/toast/android/analytics/promotion/model/PromotionDataCache;

    return-object v0
.end method


# virtual methods
.method public getPromotion(Ljava/lang/String;)Lcom/toast/android/analytics/promotion/model/Promotion;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/PromotionDataCache;->mPromotionCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/toast/android/analytics/promotion/model/Promotion;

    return-object v0
.end method

.method public putObject(Ljava/lang/String;Lcom/toast/android/analytics/promotion/model/Promotion;)V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/promotion/model/PromotionDataCache;->mPromotionCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
