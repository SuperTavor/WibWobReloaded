.class public Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView;
.super Lcom/toastgamenew/hsp/auth/login/view/ToastLoginView;


# static fields
.field private static REQUEST_CODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GoogleLoginView"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e9

    sput v0, Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView;->REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

   # invoke-direct {p0, p1}, Lcom/toastgamenew/hsp/auth/login/view/ToastLoginView;-><init>(Lcom/hangame/hsp/ui/HSPUiUri;)V

    const-string v0, "GoogleLoginView"

    const-string v1, "GoogleLoginView"

   # invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->INIT:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    invoke-static {v0}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->setGGLoginResultType(Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;)V

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->setConnectionResult(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic access$000(Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView;->closeAllView()V

    return-void
.end method

.method private googleLogin()V
    .locals 3

    const-string v0, "GoogleLoginView"

    const-string v1, "googleLogin"

  #  invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

  #  invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

   # invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView;->REQUEST_CODE:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/16 v4, 0x12c

    const/16 v3, 0xc8

    const-string v0, "GoogleLoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

  #  invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/toastgamenew/hsp/auth/login/view/ToastLoginView;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    const-string v0, "GoogleLoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : REQUEST_CODE_TOKEN_AUTH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

   # invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x1f4

    if-eq p2, v0, :cond_2

    const/16 v0, 0x258

    if-ne p2, v0, :cond_3

    :cond_2
    const-string v0, "GoogleLoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : ERROR_CODE_USER_RECOVERABLE_AUTH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

  #  invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x4005

    const-string v2, "ERROR_GOOGLE_PERMISSION"

  #  invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

  #  invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView;->closeAllView()V

    goto :goto_0

    :cond_3
    if-eq p2, v3, :cond_4

    if-ne p2, v4, :cond_0

    :cond_4
    const/4 v0, 0x0

    if-ne p2, v3, :cond_7

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->googleLogout()V

    const-string v0, "ERROR_TOKEN_AUTH::"

    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

   # invoke-virtual {v1}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOGINSERVICE"

    const/16 v2, 0x4001

    const v3, -0x7eff2ffe

 #   invoke-static {v1, v2, v3, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;IILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    #invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->INIT:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    invoke-static {v0}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->setGGLoginResultType(Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;)V

   # invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isLock()Z

    move-result v0

    if-eqz v0, :cond_6

 #   invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->unlock()V

    :cond_6
  #  invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

  #  invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeAllView()V

    goto/16 :goto_0

    :cond_7
    if-ne p2, v4, :cond_5

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->googleLogout()V

    const-string v0, "ERROR_GOOGLE_LOGIN::"

    goto :goto_1
.end method

.method protected onResume()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/toastgamenew/hsp/auth/login/view/ToastLoginView;->onResume()V

    const-string v0, "GoogleLoginView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

  #  invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->isLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

 #   invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

  #  invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "GoogleLoginView"

    const-string v2, "Google Play Service is unstable or not install"

   # invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

   # invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x64

    new-instance v3, Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView$1;

    invoke-direct {v3, p0}, Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView$1;-><init>(Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView;)V

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignInCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->setConnectOnStart(Z)V

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/example/games/basegameutils/GameHelper;->setSignInCancelled(Z)V

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/example/games/basegameutils/GameHelper;->setConnectionResult(Lcom/google/android/gms/common/ConnectionResult;)V

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x4005

    const-string v2, "ERROR_GOOGLE_PERMISSION"

  #  invoke-static {v0, v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

  #  invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView;->closeAllView()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->getConnectionResult()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->getConnectionResult()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/example/games/basegameutils/GameHelper;->setConnectionResult(Lcom/google/android/gms/common/ConnectionResult;)V

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x4001

    const v2, -0x7eff2ffe

    const-string v3, "ERROR_GOOGLE_CONNECTION"

  #  invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;IILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

  #  invoke-static {v0}, Lcom/hangame/hsp/auth/login/HSPSilosService;->setLoginResult(Lcom/hangame/hsp/HSPResult;)V

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView;->closeAllView()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getLoginResultType()Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->getValue()I

    move-result v0

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->INIT:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    invoke-virtual {v1}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

   # invoke-static {v3}, Lcom/hangame/hsp/ui/DialogManager;->showProgressDialog(Z)V

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->NOT_GOOGLE_SIGN:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    invoke-static {v0}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->setGGLoginResultType(Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;)V

    invoke-direct {p0}, Lcom/toastgamenew/hsp/auth/login/view/GoogleLoginView;->googleLogin()V

    goto :goto_0
.end method
