.class public Lcom/example/util/HspJniUtil;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/example/util/HspJniUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/example/util/HspJniUtil;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static getMemberNo()J
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getTicket()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getTicket()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getToken()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getTransferKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/example/util/HspJniUtil;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static isLogin()Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    const-string v3, "isLogin"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "core.getState()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getState()Lcom/hangame/hsp/HSPState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getState()Lcom/hangame/hsp/HSPState;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/HSPState;->HSP_STATE_ONLINE:Lcom/hangame/hsp/HSPState;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLoginFailure()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "HSP LOG"

    const-string v2, "core null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getState()Lcom/hangame/hsp/HSPState;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/HSPState;->HSP_STATE_UNAVAILABLE:Lcom/hangame/hsp/HSPState;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLoginGameIDP()Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    const-string v3, "isLoginGameIDP"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v2, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "core.loginType()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->loginType()Lcom/hangame/hsp/HSPCore$HSPLoginType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/example/util/HspJniUtil;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->loginType()Lcom/hangame/hsp/HSPCore$HSPLoginType;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_GOOGLE:Lcom/hangame/hsp/HSPCore$HSPLoginType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static loginByLastSno(J)V
    .locals 4

    sget-object v0, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    const-string v1, "loginByLastSno"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    const-string v1, "core null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    const-string v2, "core login"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    const-string v1, "core.getGameActivity() null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/example/util/j;

    invoke-direct {v3, p0, p1}, Lcom/example/util/j;-><init>(J)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hangame/hsp/HSPCore;->login(Landroid/app/Activity;ZLcom/hangame/hsp/HSPCore$HSPLoginCB;)V

    goto :goto_0
.end method

.method public static loginGameIDP(J)V
    .locals 4

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    const-string v2, "loginGameIDP"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/HSPOAuthProvider;->GOOGLE:Lcom/hangame/hsp/HSPOAuthProvider;

    new-instance v3, Lcom/example/util/l;

    invoke-direct {v3, p0, p1}, Lcom/example/util/l;-><init>(J)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hangame/hsp/HSPCore;->login(Landroid/app/Activity;Lcom/hangame/hsp/HSPOAuthProvider;Lcom/hangame/hsp/HSPCore$HSPLoginCB;)V

    goto :goto_0
.end method

.method public static loginGuest(J)V
    .locals 4

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    const-string v2, "loginGuest"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/HSPOAuthProvider;->GUEST:Lcom/hangame/hsp/HSPOAuthProvider;

    new-instance v3, Lcom/example/util/k;

    invoke-direct {v3, p0, p1}, Lcom/example/util/k;-><init>(J)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hangame/hsp/HSPCore;->login(Landroid/app/Activity;Lcom/hangame/hsp/HSPOAuthProvider;Lcom/hangame/hsp/HSPCore$HSPLoginCB;)V

    goto :goto_0
.end method

.method public static logout()V
    .locals 3

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    const-string v2, "logout"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/example/util/m;

    invoke-direct {v1}, Lcom/example/util/m;-><init>()V

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPCore;->logout(Lcom/hangame/hsp/HSPCore$HSPLogoutCB;)V

    goto :goto_0
.end method

.method public static mapToGameIDP(J)V
    .locals 4

    sget-object v0, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    const-string v1, "mapToGameIDPl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    const-string v1, "mapping:core null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPMappingType;->GOOGLE:Lcom/hangame/hsp/HSPMappingType;

    const/4 v2, 0x0

    new-instance v3, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;

    invoke-direct {v3, p0, p1}, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;-><init>(J)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hangame/hsp/HSPCore;->requestMappingToAccount(Lcom/hangame/hsp/HSPMappingType;ZLcom/hangame/hsp/HSPCore$HSPReMappingAndMemberNoCB;)V

    goto :goto_0
.end method

.method public static purchase(JLjava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    const-string v1, "purchase:core null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "purchase:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/example/util/PurchaseCBImpl;

    invoke-direct {v1, p0, p1}, Lcom/example/util/PurchaseCBImpl;-><init>(J)V

    invoke-static {v0, p2, v1}, Lcom/hangame/hsp/payment/HSPPayment;->purchase(Landroid/app/Activity;Ljava/lang/String;Lcom/hangame/hsp/payment/HSPPayment$PurchaseCB;)Z

    goto :goto_0
.end method

.method public static requestItemDelivery(J)V
    .locals 2

    sget-object v0, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    const-string v1, "requestItemDelivery:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    const-string v1, "requestItemDelivery null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/example/util/RequestItemDeliveryCallbackImpl;

    invoke-direct {v0, p0, p1}, Lcom/example/util/RequestItemDeliveryCallbackImpl;-><init>(J)V

    invoke-static {v0}, Lcom/hangame/hsp/itemdelivery/HSPItemDelivery;->requestItemDelivery(Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;)Z

    goto :goto_0
.end method

.method public static requestTransferKey()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/example/util/HspJniUtil;->b:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    new-instance v1, Lcom/example/util/n;

    invoke-direct {v1}, Lcom/example/util/n;-><init>()V

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPCore;->getTransferkey(Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;)V

    return-void
.end method

.method public static transferAccount(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    new-instance v1, Lcom/example/util/o;

    invoke-direct {v1}, Lcom/example/util/o;-><init>()V

    invoke-virtual {v0, v1, p0}, Lcom/hangame/hsp/HSPCore;->transferAccount(Lcom/hangame/hsp/HSPCore$HSPTransferkeyCB;Ljava/lang/String;)V

    return-void
.end method

.method public static updatePaymentProducts([Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    const-string v1, "updatePaymentProducts:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    const-string v1, "requestItemDelivery null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    sget-object v4, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "productIds:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/example/util/p;

    invoke-direct {v0}, Lcom/example/util/p;-><init>()V

    invoke-static {v1, v0}, Lcom/hangame/hsp/payment/HSPPayment;->requestGoogleIabProductInfos(Ljava/util/List;Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayPurchase$GoogleProductInfoCB;)V

    goto :goto_0
.end method
