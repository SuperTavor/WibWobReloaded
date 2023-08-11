.class Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;
.super Ljava/lang/Thread;


# instance fields
.field private isUseLogginUserId:Z

.field private promotionResponse:Ljava/lang/String;

.field final synthetic this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;


# direct methods
.method public constructor <init>(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Z)V
    .locals 1

    iput-object p1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->promotionResponse:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->isUseLogginUserId:Z

    return-void
.end method

.method static synthetic access$902(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->promotionResponse:Ljava/lang/String;

    return-object p1
.end method

.method private getAdvertiseID()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->getInstance()Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-static {v1}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$500(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->getAdvertiseID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPromotionListFromServer()Ljava/lang/String;
    .locals 5

    new-instance v0, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;

    invoke-direct {v0}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;-><init>()V

    new-instance v1, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask$1;

    invoke-direct {v1, p0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask$1;-><init>(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;)V

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->setOnCompleteListener(Lcom/toast/android/analytics/common/network/RequestOperation$IOnCompleteListener;)V

    new-instance v1, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask$2;

    invoke-direct {v1, p0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask$2;-><init>(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;)V

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->setOnFailListener(Lcom/toast/android/analytics/common/network/RequestOperation$IOnFailListener;)V

    invoke-direct {p0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->makePromotionRequestData()Lcom/toast/android/analytics/model/RequestData;

    move-result-object v1

    const-string v2, "ToastPromotion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Promotion data request : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/toast/android/analytics/model/RequestData;->getJsonData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v2

    const-string v3, "toastPromotionInfoHost"

    invoke-virtual {v2, v3}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/toast/android/analytics/common/network/PromotionRequest;

    invoke-direct {v3, v1, v2}, Lcom/toast/android/analytics/common/network/PromotionRequest;-><init>(Lcom/toast/android/analytics/model/RequestData;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->setRequest(Lcom/toast/android/analytics/common/interfaces/IRequest;)V

    invoke-virtual {v0}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->execute()V

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->promotionResponse:Ljava/lang/String;

    return-object v0
.end method

.method private makeLocalFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makePromotionRequestData()Lcom/toast/android/analytics/model/RequestData;
    .locals 6

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-static {v0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$500(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/toast/android/analytics/common/utils/TransactionIdCounter;->getInstance()Lcom/toast/android/analytics/common/utils/TransactionIdCounter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/toast/android/analytics/common/utils/TransactionIdCounter;->getTransactionId()J

    move-result-wide v4

    long-to-int v4, v4

    const-string v5, "transactionId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "header"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "appId"

    const-string v4, "appId"

    invoke-virtual {v1, v4}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "appVersion"

    const-string v4, "appVersion"

    invoke-virtual {v1, v4}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "operatingSystem"

    const-string v4, "aos"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "countryCode"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lastModifiedTime"

    invoke-static {}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getInstance()Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/toast/android/analytics/promotion/view/PromotionUIBuilder;->getModifiedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->isUseLogginUserId:Z

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const-string v0, "loggingUserId"

    const-string v3, "campaign_userId"

    invoke-virtual {v1, v3}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-static {v2}, Lcom/toast/android/analytics/model/RequestData;->createWithMapData(Ljava/util/Map;)Lcom/toast/android/analytics/model/RequestData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "loggingUserId"

    iget-object v1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-static {v1}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$200(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ToastPromotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====makePromotionPollingData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ToastPromotion"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_2
.end method

.method private parsePromotionResult(Ljava/lang/String;)Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-ne v7, v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "promotionList"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_4

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v5, "impressionType"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "icon"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v7, :cond_3

    new-instance v2, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;

    iget-object v3, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;-><init>(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;)V

    const-string v3, "customKey"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->setCustomKey(Ljava/lang/String;)V

    const-string v3, "customValue"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->setCustomVal(J)V

    const-string v3, "startupImgUrl"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->setStartUpImageUrl(Ljava/lang/String;)V

    const-string v3, "landingUrl"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->setLandingUrl(Ljava/lang/String;)V

    const-string v3, "promoId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->setPromoId(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-direct {p0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->getAdvertiseID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$202(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-static {v0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$200(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-static {v0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$200(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "ToastPromotion"

    const-string v1, "Device ID is empty or disabled. Cannot execute promotion."

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-direct {p0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->getPromotionListFromServer()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->parsePromotionResult(Ljava/lang/String;)Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$302(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;)Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;

    const-string v0, ""

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-static {v0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$300(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;)Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "ToastPromotion"

    const-string v1, "Promotion info is not exist."

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-static {v0, v6}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$402(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Z)Z

    const-string v0, ""

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    const-string v1, "%s|%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-static {v3}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$300(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;)Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->getCustomKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-static {v3}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$300(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;)Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->getCustomVal()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$102(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-static {v0, v7}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$402(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Z)Z

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-static {v0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$300(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;)Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->getStartUpImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->makeLocalFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-static {v4}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$500(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-ne v3, v7, :cond_3

    const-string v0, "ToastPromotion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Button Image Exist : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-static {v0, v1}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$602(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    :try_start_0
    const-string v3, "ToastPromotion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download Image File : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$402(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Z)Z

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-static {v0, v1}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$602(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-static {v0, v6}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$402(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Z)Z

    goto/16 :goto_0

    :cond_5
    :try_start_1
    const-string v3, "ToastPromotion"

    const-string v4, "Download Image File Success!"

    invoke-static {v3, v4}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-static {v3, v0, v2}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$700(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$402(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Z)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-static {v0, v6}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->access$402(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Z)Z

    goto/16 :goto_0
.end method
