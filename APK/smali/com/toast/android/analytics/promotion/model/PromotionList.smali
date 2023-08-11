.class public Lcom/toast/android/analytics/promotion/model/PromotionList;
.super Ljava/lang/Object;


# static fields
.field public static mPromotionViewProperties:Ljava/util/List;

.field public static mPromotions:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/toast/android/analytics/promotion/model/PromotionList;->mPromotions:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/toast/android/analytics/promotion/model/PromotionList;->mPromotionViewProperties:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/toast/android/analytics/promotion/model/PromotionList;->mPromotions:Ljava/util/List;

    return-void
.end method

.method public static createWithMapData(Lorg/json/JSONArray;)Lcom/toast/android/analytics/promotion/model/PromotionList;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/toast/android/analytics/promotion/model/Promotion;->createWithMapData(Lorg/json/JSONObject;)Lcom/toast/android/analytics/promotion/model/Promotion;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/toast/android/analytics/promotion/model/PromotionList;

    invoke-direct {v0, v2}, Lcom/toast/android/analytics/promotion/model/PromotionList;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getPromotions()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/promotion/model/PromotionList;->mPromotions:Ljava/util/List;

    return-object v0
.end method

.method public setPromotions(Ljava/util/List;)V
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/promotion/model/PromotionList;->mPromotions:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/toast/android/analytics/promotion/model/PromotionList;->mPromotions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/toast/android/analytics/promotion/model/PromotionList;->mPromotions:Ljava/util/List;

    :cond_0
    sput-object p1, Lcom/toast/android/analytics/promotion/model/PromotionList;->mPromotions:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lcom/toast/android/analytics/promotion/model/PromotionList;->mPromotions:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/toast/android/analytics/promotion/model/PromotionList;->mPromotions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/toast/android/analytics/promotion/model/Promotion;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
