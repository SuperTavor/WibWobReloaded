.class public Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "GooglePlayServicesManager"

.field static sAdvertiseID:Ljava/lang/String;

.field static sGatheringType:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

.field static sInstance:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;

.field static sIsAvailableResultCode:I

.field static sIsLimitAdvertisingTrackingEnable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;

    invoke-direct {v0}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;-><init>()V

    sput-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sInstance:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;

    const-string v0, ""

    sput-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sAdvertiseID:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sIsLimitAdvertisingTrackingEnable:Ljava/lang/String;

    sget-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;->NOTHING:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    sput-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sGatheringType:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectDeviceInformation(Landroid/content/Context;Lcom/toast/android/analytics/common/utils/InformationUtil$IOnLoadInformation;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/InformationUtil;->setDeviceToken(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil;->initialize(Landroid/content/Context;)V

    new-instance v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$1;

    invoke-direct {v0, p0, p1}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$1;-><init>(Landroid/content/Context;Lcom/toast/android/analytics/common/utils/InformationUtil$IOnLoadInformation;)V

    invoke-static {v0}, Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil;->requestAdvertisingId(Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil$IOnLoadAdvertisingPolicy;)V

    return-void
.end method

.method public static getInstance()Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sInstance:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;

    return-object v0
.end method

.method private initAdvertisingIdClient(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "GooglePlayServicesManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "GooglePlayServicesManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GooglePlayServicesRepairableException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "GooglePlayServicesManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GooglePlayServicesNotAvailableException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v2, "GooglePlayServicesManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Execption @getAdvertiseID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static keepGoing(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "com.toast.android.analytics.ignoreGooglePlayServiceMissing"

    invoke-static {p0, v2}, Lcom/toast/android/analytics/common/utils/ManifestUtil;->getMetaBoolValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    if-ne v1, v0, :cond_1

    const-string v0, "GooglePlayServicesManager"

    const-string v1, "google play service is missing (user recoverable)"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    const-string v0, "GooglePlayServicesManager"

    const-string v1, "google play service update requied (user recoverable)"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    const-string v0, "GooglePlayServicesManager"

    const-string v1, "google play service is disabled (user recoverable)"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "GooglePlayServicesManager"

    const-string v1, "google play service erorr (unrecoverable)"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "GooglePlayServicesManager"

    const-string v2, "Ignore Missing Google Play Service"

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static onDeviceIdCollect(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/toast/android/analytics/gcm/GcmManager;->onDeviceIdCollect(Landroid/content/Context;)V

    return-void
.end method

.method public static setSenderId(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/toast/android/analytics/gcm/GcmManager;->setSenderId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAdvertiseID(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sAdvertiseID:Ljava/lang/String;

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sAdvertiseID:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sAdvertiseID:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    :cond_1
    const-string v1, "GooglePlayServicesManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Advertising ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sAdvertiseID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sAdvertiseID:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/toast/android/analytics/common/config/Settings;->getDeviceUUID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sAdvertiseID:Ljava/lang/String;

    const-string v1, "GooglePlayServicesManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Advertising ID (using UUID) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sAdvertiseID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;->UUID:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    sput-object v1, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sGatheringType:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    :goto_2
    const-string v1, "GooglePlayServicesManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LimitAdvertisingTrackingEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string v0, ""

    sput-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sAdvertiseID:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sAdvertiseID:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "GooglePlayServicesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1
    move-exception v2

    const-string v3, "GooglePlayServicesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GooglePlayServicesRepairableException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v2

    const-string v3, "GooglePlayServicesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GooglePlayServicesNotAvailableException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_3
    move-exception v2

    const-string v3, "GooglePlayServicesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Execption @getAdvertiseID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    sget-object v1, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;->ADVERTISE_ID:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    sput-object v1, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sGatheringType:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    goto/16 :goto_2
.end method

.method public getTrackEnable(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sIsLimitAdvertisingTrackingEnable:Ljava/lang/String;

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sIsLimitAdvertisingTrackingEnable:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->initAdvertisingIdClient(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "N"

    sput-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sIsLimitAdvertisingTrackingEnable:Ljava/lang/String;

    :cond_1
    :goto_1
    const-string v0, "GooglePlayServicesManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLimitAdvertisingTrackingEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sIsLimitAdvertisingTrackingEnable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sIsLimitAdvertisingTrackingEnable:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "Y"

    sput-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sIsLimitAdvertisingTrackingEnable:Ljava/lang/String;

    goto :goto_1
.end method

.method public getTrackId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sAdvertiseID:Ljava/lang/String;

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sAdvertiseID:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->initAdvertisingIdClient(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sAdvertiseID:Ljava/lang/String;

    :cond_1
    const-string v0, "GooglePlayServicesManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Advertising ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sAdvertiseID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sAdvertiseID:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "*** Google Play Services exist ***\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsAvailableResultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sIsAvailableResultCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sender ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v3

    const-string v4, "push_sender_id"

    invoke-virtual {v3, v4}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device Token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getDeviceToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CanExecutePromotion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCanExecutePromotion()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sAdvertiseID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gathering Type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->sGatheringType:Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager$GATHERING_TYPE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
