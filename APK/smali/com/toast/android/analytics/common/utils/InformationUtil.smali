.class public Lcom/toast/android/analytics/common/utils/InformationUtil;
.super Ljava/lang/Object;


# static fields
.field private static final OS_TYPE:Ljava/lang/String; = "Android"

.field static final TAG:Ljava/lang/String; = "InformationUtil"

.field static volatile mDeviceIdCollectionComplete:Z

.field static sAppUid:Ljava/lang/String;

.field public static sCanExecutePromotion:Z

.field static sCarrier:Ljava/lang/String;

.field static sClientIp:Ljava/lang/String;

.field static sCountryCode:Ljava/lang/String;

.field static sDate:Ljava/util/Date;

.field static sDeviceId:Ljava/lang/String;

.field static sDeviceName:Ljava/lang/String;

.field static sDeviceToken:Ljava/lang/String;

.field static sLanguageCode:Ljava/lang/String;

.field static sLocale:Ljava/lang/String;

.field static sOsType:Ljava/lang/String;

.field static sOsVersion:Ljava/lang/String;

.field static sTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->mDeviceIdCollectionComplete:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectDeviceInformation(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/toast/android/analytics/common/utils/InformationUtil;->setLocale(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/InformationUtil;->setLanguageCode(Ljava/lang/String;)V

    const-string v0, "zh_CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v3, v0, :cond_3

    const-string v0, "zh-Hans_CN"

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/InformationUtil;->setLocale(Ljava/lang/String;)V

    const-string v0, "zh-Hans"

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/InformationUtil;->setLanguageCode(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, ""

    :cond_2
    invoke-static {v1}, Lcom/toast/android/analytics/common/utils/InformationUtil;->setCarrier(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/InformationUtil;->setCountryCode(Ljava/lang/String;)V

    const-string v0, "n/a"

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/InformationUtil;->setDeviceId(Ljava/lang/String;)V

    invoke-static {}, Lcom/toast/android/analytics/common/utils/NetworkUtil;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/InformationUtil;->setClientIp(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "zh_TW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v3, v0, :cond_1

    const-string v0, "zh-Hant_TW"

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/InformationUtil;->setLocale(Ljava/lang/String;)V

    const-string v0, "zh-Hant"

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/InformationUtil;->setLanguageCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static collectDeviceInformation(Landroid/content/Context;Lcom/toast/android/analytics/common/utils/InformationUtil$IOnLoadInformation;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->collectDeviceInformation(Landroid/content/Context;Lcom/toast/android/analytics/common/utils/InformationUtil$IOnLoadInformation;)V

    return-void
.end method

.method public static getCampaignDeviceId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    const-string v1, "useLoggingUserId"

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    const-string v1, "campaign_userId"

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCampaignUserId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    const-string v1, "campaign_userId"

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCanExecutePromotion()Z
    .locals 1

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/common/config/Settings;->isPromotionEnabled()Z

    move-result v0

    return v0
.end method

.method public static getCarrier()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sCarrier:Ljava/lang/String;

    return-object v0
.end method

.method public static getClientIp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sClientIp:Ljava/lang/String;

    return-object v0
.end method

.method public static getClientTimeStamp()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/common/config/Settings;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sDeviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sDeviceName:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceToken()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sDeviceToken:Ljava/lang/String;

    return-object v0
.end method

.method public static getLanguageCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocale()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sLocale:Ljava/lang/String;

    return-object v0
.end method

.method public static getLoggingUserId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    const-string v1, "useLoggingUserId"

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    const-string v1, "logging_userId"

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "n/a"

    goto :goto_0
.end method

.method public static getOsType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sOsType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Android"

    sput-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sOsType:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sOsType:Ljava/lang/String;

    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sOsVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sOsVersion:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getTimezone()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sTimeZone:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sTimeZone:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public static getUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sAppUid:Ljava/lang/String;

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sAppUid:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sAppUid:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/common/config/Settings;->getDeviceUUID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sAppUid:Ljava/lang/String;

    const-string v0, "InformationUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UUID (using UUID) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/toast/android/analytics/common/utils/InformationUtil;->sAppUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sAppUid:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isDeviceIdCollectionComplete()Z
    .locals 1

    sget-boolean v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->mDeviceIdCollectionComplete:Z

    return v0
.end method

.method public static setCampaignUserId(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    const-string v1, "campaign_userId"

    invoke-virtual {v0, v1, p0}, Lcom/toast/android/analytics/common/config/Settings;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCarrier(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sCarrier:Ljava/lang/String;

    return-void
.end method

.method public static setClientIp(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sClientIp:Ljava/lang/String;

    return-void
.end method

.method public static setCountryCode(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sCountryCode:Ljava/lang/String;

    return-void
.end method

.method public static setDeviceId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static setDeviceIdCollectionComplete()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/toast/android/analytics/common/utils/InformationUtil;->mDeviceIdCollectionComplete:Z

    return-void
.end method

.method public static setDeviceName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sDeviceName:Ljava/lang/String;

    return-void
.end method

.method public static setDeviceToken(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sDeviceToken:Ljava/lang/String;

    return-void
.end method

.method public static setLanguageCode(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sLanguageCode:Ljava/lang/String;

    return-void
.end method

.method public static setLocale(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sLocale:Ljava/lang/String;

    return-void
.end method

.method public static setLoggingId(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    const-string v1, "logging_userId"

    invoke-virtual {v0, v1, p0}, Lcom/toast/android/analytics/common/config/Settings;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setOsType(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sOsType:Ljava/lang/String;

    return-void
.end method

.method public static setOsVersion(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sOsVersion:Ljava/lang/String;

    return-void
.end method

.method public static setTimezone(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/toast/android/analytics/common/utils/InformationUtil;->sTimeZone:Ljava/lang/String;

    return-void
.end method
