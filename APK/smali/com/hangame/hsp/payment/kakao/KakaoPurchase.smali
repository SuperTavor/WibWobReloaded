.class public Lcom/hangame/hsp/payment/kakao/KakaoPurchase;
.super Lcom/hangame/hsp/payment/core/StoreAction;


# static fields
.field private static final TAG:Ljava/lang/String; = "KakaoPurchase"

.field private static sInstance:Lcom/hangame/hsp/payment/kakao/KakaoPurchase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/payment/kakao/KakaoPurchase;->sInstance:Lcom/hangame/hsp/payment/kakao/KakaoPurchase;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/hangame/hsp/payment/core/StoreAction;-><init>()V

    const-string v0, "payment.kakao.purchase"

    const-string v1, "com.hangame.hsp.payment.kakao.KakaoIAPView"

    const-string v2, "_topbarShow=false&_gnbShow=false"

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    return-void
.end method

.method public static releaseInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hangame/hsp/payment/kakao/KakaoPurchase;->sInstance:Lcom/hangame/hsp/payment/kakao/KakaoPurchase;

    return-void
.end method


# virtual methods
.method public closePaymentService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getInstance()Lcom/hangame/hsp/payment/core/StoreAction;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/payment/kakao/KakaoPurchase;->sInstance:Lcom/hangame/hsp/payment/kakao/KakaoPurchase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/payment/kakao/KakaoPurchase;

    invoke-direct {v0}, Lcom/hangame/hsp/payment/kakao/KakaoPurchase;-><init>()V

    sput-object v0, Lcom/hangame/hsp/payment/kakao/KakaoPurchase;->sInstance:Lcom/hangame/hsp/payment/kakao/KakaoPurchase;

    :cond_0
    sget-object v0, Lcom/hangame/hsp/payment/kakao/KakaoPurchase;->sInstance:Lcom/hangame/hsp/payment/kakao/KakaoPurchase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStoreAddInfo()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

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
    new-instance v0, Lcom/hangame/hsp/payment/kakao/KakaoPurchase$1;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/payment/kakao/KakaoPurchase$1;-><init>(Lcom/hangame/hsp/payment/kakao/KakaoPurchase;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
