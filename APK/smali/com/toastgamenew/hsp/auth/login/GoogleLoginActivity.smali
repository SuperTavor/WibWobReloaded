.class public Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;


# static fields
.field public static final ERROR_CODE_GOOGLE_LOGIN:I = 0x12c

.field public static final ERROR_CODE_GOOGLE_PERMISSION:I = 0x258

.field public static final ERROR_CODE_GOOGLE_PLAY_SERVICE:I = 0x190

.field public static final ERROR_CODE_TOKEN_AUTH:I = 0xc8

.field public static final ERROR_CODE_USER_RECOVERABLE_AUTH:I = 0x1f4

.field private static final MY_PERMISSION_REQUEST_GETACCOUNT:I = 0xa

.field public static final REQUEST_CODE_TOKEN_AUTH:I = 0x64

.field private static final TAG:Ljava/lang/String; = "GoogleLoginActivity"

.field private static instance:Landroid/app/Activity;

.field private static final lock:Ljava/lang/Object;

.field private static mIsGooglePermission:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->mIsGooglePermission:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static requestDestroy()V
    .locals 2

    const-string v0, "GoogleLoginActivity"

    const-string v1, "requestDestroy"

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->instance:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->instance:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->instance:Landroid/app/Activity;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method getAndUseAuthTokenBlocking()V
    .locals 5

    const-string v0, "GoogleLoginActivity"

    const-string v1, "getAndUseAuthTokenBlocking"

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    #sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    const-string v1, "try to Google Token"

    #invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPResult;->setDetail(Ljava/lang/String;)V

    #invoke-static {}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "silos.login.google.accesstoken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    #invoke-static {}, Lcom/hangame/hsp/util/PreferenceUtil;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "silos.login.google.accesstoken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/auth/GoogleAuthUtil;->clearToken(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/Account;->getAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oauth2:https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/plus.me profile"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "silos.login.google.accesstoken"

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/PreferenceUtil;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "google"

    #invoke-static {v0}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getIdpInfo(Ljava/lang/String;)Lcom/hangame/hsp/auth/lnc/LncIdpInfo;

    move-result-object v0

    #invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getId()Ljava/lang/String;

    move-result-object v2

    #invoke-virtual {v0}, Lcom/hangame/hsp/auth/lnc/LncIdpInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    #invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getLoginUrlMap()Ljava/util/Map;

    move-result-object v0

    const-string v4, "toastLoginUrl"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "tokenLogin.nhn?agreeYn=N&returnType=JSON&snsCd=google&clientId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&snsClientId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&snsToken="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    #invoke-static {v1}, Lcom/hangame/hsp/util/StringUtil;->getUrlEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity$GoogleCB;

    invoke-direct {v1, p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity$GoogleCB;-><init>(Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;)V

    invoke-static {v0, v1}, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->loginByOAuthWithTokenUrl(Ljava/lang/String;Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GoogleLoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceController.getOrientation() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #invoke-static {}, Lcom/hangame/hsp/ui/DeviceController;->getOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #invoke-static {}, Lcom/hangame/hsp/ui/DeviceController;->getOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->setRequestedOrientation(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "GoogleLoginActivity"

    const-string v2, "GET TOKEN ERROR"

    #invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xc8

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->setResult(ILandroid/content/Intent;)V

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->INIT:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    invoke-static {v0}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->setGGLoginResultType(Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;)V

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->requestDestroy()V

    goto :goto_0
.end method

.method getAndUseAuthTokenInAsyncTask()V
    .locals 2

    const-string v0, "GoogleLoginActivity"

    const-string v1, "getAndUseAuthTokenInAsyncTask"

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity$1;-><init>(Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;)V

    #invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/16 v4, 0x12c

    const/16 v3, 0x1f4

    const-string v0, "GoogleLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/example/games/basegameutils/GameHelper;->isConnecting()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    if-ne p1, v3, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->getAndUseAuthTokenInAsyncTask()V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x190

    if-ne p1, v0, :cond_2

    #sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    const-string v1, "ERROR_CODE_GOOGLE_PLAY_SERVICE"

    #invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPResult;->setDetail(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->finish()V

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->finish()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_4

    #sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    const-string v1, "GameHelper is not Connecting"

    #invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPResult;->setDetail(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->finish()V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->setShowErrorDialogs(Z)V

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/example/games/basegameutils/GameHelper;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->setShowErrorDialogs(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x270f

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "GoogleLoginActivity"

    const-string v1, "onCreate"

   #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->mIsGooglePermission:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p0, v0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GoogleLoginActivity"

    const-string v1, "requestPermissions"

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "android.permission.GET_ACCOUNTS"

    aput-object v1, v0, v3

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->requestPermissions([Ljava/lang/String;I)V

    :goto_0
    const-string v0, "GoogleLoginActivity"

    const-string v1, "requestPermissions after"

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "hsp_auth_toast_facebook_mapping_translucent"

    #invoke-static {v0}, Lcom/hangame/hsp/ui/ResourceUtil;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->onDestroy()V

    :goto_1
    return-void

    :cond_0
    const-string v0, "GoogleLoginActivity"

    const-string v1, "permit requestPermissions"

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/example/games/basegameutils/GameHelper;->setMaxAutoSignInAttempts(I)V

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/example/games/basegameutils/GameHelper;->setup(Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;)V

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->beginUserInitiatedSignIn()V

    sput-boolean v2, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->mIsGooglePermission:Z

    goto :goto_0

    :cond_1
    const-string v0, "GoogleLoginActivity"

    const-string v1, "permit requestPermissions"

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/example/games/basegameutils/GameHelper;->setMaxAutoSignInAttempts(I)V

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/example/games/basegameutils/GameHelper;->setup(Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;)V

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->beginUserInitiatedSignIn()V

    sput-boolean v2, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->mIsGooglePermission:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->setContentView(Landroid/view/View;)V

    sput-object p0, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->instance:Landroid/app/Activity;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "GoogleLoginActivity"

    const-string v1, "onDestroy"

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "GoogleLoginActivity"

    const-string v1, "onNewIntent"

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "GoogleLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestPermissionsResult requestCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    aget v0, p3, v3

    if-nez v0, :cond_1

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    const/16 v1, 0x270f

    invoke-virtual {v0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->setMaxAutoSignInAttempts(I)V

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/example/games/basegameutils/GameHelper;->setup(Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;)V

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->beginUserInitiatedSignIn()V

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isConnectOnStart()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/example/games/basegameutils/GameHelper;->onStart(Landroid/app/Activity;)V

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->mIsGooglePermission:Z

    goto :goto_0

    :cond_1
    sput-boolean v3, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->mIsGooglePermission:Z

    const-string v0, "GoogleLoginActivity"

    const-string v1, "Permission deny"

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    const-string v1, "we fail to get google permission"

    #invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPResult;->setDetail(Ljava/lang/String;)V

    const/16 v0, 0x258

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->setResult(ILandroid/content/Intent;)V

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->requestDestroy()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "GoogleLoginActivity"

    const-string v1, "onResume"

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignInCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    #sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    const-string v1, "isSignInCancelled"

    #invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPResult;->setDetail(Ljava/lang/String;)V

    const/16 v0, 0x12c

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->setResult(ILandroid/content/Intent;)V

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->requestDestroy()V

    :cond_0
    return-void
.end method

.method public onSignInFailed()V
    .locals 2

    const-string v0, "GoogleLoginActivity"

    const-string v1, "onSignInFailed"

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/LoginUtil;->mResultObj:Lcom/hangame/hsp/HSPResult;

    const-string v1, "onSignInFailed"

    #invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPResult;->setDetail(Ljava/lang/String;)V

    const/16 v0, 0x12c

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->setResult(ILandroid/content/Intent;)V

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->requestDestroy()V

    return-void
.end method

.method public onSignInSucceeded()V
    .locals 2

    const-string v0, "GoogleLoginActivity"

    const-string v1, "onSignInSucceeded"

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->NOT_HSP_LOGIN:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    invoke-static {v0}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->setGGLoginResultType(Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;)V

    :try_start_0
    sget-object v1, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->getAndUseAuthTokenInAsyncTask()V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const/16 v0, 0xc8

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->finish()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    const-string v0, "GoogleLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->mIsGooglePermission:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget-boolean v0, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->mIsGooglePermission:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "GoogleLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConnected() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConnectOnStart() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/example/games/basegameutils/GameHelper;->isConnectOnStart()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUserInitiatedSignIn() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/example/games/basegameutils/GameHelper;->isUserInitiatedSignIn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isConnectOnStart()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/example/games/basegameutils/GameHelper;->onStart(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
