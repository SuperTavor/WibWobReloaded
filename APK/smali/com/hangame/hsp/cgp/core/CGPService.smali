.class public Lcom/hangame/hsp/cgp/core/CGPService;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "CGPService"

.field private static instance:Lcom/hangame/hsp/cgp/core/CGPService;

.field private static mDeviceId:Ljava/lang/String;

.field private static mDeviceIdForBi:Ljava/lang/String;


# instance fields
.field private mCgpResponse:Lcom/hangame/hsp/cgp/response/CGPResponse;

.field private mCgpServerInfo:Lcom/hangame/hsp/cgp/response/CGPServerInfo;

.field private mImageInfo:Ljava/util/HashMap;

.field private mMemberNo:J

.field private mPromotionInfo:Lcom/hangame/hsp/cgp/model/PromotionInfo;

.field private mPromotionMap:Ljava/util/HashMap;

.field private mWebViewTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/cgp/core/CGPService;->mDeviceId:Ljava/lang/String;

    sput-object v0, Lcom/hangame/hsp/cgp/core/CGPService;->mDeviceIdForBi:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mImageInfo:Ljava/util/HashMap;

    const-string v0, "Hangame Event"

    iput-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mWebViewTitle:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mMemberNo:J

    const-string v0, "cgp.promotion"

    const-string v1, "com.hangame.hsp.ui.view.cgp.PromotionWebView"

    const-string v2, "_gnbShow=false"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/cgp/core/CGPService;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/hangame/hsp/cgp/core/CGPService;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hangame/hsp/cgp/core/CGPService;)J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mMemberNo:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/hangame/hsp/cgp/core/CGPService;)Lcom/hangame/hsp/cgp/response/CGPServerInfo;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpServerInfo:Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/cgp/core/CGPService;->mDeviceIdForBi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/hangame/hsp/cgp/core/CGPService;->mDeviceIdForBi:Ljava/lang/String;

    return-object p0
.end method

.method private checkSuccess(ZLjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "CGPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "CGPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkValidActivity(Landroid/app/Activity;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "CGPService"

    const-string v1, "Activity is closing."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Activity is closing."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "CGPService"

    const-string v2, "Failure to check Valid Activity."

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public static getAdId(Lcom/hangame/hsp/HSPCallback$HSPResultWithMapCB;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/hangame/hsp/cgp/core/CGPService;->mDeviceIdForBi:Ljava/lang/String;

    invoke-static {v1}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "CGPService"

    const-string v2, "Already we have it"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ADID"

    sget-object v2, Lcom/hangame/hsp/cgp/core/CGPService;->mDeviceIdForBi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/hangame/hsp/cgp/core/CGPService$7;

    invoke-direct {v1, p0, v0}, Lcom/hangame/hsp/cgp/core/CGPService$7;-><init>(Lcom/hangame/hsp/HSPCallback$HSPResultWithMapCB;Ljava/util/HashMap;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CGPService"

    const-string v2, "Succes to check Google Play Service SDK"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/cgp/core/CGPService$8;

    invoke-direct {v1, v0, p0}, Lcom/hangame/hsp/cgp/core/CGPService$8;-><init>(Ljava/util/HashMap;Lcom/hangame/hsp/HSPCallback$HSPResultWithMapCB;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/hangame/hsp/cgp/core/CGPService$9;

    invoke-direct {v1, p0, v0}, Lcom/hangame/hsp/cgp/core/CGPService$9;-><init>(Lcom/hangame/hsp/HSPCallback$HSPResultWithMapCB;Ljava/util/HashMap;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getCGPServerInfo()Lcom/hangame/hsp/cgp/response/CGPServerInfo;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getCGPInfoMap()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "serverUrl"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "was"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    invoke-direct {v3, v0, v1}, Lcom/hangame/hsp/cgp/response/CGPServerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CGPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CGP Server Info : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CGPService"

    const-string v3, "CGP Server Info parsing error"

    invoke-static {v1, v3, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    goto :goto_0
.end method

.method private getEventPageUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "&"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "memberNo"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ticket"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getTicket()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "?"

    goto :goto_0
.end method

.method public static getInstance()Lcom/hangame/hsp/cgp/core/CGPService;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/cgp/core/CGPService;->instance:Lcom/hangame/hsp/cgp/core/CGPService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/cgp/core/CGPService;

    invoke-direct {v0}, Lcom/hangame/hsp/cgp/core/CGPService;-><init>()V

    sput-object v0, Lcom/hangame/hsp/cgp/core/CGPService;->instance:Lcom/hangame/hsp/cgp/core/CGPService;

    :cond_0
    sget-object v0, Lcom/hangame/hsp/cgp/core/CGPService;->instance:Lcom/hangame/hsp/cgp/core/CGPService;

    return-object v0
.end method

.method private isCgpInitialized()Z
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mMemberNo:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const-string v1, "CGPService"

    const-string v2, "Not login yet."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpServerInfo:Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    if-nez v1, :cond_1

    const-string v1, "CGPService"

    const-string v2, "CGPServerInfo has not initialized."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private launchCGP(Landroid/app/Activity;Lcom/hangame/hsp/cgp/response/CGPData;Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;)Z
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpResponse:Lcom/hangame/hsp/cgp/response/CGPResponse;

    invoke-virtual {v1, p3}, Lcom/hangame/hsp/cgp/response/CGPResponse;->getCurPromotionStatus(Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;)Lcom/hangame/hsp/cgp/model/PromotionState;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/cgp/model/PromotionState;->CGP_NONE:Lcom/hangame/hsp/cgp/model/PromotionState;

    if-ne v1, v2, :cond_0

    const-string v1, "CGPService"

    const-string v2, "Not expected to call this API."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getPromotionType()I

    move-result v1

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->PROMOTION:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/hangame/hsp/cgp/core/CGPService;->launchCompletePage(Landroid/app/Activity;Lcom/hangame/hsp/cgp/response/CGPData;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getId()I

    move-result v1

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getRewardGameNo()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/hangame/hsp/cgp/core/CGPService;->requestPromotionStart(II)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send promotion status message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/hangame/hsp/cgp/constant/CGPType$CGPStatus;->PROMOTION_REQEUSTED:Lcom/hangame/hsp/cgp/constant/CGPType$CGPStatus;

    invoke-virtual {v3}, Lcom/hangame/hsp/cgp/constant/CGPType$CGPStatus;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/hangame/hsp/cgp/core/CGPService;->checkSuccess(ZLjava/lang/String;)V

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getTypeCode()I

    move-result v1

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->BUTTON:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpServerInfo:Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/response/CGPServerInfo;->getCgpWasUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/getPromotionPage.nhn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "CGPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webUrl : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getId()I

    move-result v2

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/cgp/core/CGPService;->checkGameInstallation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "y"

    :goto_1
    invoke-static {p1}, Lcom/hangame/hsp/cgp/processor/ScreenUtil;->getScreenOrientation(Landroid/app/Activity;)Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;->getValue()I

    move-result v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "promoId"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "memberNo"

    iget-wide v6, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mMemberNo:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "installedCheck"

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screenOrientation"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sendTitle"

    const-string v2, "n"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CGPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Promotion URL : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mWebViewTitle:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/hangame/hsp/cgp/core/CGPService;->launchWebViewActivity(Ljava/lang/String;I)Z

    move-result v0

    goto/16 :goto_0

    :cond_2
    const-string v0, "n"

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getTypeCode()I

    move-result v1

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->BANNER:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_4

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getTypeCode()I

    move-result v1

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->POPUP:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_4

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getTypeCode()I

    move-result v1

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_5

    :cond_4
    invoke-virtual {p0, p2}, Lcom/hangame/hsp/cgp/core/CGPService;->launchStore(Lcom/hangame/hsp/cgp/response/CGPData;)Z

    move-result v0

    goto/16 :goto_0

    :cond_5
    const-string v1, "CGPService"

    const-string v2, "Launching promotion event page fail."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private launchCompletePage(Landroid/app/Activity;Lcom/hangame/hsp/cgp/response/CGPData;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/hangame/hsp/cgp/core/CGPService;->checkValidActivity(Landroid/app/Activity;)V

    if-nez p2, :cond_0

    const-string v1, "CGPService"

    const-string v2, "Launching promotion completed page fail."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getTypeCode()I

    move-result v1

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->BANNER:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getTypeCode()I

    move-result v1

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->POPUP:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getTypeCode()I

    move-result v1

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getTypeCode()I

    move-result v1

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->FREECHARGE:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v1, "CGPService"

    const-string v2, "This API is only for the button type promotion."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CGPService"

    const-string v3, "Fail to launch Complete Page"

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpServerInfo:Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/response/CGPServerInfo;->getCgpWasUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/getCompletePage.nhn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getId()I

    move-result v2

    invoke-static {p1}, Lcom/hangame/hsp/cgp/processor/ScreenUtil;->getScreenOrientation(Landroid/app/Activity;)Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;->getValue()I

    move-result v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "promoId"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenOrientation"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sendTitle"

    const-string v5, "n"

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CGPService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Promotion Complete URL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mWebViewTitle:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/hangame/hsp/cgp/core/CGPService;->launchWebViewActivity(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_0
.end method

.method private launchIGPbyBrowser(Landroid/app/Activity;Lcom/hangame/hsp/cgp/response/CGPData;)Z
    .locals 3

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getId()I

    move-result v0

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getRewardGameNo()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/hangame/hsp/cgp/core/CGPService;->requestPromotionStart(II)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send promotion status message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$CGPStatus;->PROMOTION_REQEUSTED:Lcom/hangame/hsp/cgp/constant/CGPType$CGPStatus;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$CGPStatus;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/hangame/hsp/cgp/core/CGPService;->checkSuccess(ZLjava/lang/String;)V

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getPromotionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hangame/hsp/cgp/core/CGPService;->getEventPageUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method private launchIGPbyWebKit(Lcom/hangame/hsp/cgp/response/CGPData;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/hangame/hsp/cgp/response/CGPData;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/hangame/hsp/cgp/response/CGPData;->getRewardGameNo()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/hangame/hsp/cgp/core/CGPService;->requestPromotionStart(II)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send promotion status message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$CGPStatus;->PROMOTION_REQEUSTED:Lcom/hangame/hsp/cgp/constant/CGPType$CGPStatus;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$CGPStatus;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/hangame/hsp/cgp/core/CGPService;->checkSuccess(ZLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/hangame/hsp/cgp/response/CGPData;->getPromotionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hangame/hsp/cgp/core/CGPService;->getEventPageUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hangame/hsp/cgp/response/CGPData;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mWebViewTitle:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hangame/hsp/cgp/core/CGPService;->launchWebViewActivity(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private launchWebViewActivity(Ljava/lang/String;I)Z
    .locals 3

    :try_start_0
    const-string v0, "cgp.promotion"

    invoke-static {v0}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "webUrl"

    invoke-virtual {v0, v1, p1}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_title"

    iget-object v2, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mWebViewTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_orientation"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "CGPService"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "CGPService"

    const-string v2, "Failure to start the Promotion Web Viewer Activity."

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public checkGameInstallation(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/hangame/hsp/util/AppUtil;->isExistApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, ""

    invoke-static {v0, p1}, Lcom/hangame/hsp/util/AppUtil;->isExistApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public checkPromotion(Landroid/content/Context;Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;)Z
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getState()Lcom/hangame/hsp/HSPState;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/HSPState;->HSP_STATE_ONLINE:Lcom/hangame/hsp/HSPState;

    if-eq v1, v2, :cond_0

    const-string v1, "CGPSERVICE"

    const v2, 0x90002

    const-string v3, "user should login with HSP"

    invoke-static {v1, v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v1, p1, v2}, Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;->onCheckPromotion(Lcom/hangame/hsp/HSPResult;Ljava/lang/Object;Lcom/hangame/hsp/cgp/model/PromotionState;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mMemberNo:J

    const-string v1, "CGPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "memberNo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mMemberNo:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mMemberNo:J

    cmp-long v1, v2, v8

    if-gtz v1, :cond_1

    const-string v1, "CGPService"

    const-string v2, "Not login yet."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CGPSERVICE"

    const v2, 0x90002

    const-string v3, "user should login with HSP"

    invoke-static {v1, v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v1, p1, v2}, Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;->onCheckPromotion(Lcom/hangame/hsp/HSPResult;Ljava/lang/Object;Lcom/hangame/hsp/cgp/model/PromotionState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CGPService"

    const-string v3, "Fail to run the requestPromotion."

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/hangame/hsp/cgp/core/CGPService;->getCGPServerInfo()Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpServerInfo:Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    iget-object v1, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpServerInfo:Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    if-nez v1, :cond_2

    const-string v1, "CGPSERVICE"

    const v2, 0x90003

    const-string v3, "there is something wrong with Network"

    invoke-static {v1, v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v1, p1, v2}, Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;->onCheckPromotion(Lcom/hangame/hsp/HSPResult;Ljava/lang/Object;Lcom/hangame/hsp/cgp/model/PromotionState;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v7, :cond_3

    const-string v1, "CGPService"

    const-string v2, "Google Play Service is unstable or not install"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getEncryptMacAddress(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/hangame/hsp/cgp/core/CGPService;->mDeviceId:Ljava/lang/String;

    const-string v2, "deviceId"

    sget-object v3, Lcom/hangame/hsp/cgp/core/CGPService;->mDeviceId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "memberNo"

    iget-wide v4, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mMemberNo:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gameNo"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gameVersion"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getGameVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "deviceInfo"

    sget-object v3, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;->ANDROID:Lcom/hangame/hsp/cgp/constant/CGPType$OSType;

    invoke-virtual {v3}, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "/CGPServer/CheckPromotion"

    new-instance v2, Lcom/hangame/hsp/cgp/request/HttpRequest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpServerInfo:Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    invoke-virtual {v5}, Lcom/hangame/hsp/cgp/response/CGPServerInfo;->getCgpServerUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/hangame/hsp/cgp/request/HttpRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "CGPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPromotion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/request/HttpRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;

    const-wide/16 v4, 0x0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;)V

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    move v0, v7

    goto/16 :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const-string v2, "CGPService"

    const-string v3, "there is something wrong with Google Play Service"

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/hangame/hsp/cgp/core/CGPService$1;

    invoke-direct {v2, p0, v1}, Lcom/hangame/hsp/cgp/core/CGPService$1;-><init>(Lcom/hangame/hsp/cgp/core/CGPService;I)V

    invoke-static {v2}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v1, "CGPSERVICE"

    const v2, 0x90004

    const-string v3, "we should let User update Google Play Service"

    invoke-static {v1, v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v1, p1, v2}, Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;->onCheckPromotion(Lcom/hangame/hsp/HSPResult;Ljava/lang/Object;Lcom/hangame/hsp/cgp/model/PromotionState;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "CGPService"

    const-string v2, "Succes to check Google Play Service SDK"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/cgp/core/CGPService$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/hangame/hsp/cgp/core/CGPService$2;-><init>(Lcom/hangame/hsp/cgp/core/CGPService;Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public checkPromotion(Landroid/content/Context;Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionMapCB;)Z
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getState()Lcom/hangame/hsp/HSPState;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/HSPState;->HSP_STATE_ONLINE:Lcom/hangame/hsp/HSPState;

    if-eq v1, v2, :cond_0

    const-string v1, "CGPSERVICE"

    const v2, 0x90002

    const-string v3, "user should login with HSP"

    invoke-static {v1, v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v1, p1, v2}, Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionMapCB;->onCheckPromotion(Lcom/hangame/hsp/HSPResult;Ljava/lang/Object;Ljava/util/HashMap;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mMemberNo:J

    const-string v1, "CGPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "memberNo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mMemberNo:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mMemberNo:J

    cmp-long v1, v2, v8

    if-gtz v1, :cond_1

    const-string v1, "CGPService"

    const-string v2, "Not login yet."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CGPSERVICE"

    const v2, 0x90002

    const-string v3, "user should login with HSP"

    invoke-static {v1, v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v1, p1, v2}, Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionMapCB;->onCheckPromotion(Lcom/hangame/hsp/HSPResult;Ljava/lang/Object;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CGPService"

    const-string v3, "Fail to run the requestPromotion."

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/hangame/hsp/cgp/core/CGPService;->getCGPServerInfo()Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpServerInfo:Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    iget-object v1, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpServerInfo:Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    if-nez v1, :cond_2

    const-string v1, "CGPSERVICE"

    const v2, 0x90003

    const-string v3, "there is something wrong with Network"

    invoke-static {v1, v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v1, p1, v2}, Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionMapCB;->onCheckPromotion(Lcom/hangame/hsp/HSPResult;Ljava/lang/Object;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v7, :cond_3

    const-string v1, "CGPService"

    const-string v2, "Google Play Service is unstable or not install"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getEncryptMacAddress(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/hangame/hsp/cgp/core/CGPService;->mDeviceId:Ljava/lang/String;

    const-string v2, "deviceId"

    sget-object v3, Lcom/hangame/hsp/cgp/core/CGPService;->mDeviceId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "memberNo"

    iget-wide v4, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mMemberNo:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gameNo"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gameVersion"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getGameVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "deviceInfo"

    sget-object v3, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;->ANDROID:Lcom/hangame/hsp/cgp/constant/CGPType$OSType;

    invoke-virtual {v3}, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "/CGPServer/CheckPromotion"

    new-instance v2, Lcom/hangame/hsp/cgp/request/HttpRequest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpServerInfo:Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    invoke-virtual {v5}, Lcom/hangame/hsp/cgp/response/CGPServerInfo;->getCgpServerUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/hangame/hsp/cgp/request/HttpRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "CGPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPromotion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/request/HttpRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;

    const-wide/16 v4, 0x0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLcom/hangame/hsp/cgp/HSPCGP$CheckPromotionMapCB;)V

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    move v0, v7

    goto/16 :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const-string v2, "CGPService"

    const-string v3, "there is something wrong with Google Play Service"

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/hangame/hsp/cgp/core/CGPService$3;

    invoke-direct {v2, p0, v1}, Lcom/hangame/hsp/cgp/core/CGPService$3;-><init>(Lcom/hangame/hsp/cgp/core/CGPService;I)V

    invoke-static {v2}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v1, "CGPSERVICE"

    const v2, 0x90004

    const-string v3, "we should let User update Google Play Service"

    invoke-static {v1, v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v1, p1, v2}, Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionMapCB;->onCheckPromotion(Lcom/hangame/hsp/HSPResult;Ljava/lang/Object;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "CGPService"

    const-string v2, "Succes to check Google Play Service SDK"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/cgp/core/CGPService$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/hangame/hsp/cgp/core/CGPService$4;-><init>(Lcom/hangame/hsp/cgp/core/CGPService;Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionMapCB;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public completeInstallPromotion(Landroid/content/Context;Lcom/hangame/hsp/cgp/model/PromotionItem;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/hangame/hsp/cgp/core/CGPService;->isCgpInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CGPService"

    const-string v2, "Not cgp initialized."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionType()I

    move-result v1

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->REWARD_INSTALL:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    const-string v1, "CGPService"

    const-string v2, "Not install reward. you should use only install reward"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CGPService"

    const-string v3, "Fail to run the requestSingleGameRewardCompleted."

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "memberNo"

    iget-wide v4, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mMemberNo:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gameNo"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "promotionId"

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "/CGPServer/ReqSingleGameRewardCompleted"

    new-instance v3, Lcom/hangame/hsp/cgp/request/HttpRequest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpServerInfo:Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    invoke-virtual {v5}, Lcom/hangame/hsp/cgp/response/CGPServerInfo;->getCgpServerUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Lcom/hangame/hsp/cgp/request/HttpRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "CGPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSingleGameInstallRewardCompleted "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/hangame/hsp/cgp/request/HttpRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/cgp/command/CompleteInstallPromotionCommand;

    const-wide/16 v4, 0x0

    invoke-direct {v1, v3, p1, v4, v5}, Lcom/hangame/hsp/cgp/command/CompleteInstallPromotionCommand;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public completePromotion(Landroid/content/Context;Lcom/hangame/hsp/cgp/model/PromotionItem;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/hangame/hsp/cgp/core/CGPService;->isCgpInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CGPService"

    const-string v2, "Not cgp initialized."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionType()I

    move-result v1

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->REWARD:Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$PromotionType;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    const-string v1, "CGPService"

    const-string v2, "Not install reward. you should use only install reward"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CGPService"

    const-string v3, "Fail to run the requestSingleGameRewardCompleted."

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "memberNo"

    iget-wide v4, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mMemberNo:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gameNo"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "promotionId"

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "/CGPServer/ReqSingleGameRewardCompleted"

    new-instance v3, Lcom/hangame/hsp/cgp/request/HttpRequest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpServerInfo:Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    invoke-virtual {v5}, Lcom/hangame/hsp/cgp/response/CGPServerInfo;->getCgpServerUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Lcom/hangame/hsp/cgp/request/HttpRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "CGPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSingleGameRewardCompleted "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/hangame/hsp/cgp/request/HttpRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/cgp/command/CompletePromotionCommand;

    const-wide/16 v4, 0x0

    invoke-direct {v1, v3, p1, v4, v5}, Lcom/hangame/hsp/cgp/command/CompletePromotionCommand;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public deletePromotion(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/hangame/hsp/cgp/core/CGPService;->isCgpInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CGPService"

    const-string v2, "Not cgp initialized."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "memberNo"

    iget-wide v4, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mMemberNo:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/hangame/hsp/cgp/request/HttpRequest;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/hangame/hsp/cgp/request/HttpRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "CGPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeletePromotionCommand"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/request/HttpRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/cgp/command/DeletePromotionCommand;

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, p1, v4, v5}, Lcom/hangame/hsp/cgp/command/DeletePromotionCommand;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CGPService"

    const-string v3, "Fail to run the deletePromotion."

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCgpResponse()Lcom/hangame/hsp/cgp/response/CGPResponse;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpResponse:Lcom/hangame/hsp/cgp/response/CGPResponse;

    return-object v0
.end method

.method public getCgpServerInfo()Lcom/hangame/hsp/cgp/response/CGPServerInfo;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpServerInfo:Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    return-object v0
.end method

.method public getImageInfo(Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mImageInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public getImageInfo()[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/cgp/core/CGPService;->getImageInfo(Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionInfo()Lcom/hangame/hsp/cgp/model/PromotionInfo;
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mPromotionMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mPromotionMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mPromotionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mPromotionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mPromotionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->FREECHARGE:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mPromotionInfo:Lcom/hangame/hsp/cgp/model/PromotionInfo;

    return-object v0
.end method

.method public getPromotionInfo(Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mPromotionMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mPromotionMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mPromotionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mPromotionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mPromotionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->FREECHARGE:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mPromotionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getPromotionMap()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mPromotionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public launchFreeCharge(Landroid/app/Activity;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/hangame/hsp/cgp/core/CGPService;->isCgpInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CGPService"

    const-string v2, "Not cgp initialized."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/hangame/hsp/cgp/core/CGPService;->checkValidActivity(Landroid/app/Activity;)V

    invoke-static {}, Lcom/hangame/hsp/util/NetworkUtil;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CGPService"

    const-string v2, "Network is unavailable."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "hsp.common.error.msg.senddata"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/cgp/core/CGPService$6;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/cgp/core/CGPService$6;-><init>(Lcom/hangame/hsp/cgp/core/CGPService;)V

    invoke-static {v1, v2}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CGPService"

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/hangame/hsp/cgp/processor/ScreenUtil;->getScreenOrientation(Landroid/app/Activity;)Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/processor/ScreenUtil$ScreenOrientationType;->getValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpServerInfo:Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    invoke-virtual {v3}, Lcom/hangame/hsp/cgp/response/CGPServerInfo;->getCgpWasUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/getFreeChargePage.nhn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "memberNo"

    iget-wide v6, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mMemberNo:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "gameNo"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "deviceInfo"

    sget-object v5, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;->ANDROID:Lcom/hangame/hsp/cgp/constant/CGPType$OSType;

    invoke-virtual {v5}, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "deviceId"

    invoke-static {}, Lcom/hangame/hsp/HSPUtil;->getUniqueDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "countryCode"

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "gameVersion"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hangame/hsp/HSPCore;->getGameVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "screenOrientation"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CGPService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Promotion URL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "cgp.promotion"

    invoke-static {v3}, Lcom/hangame/hsp/ui/HSPUiFactory;->getUiUri(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v3

    const-string v4, "webUrl"

    invoke-virtual {v3, v4, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_orientation"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v2, "CGPService"

    const-string v3, "Failure to start the Promotion Web Viewer Activity."

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public launchPromotion(Landroid/app/Activity;Lcom/hangame/hsp/cgp/model/PromotionItem;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/hangame/hsp/cgp/core/CGPService;->isCgpInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CGPService"

    const-string v2, "Not cgp initialized."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/hangame/hsp/cgp/core/CGPService;->checkValidActivity(Landroid/app/Activity;)V

    invoke-static {}, Lcom/hangame/hsp/util/NetworkUtil;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CGPService"

    const-string v2, "Network is unavailable."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "hsp.common.error.msg.senddata"

    invoke-static {v1}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hangame/hsp/cgp/core/CGPService$5;

    invoke-direct {v2, p0}, Lcom/hangame/hsp/cgp/core/CGPService$5;-><init>(Lcom/hangame/hsp/cgp/core/CGPService;)V

    invoke-static {v1, v2}, Lcom/hangame/hsp/ui/DialogManager;->showAlertDialogWithOkButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CGPService"

    const-string v3, "Launching promotion event page fail."

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getPromotionId()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CGPService"

    const-string v2, "there is no promotion."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->NORMAL:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/model/PromotionItem;->getTypeCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->ENDING:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->getValue()I

    move-result v2

    sget-object v3, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->FREECHARGE:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    invoke-virtual {v3}, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_5

    const-string v1, "CGPService"

    const-string v2, "freecharge reward is not for this API."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/hangame/hsp/cgp/core/CGPService;->launchFreeCharge(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;->FREECHARGE:Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpResponse:Lcom/hangame/hsp/cgp/response/CGPResponse;

    if-nez v2, :cond_6

    const-string v1, "CGPService"

    const-string v2, "PromotionResult is null."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpResponse:Lcom/hangame/hsp/cgp/response/CGPResponse;

    invoke-virtual {v2, p2, v1}, Lcom/hangame/hsp/cgp/response/CGPResponse;->getCGPDataFromIdAndShape(Lcom/hangame/hsp/cgp/model/PromotionItem;Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;)Lcom/hangame/hsp/cgp/response/CGPData;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v1, "CGPService"

    const-string v2, "this Promotion is invalid data"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/response/CGPData;->getServiceType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v3, "CGPService"

    const-string v4, "Launch CROSS_GAME_PROMOTION"

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2, v1}, Lcom/hangame/hsp/cgp/core/CGPService;->launchCGP(Landroid/app/Activity;Lcom/hangame/hsp/cgp/response/CGPData;Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;)Z

    move-result v0

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "CGPService"

    const-string v3, "Launch IN_GAME_EVENT_WEB_VIEW"

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/hangame/hsp/cgp/core/CGPService;->launchIGPbyWebKit(Lcom/hangame/hsp/cgp/response/CGPData;)Z

    move-result v0

    goto/16 :goto_0

    :pswitch_2
    const-string v1, "CGPService"

    const-string v3, "Launch IN_GAME_EVENT_BROWSER"

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/hangame/hsp/cgp/core/CGPService;->launchIGPbyBrowser(Landroid/app/Activity;Lcom/hangame/hsp/cgp/response/CGPData;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public launchStore(Lcom/hangame/hsp/cgp/response/CGPData;)Z
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "CGPService"

    const-string v1, "Promotion Data is null."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpResponse:Lcom/hangame/hsp/cgp/response/CGPResponse;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hangame/hsp/cgp/response/CGPData;->getTypeCode()I

    move-result v0

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->BUTTON:Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;

    invoke-virtual {v1}, Lcom/hangame/hsp/cgp/constant/CGPType$ImageType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/hangame/hsp/cgp/response/CGPData;->getPromotionGameNo()I

    move-result v0

    const-string v1, "."

    invoke-virtual {p1}, Lcom/hangame/hsp/cgp/response/CGPData;->getAndroidStoreUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cgp_promotion"

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/util/AppUtil;->launchStore(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/hangame/hsp/cgp/response/CGPData;->getPromotionGameNo()I

    move-result v0

    const-string v1, "."

    invoke-virtual {p1}, Lcom/hangame/hsp/cgp/response/CGPData;->getAndroidStoreUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cgp_bnr"

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/util/AppUtil;->launchStore(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public reportBI(ILcom/hangame/hsp/cgp/response/CGPData;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/hangame/hsp/cgp/core/CGPService;->isCgpInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "CGPService"

    const-string v2, "Not cgp initialized."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "promotionId"

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "memberNo"

    iget-wide v4, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mMemberNo:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "optionType"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "deviceId"

    sget-object v4, Lcom/hangame/hsp/cgp/core/CGPService;->mDeviceId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->getInstance()Lcom/hangame/hsp/cgp/core/CGPService;

    move-result-object v3

    invoke-virtual {p2}, Lcom/hangame/hsp/cgp/response/CGPData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hangame/hsp/cgp/core/CGPService;->checkGameInstallation(Ljava/lang/String;)Z

    move-result v3

    if-ne v1, v3, :cond_1

    const-string v3, "alreadyInstalled"

    const-string v4, "true"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v3, "/CGPServer/ReportBI"

    new-instance v4, Lcom/hangame/hsp/cgp/request/HttpRequest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpServerInfo:Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    invoke-virtual {v6}, Lcom/hangame/hsp/cgp/response/CGPServerInfo;->getCgpServerUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v2}, Lcom/hangame/hsp/cgp/request/HttpRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "CGPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportBI "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/hangame/hsp/cgp/request/HttpRequest;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/hangame/hsp/cgp/command/ReportBICommand;

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v2, v4, v3, v6, v7}, Lcom/hangame/hsp/cgp/command/ReportBICommand;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    invoke-static {v2}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    move v0, v1

    goto/16 :goto_0

    :cond_1
    const-string v3, "alreadyInstalled"

    const-string v4, "false"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "CGPService"

    const-string v3, "Fail to report BI"

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public requestPromotionStart(II)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/hangame/hsp/cgp/core/CGPService;->isCgpInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CGPService"

    const-string v2, "Not cgp initialized."

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "promotionId"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "memberNo"

    iget-wide v4, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mMemberNo:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gameNo"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "deviceId"

    sget-object v3, Lcom/hangame/hsp/cgp/core/CGPService;->mDeviceId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "/CGPServer/ReqPromotionStart"

    new-instance v3, Lcom/hangame/hsp/cgp/request/HttpRequest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpServerInfo:Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    invoke-virtual {v5}, Lcom/hangame/hsp/cgp/response/CGPServerInfo;->getCgpServerUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Lcom/hangame/hsp/cgp/request/HttpRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "CGPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestPromotionStart "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/hangame/hsp/cgp/request/HttpRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/hangame/hsp/cgp/command/RequestPromotionStartCommand;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CGPService"

    const-string v3, "Fail to run the requestPromotionStart."

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendCustomData(Ljava/lang/String;JLcom/hangame/hsp/cgp/HSPCGP$HSPSendCustomDataCB;)Z
    .locals 8

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-wide v2, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mMemberNo:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-string v1, "CGPSERVICE"

    const/4 v2, 0x1

    const-string v3, "you should run checkpromotion!"

    invoke-static {v1, v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/hangame/hsp/cgp/HSPCGP$HSPSendCustomDataCB;->onSendCustomData(Lcom/hangame/hsp/HSPResult;)V

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "memberNo"

    iget-wide v4, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mMemberNo:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gameNo"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "customKey"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "customValue"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "/CGPServer/ReqPromotionStart"

    new-instance v2, Lcom/hangame/hsp/cgp/request/HttpRequest;

    const-string v3, ""

    invoke-direct {v2, v3, v1}, Lcom/hangame/hsp/cgp/request/HttpRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "CGPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestPromotionStart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/request/HttpRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/cgp/command/SendCustomDataCommand;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hangame/hsp/cgp/command/SendCustomDataCommand;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLcom/hangame/hsp/cgp/HSPCGP$HSPSendCustomDataCB;)V

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CGPService"

    const-string v3, "Fail to run the requestPromotionStart."

    invoke-static {v2, v3, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCgpResponse(Lcom/hangame/hsp/cgp/response/CGPResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mCgpResponse:Lcom/hangame/hsp/cgp/response/CGPResponse;

    return-void
.end method

.method public setImageInfo(Lcom/hangame/hsp/cgp/constant/CGPType$ShapeType;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mImageInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mImageInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mImageInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPromotionInfo(Lcom/hangame/hsp/cgp/model/PromotionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mPromotionInfo:Lcom/hangame/hsp/cgp/model/PromotionInfo;

    return-void
.end method

.method public setPromotionMap(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/core/CGPService;->mPromotionMap:Ljava/util/HashMap;

    return-void
.end method
