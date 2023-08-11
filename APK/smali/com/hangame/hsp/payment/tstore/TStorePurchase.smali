.class public Lcom/hangame/hsp/payment/tstore/TStorePurchase;
.super Lcom/hangame/hsp/payment/core/StoreAction;


# static fields
.field private static final TAG:Ljava/lang/String; = "TStorePurchase"

.field private static mPlugin:Lcom/skplanet/dodo/IapPlugin;

.field private static mVersion:Ljava/lang/String;

.field private static sInstance:Lcom/hangame/hsp/payment/tstore/TStorePurchase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->sInstance:Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    const-string v0, "15.01.00"

    sput-object v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/hangame/hsp/payment/core/StoreAction;-><init>()V

    const-string v0, "payment.tstore.purchase"

    const-string v1, "com.hangame.hsp.payment.tstore.TStoreIAPView"

    const-string v2, "_topbarShow=false&_gnbShow=false"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    new-instance v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$2;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/payment/tstore/TStorePurchase$2;-><init>(Lcom/hangame/hsp/payment/tstore/TStorePurchase;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$002(Lcom/skplanet/dodo/IapPlugin;)Lcom/skplanet/dodo/IapPlugin;
    .locals 0

    sput-object p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->mPlugin:Lcom/skplanet/dodo/IapPlugin;

    return-object p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static releaseInstance()V
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->mPlugin:Lcom/skplanet/dodo/IapPlugin;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->mPlugin:Lcom/skplanet/dodo/IapPlugin;

    invoke-virtual {v0}, Lcom/skplanet/dodo/IapPlugin;->exit()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->sInstance:Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    return-void
.end method

.method public static tstoreRestore(Landroid/content/Context;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;

    invoke-direct {v0, p1, p0}, Lcom/hangame/hsp/payment/tstore/TStorePurchase$3;-><init>(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public closePaymentService()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/simple/JSONArray;

    invoke-direct {v0}, Lorg/json/simple/JSONArray;-><init>()V

    invoke-virtual {v0, p1}, Lorg/json/simple/JSONArray;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/json/simple/JSONObject;

    invoke-direct {v1}, Lorg/json/simple/JSONObject;-><init>()V

    const-string v2, "appid"

    invoke-virtual {v1, v2, p2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product_id"

    invoke-virtual {v1, v2, v0}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "action"

    invoke-virtual {v1, v0, p3}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lorg/json/simple/JSONObject;

    invoke-direct {v0}, Lorg/json/simple/JSONObject;-><init>()V

    const-string v2, "method"

    invoke-virtual {v0, v2, p4}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "param"

    invoke-virtual {v0, v2, v1}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/simple/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getInstance()Lcom/hangame/hsp/payment/core/StoreAction;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->sInstance:Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    invoke-direct {v0}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;-><init>()V

    sput-object v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->sInstance:Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    :cond_0
    sget-object v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->sInstance:Lcom/hangame/hsp/payment/tstore/TStorePurchase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPlugin()Lcom/skplanet/dodo/IapPlugin;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->mPlugin:Lcom/skplanet/dodo/IapPlugin;

    return-object v0
.end method

.method public getStoreAddInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "inAppBillingVersion"

    invoke-static {}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tstoreTxId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appid"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "restoreStatusValue"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isKakaoGame()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "service_user_id"

    invoke-static {}, Lcom/hangame/hsp/auth/login/LoginService;->getLoginService()Lcom/hangame/hsp/auth/login/LoginService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/auth/login/LoginService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v0}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->makeJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public purchase(Landroid/app/Activity;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$1;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/payment/tstore/TStorePurchase$1;-><init>(Lcom/hangame/hsp/payment/tstore/TStorePurchase;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPlugin(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "false"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    const-string v2, "HSP_PAYMENT_TSTORE_IS_REAL"

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/HSPConfiguration;->getConfigurationItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TStorePurchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TStore is alpha !!!!!!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "development"

    invoke-static {p1, v0}, Lcom/skplanet/dodo/IapPlugin;->getPlugin(Landroid/content/Context;Ljava/lang/String;)Lcom/skplanet/dodo/IapPlugin;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->mPlugin:Lcom/skplanet/dodo/IapPlugin;

    :goto_0
    return-void

    :cond_0
    const-string v0, "TStorePurchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TStore is real !!!!!!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "release"

    invoke-static {p1, v0}, Lcom/skplanet/dodo/IapPlugin;->getPlugin(Landroid/content/Context;Ljava/lang/String;)Lcom/skplanet/dodo/IapPlugin;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->mPlugin:Lcom/skplanet/dodo/IapPlugin;

    goto :goto_0
.end method
