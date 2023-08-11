.class public Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ToastPromotion"

.field private static _sInstance:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;


# instance fields
.field private buttonImageFileName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private deviceId:Ljava/lang/String;

.field private installedPackageList:Ljava/util/List;

.field private isDisplayButton:Z

.field isUseLoggingUserId:Z

.field mCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

.field private missionKeyVal:Ljava/lang/String;

.field private pm:Landroid/content/pm/PackageManager;

.field private toastpromotionInfo:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-direct {v0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;-><init>()V

    sput-object v0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->_sInstance:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->buttonImageFileName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->isDisplayButton:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->deviceId:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->installedPackageList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;I)Lcom/toast/android/analytics/model/RequestData;
    .locals 1

    invoke-direct {p0, p1}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->makePromotionExecData(I)Lcom/toast/android/analytics/model/RequestData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->missionKeyVal:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->missionKeyVal:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->deviceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;)Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->toastpromotionInfo:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;

    return-object v0
.end method

.method static synthetic access$302(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;)Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->toastpromotionInfo:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;

    return-object p1
.end method

.method static synthetic access$402(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->isDisplayButton:Z

    return p1
.end method

.method static synthetic access$500(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->buttonImageFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->_sInstance:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    return-object v0
.end method

.method private makePromotionExecData(I)Lcom/toast/android/analytics/model/RequestData;
    .locals 4

    invoke-static {}, Lcom/toast/android/analytics/common/config/Settings;->getInstance()Lcom/toast/android/analytics/common/config/Settings;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/toast/android/analytics/common/utils/TransactionIdCounter;->getInstance()Lcom/toast/android/analytics/common/utils/TransactionIdCounter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/toast/android/analytics/common/utils/TransactionIdCounter;->getTransactionId()J

    move-result-wide v2

    long-to-int v2, v2

    const-string v3, "transactionId"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "header"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userId"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCampaignUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appId"

    const-string v3, "appId"

    invoke-virtual {v0, v3}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "promoId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceId"

    iget-object v3, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->isUseLoggingUserId:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string v1, "loggingUserId"

    const-string v3, "campaign_userId"

    invoke-virtual {v0, v3}, Lcom/toast/android/analytics/common/config/Settings;->getObjectForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v0, "countryCode"

    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "os"

    const-string v1, "aos"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "campaignId"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/toast/android/analytics/model/RequestData;->createWithMapData(Ljava/util/Map;)Lcom/toast/android/analytics/model/RequestData;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "loggingUserId"

    iget-object v1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ToastPromotion"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private notifyCampaignShowToServer(I)V
    .locals 3

    const-string v0, "ToastPromotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotifyCampaignShowToServer - promotionID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;

    invoke-direct {v1, p0, p1}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;-><init>(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v1, "ToastPromotion"

    const-string v3, "Save Image File Success!"

    invoke-static {v1, v3}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v3

    :goto_1
    :try_start_3
    const-string v3, "ToastPromotion"

    const-string v4, "Save Image File Exception!"

    invoke-static {v3, v4}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public getInstalledPackageList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->installedPackageList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPromotionButtonImagePath()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->isDisplayButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->buttonImageFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/toast/android/analytics/common/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "ToastPromotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot execute promotion : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->isDisplayButton:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->buttonImageFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->notice(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCanExecutePromotion()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ToastPromotion"

    const-string v1, "Cannot execute promotion : adid tracking disabled"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->notice(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->buttonImageFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getToastPromotionInfo(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->isUseLoggingUserId:Z

    new-instance v0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;

    invoke-direct {v0, p0, p1}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;-><init>(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Z)V

    invoke-virtual {v0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$NetworkTask;->start()V

    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->pm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public isInstalledPackage(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->installedPackageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->pm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->installedPackageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public launchPromotionPage(Landroid/app/Activity;)I
    .locals 3

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ToastPromotion"

    const-string v1, "SDK is not initialized. (\'initializeSDK\' API)"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x8000

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/toast/android/analytics/common/utils/InformationUtil;->getCampaignUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "ToastPromotion"

    const-string v1, "Campaign User ID is empty. (\'setUserId\' API)"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7007

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->toastpromotionInfo:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;

    if-nez v0, :cond_2

    const v0, 0x8004

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->installedPackageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->pm:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->pm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->installedPackageList:Ljava/util/List;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ToastPromotion"

    const-string v2, "Collecting packagename is failed"

    invoke-static {v1, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    invoke-static {}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->getInstance()Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->visibilityChangeCallback(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/toast/android/analytics/PromotionActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "promotion_page_url"

    iget-object v2, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->toastpromotionInfo:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;

    invoke-virtual {v2}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->getLandingUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->toastpromotionInfo:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;

    invoke-virtual {v0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->getPromoId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->notifyCampaignShowToServer(I)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/toast/android/analytics/common/Analytics;->traceRewardClick(Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnCampaignListener(Lcom/toast/android/analytics/GameAnalytics$CampaignListener;)V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->mCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->mCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    :cond_0
    iput-object p1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->mCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    return-void
.end method

.method public visibilityChangeCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->mCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;->mCampaignListener:Lcom/toast/android/analytics/GameAnalytics$CampaignListener;

    invoke-interface {v0, p1}, Lcom/toast/android/analytics/GameAnalytics$CampaignListener;->onPromotionVisibilityChanged(Z)V

    :cond_0
    return-void
.end method
