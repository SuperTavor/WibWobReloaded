.class public Lcom/toast/android/analytics/common/config/Settings;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_ADVERTISING_ID:Ljava/lang/String; = "KEY_ADVERTISING_ID"

.field public static final KEY_ANALYTICS_SERVER_HOST:Ljava/lang/String; = "serverHost"

.field public static final KEY_APP_ID:Ljava/lang/String; = "appId"

.field public static final KEY_APP_STORE:Ljava/lang/String; = "appstore"

.field public static final KEY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field public static final KEY_CAMPAIGN_USER_ID:Ljava/lang/String; = "campaign_userId"

.field public static final KEY_CAN_DISKCACHE:Ljava/lang/String; = "canDiskCache"

.field public static final KEY_ENTERPRISE_ID:Ljava/lang/String; = "enterpriseId"

.field public static final KEY_FACEBOOK_DEEPLINK_INFO_ANONYMOUS_SENT:Ljava/lang/String; = "facebookDeeplinkInfoAnonymoussent"

.field public static final KEY_FACEBOOK_DEEPLINK_INFO_SENT:Ljava/lang/String; = "facebookDeeplinkInfoSent"

.field public static final KEY_INSTALL_ANONYMOUS_SENT:Ljava/lang/String; = "installAnonymousSent"

.field public static final KEY_INSTALL_REFERRER_ANONYMOUS_SENT:Ljava/lang/String; = "installReferrerAnonymoussent"

.field public static final KEY_INSTALL_REFERRER_SENT:Ljava/lang/String; = "installReferrersent"

.field public static final KEY_INSTALL_REFERRER_URL:Ljava/lang/String; = "installReferrerurl"

.field public static final KEY_LOCAL_INSTALL_REFERRER_SENT:Ljava/lang/String; = "localInstallReferrersent"

.field public static final KEY_LOGGING_USER_ID:Ljava/lang/String; = "logging_userId"

.field public static final KEY_PROMITION_SERVER_REFERRER_HOST:Ljava/lang/String; = "promotionReferrerHost"

.field public static final KEY_PROMOTION_ENABLE:Ljava/lang/String; = "KEY_PROMOTION_LIMITED"

.field public static final KEY_PROMOTION_SERVER_EXEC_HOST:Ljava/lang/String; = "promotionExecHost"

.field public static final KEY_PROMOTION_SERVER_HOST:Ljava/lang/String; = "promotionHost"

.field public static final KEY_PROMOTION_SERVER_INFO_HOST:Ljava/lang/String; = "toastPromotionInfoHost"

.field public static final KEY_PROTOCOL_VERSION:Ljava/lang/String; = "protocolVersion"

.field public static final KEY_PUSH_CID:Ljava/lang/String; = "cid"

.field public static final KEY_PUSH_CID_FOR_NOTI:Ljava/lang/String; = "cid_for_notify"

.field public static final KEY_PUSH_EXE:Ljava/lang/String; = "pexe"

.field public static final KEY_PUSH_SENDER_ID:Ljava/lang/String; = "push_sender_id"

.field public static final KEY_PUSH_SEQ:Ljava/lang/String; = "psq"

.field public static final KEY_PUSH_TOKEN:Ljava/lang/String; = "push_token"

.field public static final KEY_TIME_OUT:Ljava/lang/String; = "httpTimeout"

.field public static final KEY_USE_LOGGING_USER_ID:Ljava/lang/String; = "useLoggingUserId"

.field private static final TAG:Ljava/lang/String; = "Settings"

.field public static final USER_AGENT:Ljava/lang/String; = "userAgent"

.field static _sInstance:Lcom/toast/android/analytics/common/config/Settings;


# instance fields
.field mCanPromotion:Z

.field mContext:Landroid/content/Context;

.field mDeviceId:Ljava/lang/String;

.field mDeviceOrientation:I

.field mSettingInformation:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toast/android/analytics/common/config/Settings;

    invoke-direct {v0}, Lcom/toast/android/analytics/common/config/Settings;-><init>()V

    sput-object v0, Lcom/toast/android/analytics/common/config/Settings;->_sInstance:Lcom/toast/android/analytics/common/config/Settings;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mDeviceOrientation:I

    const-string v0, "n/a"

    iput-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mDeviceId:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mCanPromotion:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/toast/android/analytics/common/config/Settings;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/common/config/Settings;->_sInstance:Lcom/toast/android/analytics/common/config/Settings;

    return-object v0
.end method

.method private readDeviceOrientation(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/common/config/Settings;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mDeviceOrientation:I

    return-void
.end method

.method private readManifest(Landroid/content/Context;)I
    .locals 7

    const/4 v0, 0x0

    const-string v1, "com.toast.android.analytics.appstore"

    invoke-static {p1, v1}, Lcom/toast/android/analytics/common/utils/ManifestUtil;->getMetaValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "<meta-data android:name=\"com.toast.android.analytics.appstore\" android:value=\"#store#\"/>"

    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is missing in AndroidManifest.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x800c

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v3, "appstore"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.toast.android.analytics.analyticsServer"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.toast.android.analytics.campaignServer"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.toast.android.analytics.campaignExecServer"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.toast.android.analytics.campaignInfocServer"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    const-string v5, "Settings"

    const-string v6, "- Using Custom Server Setting!!!!"

    invoke-static {v5, v6}, Lcom/toast/android/analytics/common/utils/Tracer;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v6, "serverHost"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v5, "promotionHost"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v3, "promotionExecHost"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v3, "toastPromotionInfoHost"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private verifyApplicationPermission(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mContext:Landroid/content/Context;

    :cond_0
    iput-object p1, p0, Lcom/toast/android/analytics/common/config/Settings;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.permission.INTERNET"

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v3, "canDiskCache"

    const-string v4, "Y"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private verifyInstallReferrer(Landroid/content/Context;)V
    .locals 6

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "INSTALL_REFERRER_URL"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "INSTALL_REFERRER_SENT"

    const-string v3, "N"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "referrer url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v3, "unknown"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "N"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v4, "installReferrerurl"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v3, "installReferrersent"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "localInstallReferrersent"

    const-string v2, "N"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v3, "localInstallReferrersent"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "installAnonymousSent"

    const-string v2, "N"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v3, "installAnonymousSent"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "facebookDeeplinkInfoSent"

    const-string v2, "N"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v3, "facebookDeeplinkInfoSent"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "facebookDeeplinkInfoAnonymoussent"

    const-string v2, "N"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v2, "facebookDeeplinkInfoAnonymoussent"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mDeviceId:Ljava/lang/String;

    const-string v1, "n/a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_ADVERTISING_ID"

    const-string v2, "n/a"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/toast/android/analytics/common/config/Settings;->mDeviceId:Ljava/lang/String;

    const-string v1, "KEY_PROMOTION_LIMITED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mCanPromotion:Z

    :cond_1
    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOrientation(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public getDeviceUUID()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "DEVICE_UUID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Settings"

    const-string v1, "Device UUID is empty. Generate new UUID"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/common/config/Settings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "DEVICE_UUID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device UUID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExecReferrer()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "EXEC_REFERRER_URL"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getInstallReferrer()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "INSTALL_REFERRER_URL"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallReferrerFacebook()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FACEBOOK_DEEPLINK_INFO"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/toast/android/analytics/common/config/Settings;->verifyInstallReferrer(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/toast/android/analytics/common/config/Settings;->verifyApplicationPermission(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/toast/android/analytics/common/config/Settings;->readDeviceOrientation(Landroid/content/Context;)V

    const-string v0, "protocolVersion"

    const-string v1, "1.0"

    invoke-virtual {p0, v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "promotionHost"

    const-string v1, "https://api-campaign-analytics.cloud.toast.com/promotion/v2/client/get_promotion_list"

    invoke-virtual {p0, v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "promotionExecHost"

    const-string v1, "https://api-campaign-analytics.cloud.toast.com/promotion/v3/client/execute_promotion"

    invoke-virtual {p0, v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "toastPromotionInfoHost"

    const-string v1, "https://api-campaign-analytics.cloud.toast.com/promotion/v1/client/get_basic_promo_list"

    invoke-virtual {p0, v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "serverHost"

    const-string v1, "https://api-log-analytics.cloud.toast.com/am"

    invoke-virtual {p0, v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "promotionReferrerHost"

    const-string v1, "https://api-campaign-analytics.cloud.toast.com/promotion/v1/referrer/notify_app_execution"

    invoke-virtual {p0, v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "httpTimeout"

    const-string v1, "10"

    invoke-virtual {p0, v0, v1}, Lcom/toast/android/analytics/common/config/Settings;->setValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/toast/android/analytics/common/config/Settings;->readManifest(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public isPromotionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mCanPromotion:Z

    return v0
.end method

.method public removeObjectForKey(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setInstallReferrerAnonymous(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v1, "installReferrerAnonymoussent"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIntallRefererRecieved()V
    .locals 3

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v1, "installReferrersent"

    const-string v2, "N"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setValueForKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shouldSendExecReferrer()Z
    .locals 3

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "EXEC_REFERRER_SENT"

    const-string v2, "N"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldSendFacebookDeeplinkInfo()Z
    .locals 3

    const-string v1, "N"

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v2, "facebookDeeplinkInfoSent"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldSendInstallAnonymous()Z
    .locals 3

    const-string v1, "N"

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v2, "installAnonymousSent"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldSendInstallReferrer()Z
    .locals 3

    const-string v1, "N"

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v2, "installReferrersent"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldSendInstallReferrerAnonymous()Z
    .locals 3

    const-string v1, "N"

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v2, "installReferrerAnonymoussent"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldSendInstallReferrerFacebookAnonymous()Z
    .locals 3

    const-string v1, "N"

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v2, "facebookDeeplinkInfoAnonymoussent"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldSendLocalInstallReferrer()Z
    .locals 3

    const-string v1, "N"

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v2, "localInstallReferrersent"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateExecReferrer()V
    .locals 3

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EXEC_REFERRER_SENT"

    const-string v2, "Y"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateFacebookDeeplinkInfoSent(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "facebookDeeplinkInfoSent"

    const-string v2, "Y"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v1, "facebookDeeplinkInfoSent"

    const-string v2, "Y"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateInstallAnonymous(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "installAnonymousSent"

    const-string v2, "Y"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v1, "installAnonymousSent"

    const-string v2, "Y"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateInstallReferrer(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "INSTALL_REFERRER_SENT"

    const-string v2, "Y"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v1, "installReferrersent"

    const-string v2, "Y"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateInstallReferrerAnonymous(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "installReferrerAnonymoussent"

    const-string v2, "Y"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v1, "installReferrerAnonymoussent"

    const-string v2, "Y"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateInstallReferrerFacebookAnonymous(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "facebookDeeplinkInfoAnonymoussent"

    const-string v2, "Y"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v1, "facebookDeeplinkInfoAnonymoussent"

    const-string v2, "Y"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateLocalInstallReferrer(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "localInstallReferrersent"

    const-string v2, "Y"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mSettingInformation:Ljava/util/HashMap;

    const-string v1, "localInstallReferrersent"

    const-string v2, "Y"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateUserAdvertisingId(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_ADVERTISING_ID"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "KEY_PROMOTION_LIMITED"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_ADVERTISING_ID"

    const-string v2, "n/a"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/toast/android/analytics/common/config/Settings;->mDeviceId:Ljava/lang/String;

    const-string v1, "KEY_PROMOTION_LIMITED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/toast/android/analytics/common/config/Settings;->mCanPromotion:Z

    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/toast/android/analytics/common/config/Settings;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", promotion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/toast/android/analytics/common/config/Settings;->mCanPromotion:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
