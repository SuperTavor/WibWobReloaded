.class public final Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;
.super Lcom/toastgamenew/hsp/auth/login/IdpLoginServiceAbstract;


# static fields
.field private static final TAG:Ljava/lang/String; = "OneBuildLoginService"

.field private static ggloginResultType:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

.field private static isGoogleSupport:Z

.field private static mHelper:Lcom/google/example/games/basegameutils/GameHelper;


# instance fields
.field private mApp2AppClassNm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->isGoogleSupport:Z

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->INIT:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->ggloginResultType:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/toastgamenew/hsp/auth/login/IdpLoginServiceAbstract;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->mApp2AppClassNm:Ljava/lang/String;

    return-void
.end method

.method public static getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;
    .locals 3

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/example/games/basegameutils/GameHelper;

    #invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    #invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/example/games/basegameutils/GameHelper;-><init>(Landroid/app/Activity;I)V

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    const-string v0, "HIGH"

    #invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    #invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v1

    #invoke-static {v1}, Lcom/hangame/hsp/HSPConfiguration;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    #invoke-virtual {v1}, Lcom/hangame/hsp/HSPConfiguration;->getDebugLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->enableDebugLog(Z)V

    :cond_0
    sget-object v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    return-object v0
.end method

.method public static getLoginResultType()Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;
    .locals 1

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->ggloginResultType:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    return-object v0
.end method

.method public static googleLogout()V
    .locals 3

    const-string v0, "OneBuildLoginService"

    const-string v1, "googleLogout"

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->signOut()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->onStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OneBuildLoginService"

    const-string v2, "logout error"

    #invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "OneBuildLoginService"

    const-string v2, "logout error"

    #invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static isGoogleSupport()Z
    .locals 1

    sget-boolean v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->isGoogleSupport:Z

    return v0
.end method

.method public static setGGLoginResultType(Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;)V
    .locals 3

    const-string v0, "OneBuildLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoginResultType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->ggloginResultType:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 4

    const-string v0, "OneBuildLoginService"

    const-string v1, "initialize"

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->mApp2AppClassNm:Ljava/lang/String;

    const-string v0, "auth.login.google"

    iget-object v1, p0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->mApp2AppClassNm:Ljava/lang/String;

    const-string v2, "_gnbShow=false&_history=false&_topbarShow=false"

    #invoke-static {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiFactory;->registerUiUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;

    :try_start_0
    const-string v0, "com.google.android.gms.games.Games"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->isGoogleSupport:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->isGoogleSupport:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$1;

    invoke-direct {v1, p0}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$1;-><init>(Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    sget-object v0, Lcom/toastgamenew/hsp/auth/login/ToastLoginService;->mIdpLoginMap:Ljava/util/HashMap;

    #sget-object v1, Lcom/hangame/hsp/HSPOAuthProvider;->GOOGLE:Lcom/hangame/hsp/HSPOAuthProvider;

    #invoke-virtual {v1}, Lcom/hangame/hsp/HSPOAuthProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->isGoogleSupport:Z

    goto :goto_0
.end method

.method public logout()Z
    .locals 3

    const-string v0, "OneBuildLoginService"

    const-string v1, "logout"

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #invoke-super {p0}, Lcom/toastgamenew/hsp/auth/login/IdpLoginServiceAbstract;->logout()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->isGoogleSupport:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/example/games/basegameutils/GameHelper;->isSetupDone()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->googleLogout()V

    const/4 v1, 0x0

    sput-object v1, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    :cond_0
    const/4 v1, 0x0

    #invoke-static {v1}, Lcom/hangame/hsp/auth/login/HSPLoginService;->setWelcomeLogin(Z)V

    return-object v0
.end method

.method public withdrawAccount()Z
    .locals 2

    const-string v0, "OneBuildLoginService"

    const-string v1, "withdrawAccount"

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/example/games/basegameutils/GameHelper;->mIsHSPWithdrawCall:Z

    #invoke-super {p0}, Lcom/toastgamenew/hsp/auth/login/IdpLoginServiceAbstract;->withdrawAccount()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    return-object v0
.end method
