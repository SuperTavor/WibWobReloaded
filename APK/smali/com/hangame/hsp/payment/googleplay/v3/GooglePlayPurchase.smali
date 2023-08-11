.class public Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;
.super Lcom/hangame/hsp/payment/core/StoreAction;


# static fields
.field private static final TAG:Ljava/lang/String; = "GooglePlayPurchase"

.field private static iappPurchaseList:Ljava/util/List;

.field private static instance:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

.field private static mBroadcastReceiver:Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver;

.field private static mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

.field private static mReceiptInfo:Ljava/lang/String;

.field private static mRedeemBroadcast:Z

.field private static subscriptionList:Ljava/util/List;


# instance fields
.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->instance:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    sput-object v1, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    sput-object v1, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mBroadcastReceiver:Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mRedeemBroadcast:Z

    sput-object v1, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->subscriptionList:Ljava/util/List;

    sput-object v1, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->iappPurchaseList:Ljava/util/List;

    const-string v0, ""

    sput-object v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mReceiptInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/hangame/hsp/payment/core/StoreAction;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->lock:Ljava/lang/Object;

    sput-object p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->instance:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    const-string v0, "GooglePlayPurchase"

    const-string v1, "GooglePlayPurchase initialize!!!!!"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "payment.google.purchase"

    const-string v1, "com.hangame.hsp.payment.googleplay.v3.GooglePlayView"

    const-string v2, "_topbarShow=false&_gnbShow=false"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    invoke-direct {p0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->googlePlayInitialize()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mRedeemBroadcast:Z

    return p0
.end method

.method static synthetic access$102(Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;)Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;
    .locals 0

    sput-object p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    return-object p0
.end method

.method private getAddInfoMap()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "inAppBillingVersion"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isKakaoGame()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "service_user_id"

    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/auth/login/LoginService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isNeGame()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "band"

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "user_key"

    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/auth/login/LoginService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private googlePlayInitialize()V
    .locals 3

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$3;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$3;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;)V

    invoke-virtual {p0, v0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->registRedeemReceiver(Landroid/app/Activity;Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver$GoogleIabBroadcastListener;)V

    const-string v0, "GooglePlayPurchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGameActivity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GooglePlayPurchase"

    const-string v1, "Starting setup."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    new-instance v1, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$4;

    invoke-direct {v1, p0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$4;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;)V

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->startSetup(Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper$OnIabSetupFinishedListener;)V

    return-void
.end method

.method public static releaseInstance()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "GooglePlayPurchase"

    const-string v1, "Destroying helper."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->dispose()V

    :cond_0
    sput-object v2, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    sput-object v2, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->instance:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    return-void
.end method

.method private verifyDeveloperPayload(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GooglePlayPurchase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyDeveloperPayload payload : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public closePaymentService()Z
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->unregistRedeemReceiver(Landroid/app/Activity;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getAddInfoMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->makeJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GooglePlayPurchase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestStoreAddInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getIabHelper()Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;
    .locals 2

    sget-object v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    if-nez v0, :cond_0

    const-string v0, "GooglePlayPurchase"

    const-string v1, "mIabHelper is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->googlePlayInitialize()V

    :cond_0
    sget-object v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    return-object v0
.end method

.method public declared-synchronized getInstance()Lcom/hangame/hsp/payment/core/StoreAction;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->instance:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    invoke-direct {v0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;-><init>()V

    sput-object v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->instance:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;

    :cond_0
    sget-object v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->instance:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPaymentHeader(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)Lcom/hangame/hsp/payment/core/model/PaymentHeader;
    .locals 6

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/hangame/hsp/util/SimpleJsonParser;->json2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    new-instance v1, Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-direct {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;-><init>()V

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->getValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setCode(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setCurrentTime(J)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setEventNo(I)V

    const-string v0, "gno"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setGameNo(I)V

    const-string v0, "memberNo"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setMemberNo(J)V

    const-string v0, "rcv"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setReceiverMemberNo(J)V

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setProductId(Ljava/lang/String;)V

    const-string v0, "rt"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setRequestTime(J)V

    const-string v0, "rqr"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setRequester(Ljava/lang/String;)V

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL400_PREPAY_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setStatus(Ljava/lang/String;)V

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->GOOGLE_CHECKOUT:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setStoreId(Ljava/lang/String;)V

    const-string v0, "orderSeq"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setTxId(J)V

    const-string v0, "transactionId"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setClientTxNo(J)V

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setApiType(Lcom/hangame/hsp/payment/core/constant/ClientApiType;)V

    const-string v0, "GooglePlayPurchase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "payloadHeader : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "GooglePlayPurchase"

    const-string v2, "getPayloadHeader parsing exception"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPurchaseListFromGooglePlay()Ljava/util/List;
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v0

    const-string v1, "GooglePlayPurchase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "purchaseList size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->iappPurchaseList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->subscriptionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "subs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "GooglePlayPurchase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The subscription is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->subscriptionList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/hangame/hsp/payment/googleplay/v3/model/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-object v5, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->subscriptionList:Ljava/util/List;

    sput-object v5, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->iappPurchaseList:Ljava/util/List;

    :cond_1
    sget-object v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->iappPurchaseList:Ljava/util/List;

    return-object v0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "inapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GooglePlayPurchase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The purchase is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->iappPurchaseList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/hangame/hsp/payment/googleplay/v3/model/IabException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getReceipt()Ljava/lang/String;
    .locals 3

    const-string v0, "GooglePlayPurchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call getReceipt() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mReceiptInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mReceiptInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getReceipt(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "signedData"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "signature"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->makeJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mReceiptInfo:Ljava/lang/String;

    const-string v1, "GooglePlayPurchase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestReceiptInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getRedeemData()Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getAddInfoMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "purchaseType"

    const-string v2, "redeem"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->makeJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GooglePlayPurchase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestStoreAddInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getRedeemHeader(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;Ljava/util/Map;)Lcom/hangame/hsp/payment/core/model/PaymentHeader;
    .locals 4

    new-instance v1, Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-direct {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;-><init>()V

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->getValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setCode(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setCurrentTime(J)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setEventNo(I)V

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setProductId(Ljava/lang/String;)V

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL400_PREPAY_PURCHASE:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setStatus(Ljava/lang/String;)V

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/StoreId;->GOOGLE_CHECKOUT:Lcom/hangame/hsp/payment/core/constant/StoreId;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/constant/StoreId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setStoreId(Ljava/lang/String;)V

    sget-object v0, Lcom/hangame/hsp/payment/core/constant/ClientApiType;->REDEEM:Lcom/hangame/hsp/payment/core/constant/ClientApiType;

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setApiType(Lcom/hangame/hsp/payment/core/constant/ClientApiType;)V

    const-string v0, "gno"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setGameNo(I)V

    const-string v0, "memberNo"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setMemberNo(J)V

    const-string v0, "rcv"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setReceiverMemberNo(J)V

    const-string v0, "rt"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setRequestTime(J)V

    const-string v0, "rqr"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setRequester(Ljava/lang/String;)V

    const-string v0, "orderSeq"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setTxId(J)V

    const-string v0, "transactionId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->setClientTxNo(J)V

    const-string v0, "GooglePlayPurchase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRedeemHeader : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "GooglePlayPurchase"

    const-string v2, "getRedeemHeader parsing exception"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRedeemReceipt(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "signedData"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "signature"

    invoke-virtual {p1}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->makeJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GooglePlayPurchase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RedeemReceiptInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getSkuDetailsAsync(Ljava/util/List;Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$GoogleProductInfoCB;)V
    .locals 3

    const-string v0, "GooglePlayPurchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSkuDetailsAsync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "GooglePlayPurchase"

    const-string v1, "parameter is null."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$5;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;Ljava/util/List;Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$GoogleProductInfoCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getSubscriptPurchases(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$GooglePurchaseCB;)V
    .locals 1

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getSubscriptionListFromGooglePlay()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$GooglePurchaseCB;->onPurchaseInfos(Ljava/util/List;)V

    return-void
.end method

.method public getSubscriptionListFromGooglePlay()Ljava/util/List;
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mIabHelper:Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/googleplay/v3/service/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/service/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v0

    const-string v1, "GooglePlayPurchase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "purchaseList size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->iappPurchaseList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->subscriptionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "subs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "GooglePlayPurchase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The subscription is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->subscriptionList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/hangame/hsp/payment/googleplay/v3/model/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-object v5, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->subscriptionList:Ljava/util/List;

    sput-object v5, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->iappPurchaseList:Ljava/util/List;

    :cond_1
    sget-object v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->subscriptionList:Ljava/util/List;

    return-object v0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->getItemType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "inapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GooglePlayPurchase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The purchase is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->iappPurchaseList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/hangame/hsp/payment/googleplay/v3/model/IabException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public googlePlayAddItem(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;Lcom/hangame/hsp/payment/core/model/PaymentHeader;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;
    .locals 2

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getReceipt(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->requestAddItem(Lcom/hangame/hsp/payment/core/model/PaymentHeader;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    move-result-object v0

    return-object v0
.end method

.method public googlePlayAddItem(Lcom/hangame/hsp/payment/googleplay/v3/model/Purchase;Lcom/hangame/hsp/payment/core/model/PaymentHeader;Ljava/lang/String;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;
    .locals 1

    invoke-virtual {p0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->getRedeemData()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p3}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->requestAddItem(Lcom/hangame/hsp/payment/core/model/PaymentHeader;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    move-result-object v0

    return-object v0
.end method

.method public isReceivedRedeemBroadcast()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mRedeemBroadcast:Z

    if-ne v2, v0, :cond_0

    sput-boolean v1, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mRedeemBroadcast:Z

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public purchase(Landroid/app/Activity;)Z
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "GooglePlayPurchase"

    const-string v1, "param : activity is null!!"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$1;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$1;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public redeem(Landroid/app/Activity;Ljava/util/List;)Z
    .locals 3

    const-string v0, "GooglePlayPurchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "redeem, promoProductIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string v0, "GooglePlayPurchase"

    const-string v1, "param : activity is null!!"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$2;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registRedeemReceiver(Landroid/app/Activity;Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver$GoogleIabBroadcastListener;)V
    .locals 2

    const-string v0, "GooglePlayPurchase"

    const-string v1, "registRedeemReceiver."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver;

    invoke-direct {v0, p2}, Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver$GoogleIabBroadcastListener;)V

    sput-object v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mBroadcastReceiver:Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mBroadcastReceiver:Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregistRedeemReceiver(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mBroadcastReceiver:Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver;

    if-eqz v0, :cond_0

    const-string v0, "GooglePlayPurchase"

    const-string v1, "unregistRedeemReceiver"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase;->mBroadcastReceiver:Lcom/hangame/hsp/payment/googleplay/v3/GoogleIabBroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
