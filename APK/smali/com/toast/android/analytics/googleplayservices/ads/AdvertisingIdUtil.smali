.class public Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String; = "AdvertisingIdUtil"

.field static _sApplicationContext:Landroid/content/Context;

.field static _sListener:Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil$IOnLoadAdvertisingPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil;->_sApplicationContext:Landroid/content/Context;

    sput-object v0, Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil;->_sListener:Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil$IOnLoadAdvertisingPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil;->_sApplicationContext:Landroid/content/Context;

    return-void
.end method

.method public static requestAdvertisingId(Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil$IOnLoadAdvertisingPolicy;)V
    .locals 2

    sget-object v0, Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil;->_sApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "initialize!"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil;->setOnLoadAdvertisingPolicy(Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil$IOnLoadAdvertisingPolicy;)V

    new-instance v0, Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil$AdvertisingPolicyProcess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil$AdvertisingPolicyProcess;-><init>(Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil$1;)V

    invoke-virtual {v0}, Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil$AdvertisingPolicyProcess;->start()V

    return-void
.end method

.method public static requestSyncAdvertisingId()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil;->_sApplicationContext:Landroid/content/Context;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "initialize!"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil;->_sApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    goto :goto_0
.end method

.method public static setOnLoadAdvertisingPolicy(Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil$IOnLoadAdvertisingPolicy;)V
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil;->_sListener:Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil$IOnLoadAdvertisingPolicy;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil;->_sListener:Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil$IOnLoadAdvertisingPolicy;

    :cond_0
    sput-object p0, Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil;->_sListener:Lcom/toast/android/analytics/googleplayservices/ads/AdvertisingIdUtil$IOnLoadAdvertisingPolicy;

    return-void
.end method
