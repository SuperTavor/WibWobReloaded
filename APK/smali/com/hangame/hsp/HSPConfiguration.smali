.class public final Lcom/hangame/hsp/HSPConfiguration;
.super Ljava/lang/Object;


# static fields
.field public static final GCM_PROJECT_NUM:Ljava/lang/String; = "GCM_PROJECT_NUM"

.field public static final HSP_BOOLEAN_FALSE:Ljava/lang/String; = "false"

.field public static final HSP_BOOLEAN_TRUE:Ljava/lang/String; = "true"

.field public static final HSP_DEBUG_HIGH:Ljava/lang/String; = "HIGH"

.field public static final HSP_DEBUG_LOW:Ljava/lang/String; = "LOW"

.field public static final HSP_DEBUG_MIDDLE:Ljava/lang/String; = "MIDDLE"

.field public static final HSP_DEBUG_NONE:Ljava/lang/String; = "NONE"

.field public static final HSP_LOCALE_GLOBAL:Ljava/lang/String; = "GLOBAL"

.field public static final HSP_LOCALE_JP:Ljava/lang/String;

.field public static final HSP_LOCALE_KR:Ljava/lang/String;

.field public static final HSP_MARKET_C0:Ljava/lang/String; = "C0"

.field public static final HSP_MARKET_C3:Ljava/lang/String; = "C3"

.field public static final HSP_MARKET_C8:Ljava/lang/String; = "C8"

.field public static final HSP_MARKET_C9:Ljava/lang/String; = "C9"

.field public static final HSP_MARKET_CT:Ljava/lang/String; = "CT"

.field public static final HSP_MARKET_CU:Ljava/lang/String; = "CU"

.field public static final HSP_MARKET_CX:Ljava/lang/String; = "CX"

.field public static final HSP_MARKET_JG:Ljava/lang/String; = "JG"

.field public static final HSP_MARKET_KG:Ljava/lang/String; = "KG"

.field public static final HSP_MARKET_KL:Ljava/lang/String; = "KL"

.field public static final HSP_MARKET_KN:Ljava/lang/String; = "KN"

.field public static final HSP_MARKET_KS:Ljava/lang/String; = "KS"

.field public static final HSP_MARKET_KT:Ljava/lang/String; = "KT"

.field public static final HSP_PACKAGE_LINE:Ljava/lang/String; = "LINE"

.field public static final HSP_PACKAGE_NAVER:Ljava/lang/String; = "NAVER"

.field public static final HSP_PACKAGE_ONEBUILD:Ljava/lang/String; = "ONEBUILD"

.field public static final HSP_PACKAGE_TOAST:Ljava/lang/String; = "TOAST"

.field public static final HSP_PACKAGE_TOAST_HANGAME:Ljava/lang/String; = "TOAST_HAN"

.field private static final LOGTYPE_NELO:Ljava/lang/String; = "nelo"

.field private static final LOGTYPE_TLOG:Ljava/lang/String; = "logncrash"

.field private static final TAG:Ljava/lang/String; = "HSPConfiguration"

.field private static sInstance:Lcom/hangame/hsp/HSPConfiguration;


# instance fields
.field private final launchingZoneMap:Ljava/util/Map;

.field private mAddressLaunching:Ljava/lang/String;

.field private final mConfigurationItemMap:Ljava/util/Map;

.field private mDebugLevel:Ljava/lang/String;

.field private mEnforceApp2WebFacebook:Z

.field private mEnforceApp2WebNaver:Z

.field private mEnforcedDeviceLogin:Z

.field private mEnforcedGuestLogin:Z

.field private mGcmProjectNum:Ljava/lang/String;

.field private mGmessengerAddress:Ljava/lang/String;

.field private mGmessengerAddressPort:I

.field private mGmessengerAddressSslPort:I

.field private mHeartBeatTimeInterval:J

.field private mLaunchingZone:Ljava/lang/String;

.field private mLncRefreshTimeInterval:J

.field private mLocale:Ljava/lang/String;

.field private mLoginIdp:Ljava/lang/String;

.field private mMarketCode:Ljava/lang/String;

.field private mNeloLogLvl:Ljava/lang/String;

.field private mPackageType:Ljava/lang/String;

.field private mPushNotificationPriority:I

.field private mRealLaunchingZone:Z

.field private mResendFailedData:Z

.field private mRetryTimes:I

.field private mShowNickNm:Z

.field private mShowUiMaintenance:Z

.field private mShowUiRecommendGame:Z

.field private mShowUiVersionCheck:Z

.field private mShowUiWelcomeMessage:Z

.field private mSuspendDelayTime:J

.field private mTLogAppKey:Ljava/lang/String;

.field private mTimeoutHTTP:J

.field private mTimeoutTCP:J

.field private mTopbarColor:Ljava/lang/String;

.field private mTransferKeyValidTime:I

.field private mUseAutoSuspend:Z

.field private mUseGmessenger:Z

.field private mUseJoga:Z

.field private mUseNelo:Ljava/lang/String;

.field private mUsePush:Z

.field private mUseRodaOasis:Z

.field private mWebviewHardwareAccelerate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/HSPConfiguration;->HSP_LOCALE_JP:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/HSPConfiguration;->HSP_LOCALE_KR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->launchingZoneMap:Ljava/util/Map;

    const-string v0, "ALPHA-KR"

    iput-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mLaunchingZone:Ljava/lang/String;

    const-string v0, "http://alpha-lnc.m.hangame.com:10080/hsp/lnc"

    iput-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mAddressLaunching:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/hangame/hsp/HSPConfiguration;->mRealLaunchingZone:Z

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mHeartBeatTimeInterval:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mLncRefreshTimeInterval:J

    const-string v0, "HIGH"

    iput-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mDebugLevel:Ljava/lang/String;

    sget-object v0, Lcom/hangame/hsp/HSPConfiguration;->HSP_LOCALE_KR:Ljava/lang/String;

    iput-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mLocale:Ljava/lang/String;

    const-string v0, "KG"

    iput-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mMarketCode:Ljava/lang/String;

    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mTimeoutTCP:J

    iput-wide v6, p0, Lcom/hangame/hsp/HSPConfiguration;->mTimeoutHTTP:J

    iput-boolean v3, p0, Lcom/hangame/hsp/HSPConfiguration;->mShowUiWelcomeMessage:Z

    iput-boolean v3, p0, Lcom/hangame/hsp/HSPConfiguration;->mShowUiVersionCheck:Z

    iput-boolean v3, p0, Lcom/hangame/hsp/HSPConfiguration;->mShowUiMaintenance:Z

    iput-boolean v3, p0, Lcom/hangame/hsp/HSPConfiguration;->mShowUiRecommendGame:Z

    iput-boolean v2, p0, Lcom/hangame/hsp/HSPConfiguration;->mUsePush:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mGcmProjectNum:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/hangame/hsp/HSPConfiguration;->mEnforceApp2WebFacebook:Z

    iput-boolean v2, p0, Lcom/hangame/hsp/HSPConfiguration;->mEnforceApp2WebNaver:Z

    iput v2, p0, Lcom/hangame/hsp/HSPConfiguration;->mPushNotificationPriority:I

    iput-boolean v2, p0, Lcom/hangame/hsp/HSPConfiguration;->mUseRodaOasis:Z

    const-string v0, "NONE"

    iput-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mPackageType:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/hangame/hsp/HSPConfiguration;->mShowNickNm:Z

    iput-boolean v2, p0, Lcom/hangame/hsp/HSPConfiguration;->mUseJoga:Z

    const-string v0, "#f53b3b"

    iput-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mTopbarColor:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/hangame/hsp/HSPConfiguration;->mResendFailedData:Z

    iput-wide v6, p0, Lcom/hangame/hsp/HSPConfiguration;->mSuspendDelayTime:J

    iput-boolean v2, p0, Lcom/hangame/hsp/HSPConfiguration;->mEnforcedDeviceLogin:Z

    iput-boolean v2, p0, Lcom/hangame/hsp/HSPConfiguration;->mEnforcedGuestLogin:Z

    iput-boolean v3, p0, Lcom/hangame/hsp/HSPConfiguration;->mUseAutoSuspend:Z

    iput-object v4, p0, Lcom/hangame/hsp/HSPConfiguration;->mNeloLogLvl:Ljava/lang/String;

    iput-object v4, p0, Lcom/hangame/hsp/HSPConfiguration;->mUseNelo:Ljava/lang/String;

    iput-object v4, p0, Lcom/hangame/hsp/HSPConfiguration;->mTLogAppKey:Ljava/lang/String;

    iput-object v4, p0, Lcom/hangame/hsp/HSPConfiguration;->mLoginIdp:Ljava/lang/String;

    iput-object v4, p0, Lcom/hangame/hsp/HSPConfiguration;->mGmessengerAddress:Ljava/lang/String;

    iput v2, p0, Lcom/hangame/hsp/HSPConfiguration;->mGmessengerAddressPort:I

    iput v2, p0, Lcom/hangame/hsp/HSPConfiguration;->mGmessengerAddressSslPort:I

    iput-boolean v2, p0, Lcom/hangame/hsp/HSPConfiguration;->mUseGmessenger:Z

    iput-boolean v2, p0, Lcom/hangame/hsp/HSPConfiguration;->mWebviewHardwareAccelerate:Z

    iput v2, p0, Lcom/hangame/hsp/HSPConfiguration;->mRetryTimes:I

    const/16 v0, 0x78

    iput v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mTransferKeyValidTime:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mConfigurationItemMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/hangame/hsp/HSPConfiguration;->loadLaunchingZone(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/hangame/hsp/HSPConfiguration;->loadConfiguration(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;
    .locals 4

    const-class v1, Lcom/hangame/hsp/HSPConfiguration;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPConfiguration;->sInstance:Lcom/hangame/hsp/HSPConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/hangame/hsp/HSPConfiguration;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/hangame/hsp/HSPConfiguration;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hangame/hsp/HSPConfiguration;->sInstance:Lcom/hangame/hsp/HSPConfiguration;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/hangame/hsp/HSPConfiguration;->sInstance:Lcom/hangame/hsp/HSPConfiguration;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "HSPConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isHSPInitialized()Z
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HSPConfiguration"

    const-string v1, "HSP is aleady initialized"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowUiRecommendGame()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mShowUiRecommendGame:Z

    return v0
.end method

.method private loadConfiguration(Landroid/content/Context;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "HSPConfiguration.xml"

    const-string v0, "configuration"

    const-string v0, "key"

    const-string v0, "value"

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "HSPConfiguration.xml"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "configuration"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v3, "key"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "value"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/hangame/hsp/HSPConfiguration;->processConfigurationItem(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HSPConfiguration"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_2
    throw v0

    :catch_1
    move-exception v1

    const-string v2, "HSPConfiguration"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private loadLaunchingZone(Landroid/content/Context;)V
    .locals 4

    const-string v0, "hsp_launching_zone"

    const-string v0, "launchingZone"

    const-string v0, "name"

    const-string v0, "address"

    const-string v0, "locale"

    const-string v0, "isRealZone"

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->launchingZoneMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "hsp_launching_zone"

    const-string v2, "xml"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "launchingZone"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPConfiguration$LaunchingZoneData;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/hangame/hsp/HSPConfiguration$LaunchingZoneData;-><init>(Lcom/hangame/hsp/HSPConfiguration$1;)V

    const/4 v2, 0x0

    const-string v3, "name"

    invoke-interface {v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPConfiguration$LaunchingZoneData;->access$402(Lcom/hangame/hsp/HSPConfiguration$LaunchingZoneData;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "address"

    invoke-interface {v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPConfiguration$LaunchingZoneData;->access$002(Lcom/hangame/hsp/HSPConfiguration$LaunchingZoneData;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "locale"

    invoke-interface {v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPConfiguration$LaunchingZoneData;->access$102(Lcom/hangame/hsp/HSPConfiguration$LaunchingZoneData;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "isRealZone"

    invoke-interface {v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPConfiguration$LaunchingZoneData;->access$202(Lcom/hangame/hsp/HSPConfiguration$LaunchingZoneData;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/hangame/hsp/HSPConfiguration;->launchingZoneMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/hangame/hsp/HSPConfiguration$LaunchingZoneData;->access$400(Lcom/hangame/hsp/HSPConfiguration$LaunchingZoneData;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw v0

    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "hsp_launching_zone file is not exist"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processConfigurationItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "HSP_LAUNCHING_ZONE"

    const-string v2, "HSP_MARKET"

    const-string v2, "HSP_USE_PUSH"

    const-string v2, "GCM_PROJECT_NUM"

    const-string v2, "HSP_ENFORCE_APP2WEB_FACEBOOK"

    const-string v2, "HSP_ENFORCE_APP2WEB_NAVER"

    const-string v2, "HSP_PUSH_NOTIFICATION_PRIORITY"

    const-string v2, "HSP_USE_RODA_OASIS"

    const-string v2, "HSP_USE_JOGA"

    const-string v2, "HSP_TOPBAR_COLOR"

    const-string v2, "HSP_DEBUG_LEVEL"

    const-string v2, "HSP_TIMEOUT_TCP"

    const-string v2, "HSP_TIMEOUT_HTTP"

    const-string v2, "HSP_LAUNCHING_REFRESH_TIMEINTERVAL"

    const-string v2, "HSP_HEARTBEAT_TIMEINTERVAL"

    const-string v2, "HSP_SHOW_UI_WELCOMEMESSAGE"

    const-string v2, "HSP_SHOW_UI_VERSIONCHECK"

    const-string v2, "HSP_SHOW_UI_MAINTENANCE"

    const-string v2, "HSP_SHOW_UI_RECOMMENDGAME"

    const-string v2, "HSP_RESEND_FAILED_DATA"

    const-string v2, "HSP_SUSPEND_DELAY_TIME"

    const-string v2, "HSP_USE_AUTOSUSPEND"

    const-string v2, "HSP_ENFORCED_DEVICE_LOGIN"

    const-string v2, "HSP_ENFORCED_GUEST_LOGIN"

    const-string v2, "HSP_NELO_DEBUG_LEVEL"

    const-string v2, "HSP_USE_NELO"

    const-string v2, "HSP_LOGCRASH_APPKEY"

    const-string v2, "HSP_LOGIN_IDP"

    const-string v2, "GMESSENGER_SERVER_ADDR"

    const-string v2, "GMESSENGER_SERVER_ADDR_PORT"

    const-string v2, "GMESSENGER_SERVER_ADDR_SSL_PORT"

    const-string v2, "HSP_USE_GMESSENGER"

    const-string v2, "HSP_USE_WEBVIEW_HARDWARE_ACCELERATE"

    const-string v2, "HSP_RETRY_TIMES"

    const-string v2, "HSP_TRANSFERKEY_VALID_TIME"

    const-string v2, "HSP_LAUNCHING_ZONE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/hangame/hsp/HSPConfiguration;->setLaunchingZone(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mConfigurationItemMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const-string v2, "HSP_MARKET"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_2

    iput-object p2, p0, Lcom/hangame/hsp/HSPConfiguration;->mMarketCode:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v2, "GCM_PROJECT_NUM"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_3

    iput-object p2, p0, Lcom/hangame/hsp/HSPConfiguration;->mGcmProjectNum:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v2, "HSP_USE_PUSH"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_5

    const-string v2, "true"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    iput-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mUsePush:Z

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const-string v2, "HSP_ENFORCE_APP2WEB_FACEBOOK"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_7

    const-string v2, "true"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_2
    iput-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mEnforceApp2WebFacebook:Z

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    const-string v2, "HSP_ENFORCE_APP2WEB_NAVER"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_9

    const-string v2, "true"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_3
    iput-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mEnforceApp2WebNaver:Z

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_3

    :cond_9
    const-string v2, "HSP_PUSH_NOTIFICATION_PRIORITY"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_e

    const-string v2, "MIN"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v0, -0x2

    iput v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mPushNotificationPriority:I

    goto :goto_0

    :cond_a
    const-string v2, "LOW"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v0, -0x1

    iput v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mPushNotificationPriority:I

    goto/16 :goto_0

    :cond_b
    const-string v2, "HIGH"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iput v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mPushNotificationPriority:I

    goto/16 :goto_0

    :cond_c
    const-string v0, "MAX"

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    iput v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mPushNotificationPriority:I

    goto/16 :goto_0

    :cond_d
    iput v1, p0, Lcom/hangame/hsp/HSPConfiguration;->mPushNotificationPriority:I

    goto/16 :goto_0

    :cond_e
    const-string v2, "HSP_USE_RODA_OASIS"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_10

    const-string v2, "true"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    :goto_4
    iput-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mUseRodaOasis:Z

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto :goto_4

    :cond_10
    const-string v2, "HSP_USE_JOGA"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_12

    const-string v2, "true"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    :goto_5
    iput-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mUseJoga:Z

    goto/16 :goto_0

    :cond_11
    move v0, v1

    goto :goto_5

    :cond_12
    const-string v2, "HSP_TOPBAR_COLOR"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_13

    iput-object p2, p0, Lcom/hangame/hsp/HSPConfiguration;->mTopbarColor:Ljava/lang/String;

    goto/16 :goto_0

    :cond_13
    const-string v2, "HSP_DEBUG_LEVEL"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_14

    invoke-virtual {p0, p2}, Lcom/hangame/hsp/HSPConfiguration;->setDebugLevel(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const-string v2, "HSP_TIMEOUT_TCP"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_15

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mTimeoutTCP:J

    goto/16 :goto_0

    :cond_15
    const-string v2, "HSP_TIMEOUT_HTTP"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_16

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mTimeoutHTTP:J

    goto/16 :goto_0

    :cond_16
    const-string v2, "HSP_LAUNCHING_REFRESH_TIMEINTERVAL"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_17

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mLncRefreshTimeInterval:J

    goto/16 :goto_0

    :cond_17
    const-string v2, "HSP_HEARTBEAT_TIMEINTERVAL"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_18

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mHeartBeatTimeInterval:J

    goto/16 :goto_0

    :cond_18
    const-string v2, "HSP_SHOW_UI_WELCOMEMESSAGE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_1a

    const-string v2, "true"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    :goto_6
    iput-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mShowUiWelcomeMessage:Z

    goto/16 :goto_0

    :cond_19
    move v0, v1

    goto :goto_6

    :cond_1a
    const-string v2, "HSP_SHOW_UI_VERSIONCHECK"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_1c

    const-string v2, "true"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :goto_7
    iput-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mShowUiVersionCheck:Z

    goto/16 :goto_0

    :cond_1b
    move v0, v1

    goto :goto_7

    :cond_1c
    const-string v2, "HSP_SHOW_UI_MAINTENANCE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_1e

    const-string v2, "true"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :goto_8
    iput-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mShowUiMaintenance:Z

    goto/16 :goto_0

    :cond_1d
    move v0, v1

    goto :goto_8

    :cond_1e
    const-string v2, "HSP_SHOW_UI_RECOMMENDGAME"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "true"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :goto_9
    iput-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mShowUiRecommendGame:Z

    goto/16 :goto_0

    :cond_1f
    move v0, v1

    goto :goto_9

    :cond_20
    const-string v2, "HSP_RESEND_FAILED_DATA"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_22

    const-string v2, "true"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    :goto_a
    iput-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mResendFailedData:Z

    goto/16 :goto_0

    :cond_21
    move v0, v1

    goto :goto_a

    :cond_22
    const-string v2, "HSP_SUSPEND_DELAY_TIME"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v0, :cond_23

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mSuspendDelayTime:J

    goto/16 :goto_0

    :cond_23
    const-string v2, "HSP_ENFORCED_DEVICE_LOGIN"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mEnforcedDeviceLogin:Z

    goto/16 :goto_0

    :cond_24
    const-string v2, "HSP_ENFORCED_GUEST_LOGIN"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mEnforcedGuestLogin:Z

    goto/16 :goto_0

    :cond_25
    const-string v2, "HSP_USE_AUTOSUSPEND"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mUseAutoSuspend:Z

    goto/16 :goto_0

    :cond_26
    const-string v2, "HSP_NELO_DEBUG_LEVEL"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    iput-object p2, p0, Lcom/hangame/hsp/HSPConfiguration;->mNeloLogLvl:Ljava/lang/String;

    goto/16 :goto_0

    :cond_27
    const-string v2, "HSP_USE_NELO"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    iput-object p2, p0, Lcom/hangame/hsp/HSPConfiguration;->mUseNelo:Ljava/lang/String;

    goto/16 :goto_0

    :cond_28
    const-string v2, "HSP_LOGCRASH_APPKEY"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    iput-object p2, p0, Lcom/hangame/hsp/HSPConfiguration;->mTLogAppKey:Ljava/lang/String;

    goto/16 :goto_0

    :cond_29
    const-string v2, "HSP_LOGIN_IDP"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iput-object p2, p0, Lcom/hangame/hsp/HSPConfiguration;->mLoginIdp:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2a
    const-string v2, "GMESSENGER_SERVER_ADDR"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iput-object p2, p0, Lcom/hangame/hsp/HSPConfiguration;->mGmessengerAddress:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2b
    const-string v2, "GMESSENGER_SERVER_ADDR_PORT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mGmessengerAddressPort:I

    goto/16 :goto_0

    :cond_2c
    const-string v2, "GMESSENGER_SERVER_ADDR_SSL_PORT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mGmessengerAddressSslPort:I

    goto/16 :goto_0

    :cond_2d
    const-string v2, "HSP_USE_GMESSENGER"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string v2, "true"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    :goto_b
    iput-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mUseGmessenger:Z

    goto/16 :goto_0

    :cond_2e
    move v0, v1

    goto :goto_b

    :cond_2f
    const-string v1, "HSP_USE_WEBVIEW_HARDWARE_ACCELERATE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v0, "true"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mWebviewHardwareAccelerate:Z

    goto/16 :goto_0

    :cond_30
    const-string v1, "HSP_RETRY_TIMES"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_31

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mRetryTimes:I

    goto/16 :goto_0

    :cond_31
    const-string v1, "HSP_TRANSFERKEY_VALID_TIME"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mTransferKeyValidTime:I

    goto/16 :goto_0
.end method

.method private setShowUiRecommendGame(Z)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowUiRecommendGame("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/HSPConfiguration;->isHSPInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mShowUiRecommendGame:Z

    goto :goto_0
.end method


# virtual methods
.method public getAddressLaunching()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mAddressLaunching:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigurationItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mConfigurationItemMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDebugLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mDebugLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getGcmProjectNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mGcmProjectNum:Ljava/lang/String;

    return-object v0
.end method

.method public getGmessengerAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mGmessengerAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mGmessengerAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public getGmessengerAddressPort()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mGmessengerAddressPort:I

    return v0
.end method

.method public getGmessengerAddressSslPort()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mGmessengerAddressSslPort:I

    return v0
.end method

.method public getHeartBeatTimeInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mHeartBeatTimeInterval:J

    return-wide v0
.end method

.method public getLaunchingZone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mLaunchingZone:Ljava/lang/String;

    return-object v0
.end method

.method public getLncRefreshTimeInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mLncRefreshTimeInterval:J

    return-wide v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getLogType()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isExistLaunchingInfo()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mTLogAppKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "HSPConfiguration"

    const-string v1, "LOGTYPE_NELO 1"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "nelo"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "HSPConfiguration"

    const-string v1, "LOGTYPE_TLOG 1"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "logncrash"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLogType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logncrash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HSPConfiguration"

    const-string v1, "LOGTYPE_TLOG 2"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "logncrash"

    goto :goto_0

    :cond_2
    const-string v0, "HSPConfiguration"

    const-string v1, "LOGTYPE_NELO 2"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "nelo"

    goto :goto_0
.end method

.method public getLoginIdp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mLoginIdp:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mLoginIdp:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMarketCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mMarketCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNeloLogLvl()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mNeloLogLvl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getNeloLogLevel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mNeloLogLvl:Ljava/lang/String;

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mNeloLogLvl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "ERROR"

    iput-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mNeloLogLvl:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mNeloLogLvl:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mNeloLogLvl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPushNotificationPriority()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mPushNotificationPriority:I

    return v0
.end method

.method public getRetryTimes()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mRetryTimes:I

    return v0
.end method

.method public getSuspendDelayTime()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mSuspendDelayTime:J

    return-wide v0
.end method

.method public getTLogAppKey()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isExistLaunchingInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getTLogAppkey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mTLogAppKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mTLogAppKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTLogLevel()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isExistLaunchingInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getTLogLevel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "DEBUG"

    goto :goto_0
.end method

.method public getTimeoutHTTP()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mTimeoutHTTP:J

    return-wide v0
.end method

.method public getTimeoutTCP()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mTimeoutTCP:J

    return-wide v0
.end method

.method public getTopbarColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mTopbarColor:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferKeyValidTime()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mTransferKeyValidTime:I

    return v0
.end method

.method public isEnforceApp2WebFacebook()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mEnforceApp2WebFacebook:Z

    return v0
.end method

.method public isEnforceApp2WebNaver()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mEnforceApp2WebNaver:Z

    return v0
.end method

.method public isEnforcedDeviceLogin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mEnforcedDeviceLogin:Z

    return v0
.end method

.method public isEnforcedGuestLogin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mEnforcedGuestLogin:Z

    return v0
.end method

.method public isLineType()Z
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mPackageType:Ljava/lang/String;

    const-string v1, "LINE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNaverType()Z
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mPackageType:Ljava/lang/String;

    const-string v1, "NAVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNeloHspLogUse()Z
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mUseNelo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isNeloHspLogUse()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "true"

    iget-object v1, p0, Lcom/hangame/hsp/HSPConfiguration;->mUseNelo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isOneBuildType()Z
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mPackageType:Ljava/lang/String;

    const-string v1, "ONEBUILD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRealLaunchingZone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mRealLaunchingZone:Z

    return v0
.end method

.method public isResendFailedData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mResendFailedData:Z

    return v0
.end method

.method public isShowNickNm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mShowNickNm:Z

    return v0
.end method

.method public isShowUiMaintenance()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mShowUiMaintenance:Z

    return v0
.end method

.method public isShowUiVersionCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mShowUiVersionCheck:Z

    return v0
.end method

.method public isShowUiWelcomeMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mShowUiWelcomeMessage:Z

    return v0
.end method

.method public isTLogHspLog()Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->isExistLaunchingInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getTLogHspLog()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HSPConfiguration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lncTLogHspLog:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isToastHangameType()Z
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mPackageType:Ljava/lang/String;

    const-string v1, "TOAST_HAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isToastType()Z
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mPackageType:Ljava/lang/String;

    const-string v1, "TOAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUseAutoSuspend()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mUseAutoSuspend:Z

    return v0
.end method

.method public isUseGmessenger()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mUseGmessenger:Z

    return v0
.end method

.method public isUseJoga()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mUseJoga:Z

    return v0
.end method

.method public isUsePush()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mUsePush:Z

    return v0
.end method

.method public isUseRodaOasis()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mUseRodaOasis:Z

    return v0
.end method

.method public isWebviewHardwareAccelerate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mWebviewHardwareAccelerate:Z

    return v0
.end method

.method public setAddressLaunching(Ljava/lang/String;)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAddressLaunching("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/HSPConfiguration;->isHSPInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mAddressLaunching:Ljava/lang/String;

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mAddressLaunching:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hangame/hsp/HSPConfiguration;->mAddressLaunching:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mAddressLaunching:Ljava/lang/String;

    goto :goto_0
.end method

.method public setConfigurationItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConfigurationItem(key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/HSPConfiguration;->isHSPInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mConfigurationItemMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDebugLevel(Ljava/lang/String;)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDebugLevel("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/HSPConfiguration;->isHSPInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mDebugLevel:Ljava/lang/String;

    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mDebugLevel:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/debug/DebugManager;->setDebugLevel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnforcedDeviceLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mEnforcedDeviceLogin:Z

    return-void
.end method

.method public setHeartBeatTimeInterval(J)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHeartBeatTimeInterval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/HSPConfiguration;->isHSPInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-wide p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mHeartBeatTimeInterval:J

    goto :goto_0
.end method

.method public setIsUseJoga(Z)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsUseJoga("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/HSPConfiguration;->isHSPInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mUseJoga:Z

    goto :goto_0
.end method

.method public setIsUsePush(Z)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsUsePush("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/HSPConfiguration;->isHSPInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mUsePush:Z

    goto :goto_0
.end method

.method public setIsUseRodaOasis(Z)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsUseRodaOasis("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mUseRodaOasis:Z

    return-void
.end method

.method public setLaunchingZone(Ljava/lang/String;)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLaunchingZone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/HSPConfiguration;->isHSPInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPConfiguration;->launchingZoneMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPConfiguration$LaunchingZoneData;

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mLaunchingZone:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/HSPConfiguration$LaunchingZoneData;->access$000(Lcom/hangame/hsp/HSPConfiguration$LaunchingZoneData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/HSPConfiguration;->setAddressLaunching(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hangame/hsp/HSPConfiguration$LaunchingZoneData;->access$100(Lcom/hangame/hsp/HSPConfiguration$LaunchingZoneData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/HSPConfiguration;->setLocale(Ljava/lang/String;)V

    const-string v1, "true"

    invoke-static {v0}, Lcom/hangame/hsp/HSPConfiguration$LaunchingZoneData;->access$200(Lcom/hangame/hsp/HSPConfiguration$LaunchingZoneData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hangame/hsp/HSPConfiguration;->mRealLaunchingZone:Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid lanching zone setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HSPConfiguration"

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setLncRefreshTimeInterval(J)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLncRefreshTimeInterval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/HSPConfiguration;->isHSPInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-wide p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mLncRefreshTimeInterval:J

    goto :goto_0
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocale("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/HSPConfiguration;->isHSPInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mLocale:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMarketCode(Ljava/lang/String;)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMarketCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/HSPConfiguration;->isHSPInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mMarketCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPackageType(Ljava/lang/String;)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPackageType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mPackageType:Ljava/lang/String;

    return-void
.end method

.method public setResendFailedData(Z)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResendFailedData("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/HSPConfiguration;->isHSPInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mResendFailedData:Z

    goto :goto_0
.end method

.method public setShowNickNm(Z)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBridgeToastWithNickNm("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mShowNickNm:Z

    return-void
.end method

.method public setShowUiMaintenance(Z)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowUiMaintenance("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/HSPConfiguration;->isHSPInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mShowUiMaintenance:Z

    goto :goto_0
.end method

.method public setShowUiVersionCheck(Z)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowUiVersionCheck("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/HSPConfiguration;->isHSPInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mShowUiVersionCheck:Z

    goto :goto_0
.end method

.method public setSuspendDelayTime(J)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSuspendDelayTime("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/HSPConfiguration;->isHSPInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-wide p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mSuspendDelayTime:J

    goto :goto_0
.end method

.method public setTimeoutHTTP(J)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimeoutHTTP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/HSPConfiguration;->isHSPInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-wide p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mTimeoutHTTP:J

    goto :goto_0
.end method

.method public setTimeoutTCP(J)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimeoutTCP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/HSPConfiguration;->isHSPInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-wide p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mTimeoutTCP:J

    goto :goto_0
.end method

.method public setTransferKeyValidTime(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mTransferKeyValidTime:I

    return-void
.end method

.method public setUiWelcomeMessage(Z)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUiWelcomeMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/HSPConfiguration;->isHSPInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mShowUiWelcomeMessage:Z

    goto :goto_0
.end method

.method public setUseAutoSuspend(Z)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUseAutoSuspend("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mUseAutoSuspend:Z

    return-void
.end method

.method public setWebviewHardwareAccelerate(Z)V
    .locals 3

    const-string v0, "HSPConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWebviewHardwareAccelerate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/hangame/hsp/HSPConfiguration;->mWebviewHardwareAccelerate:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSPConfiguration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/HSPConfiguration;->mConfigurationItemMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
