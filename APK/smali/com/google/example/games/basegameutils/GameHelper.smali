.class public Lcom/google/example/games/basegameutils/GameHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field public static final CLIENT_ALL:I = 0xb

.field public static final CLIENT_GAMES:I = 0x1

.field public static final CLIENT_NONE:I = 0x0

.field public static final CLIENT_PLUS:I = 0x2

.field public static final CLIENT_SNAPSHOT:I = 0x8

.field static final DEFAULT_MAX_SIGN_IN_ATTEMPTS:I = 0x3

.field static final RC_RESOLVE:I = 0x2329

.field static final RC_UNUSED:I = 0x232a

.field static final TAG:Ljava/lang/String; = "GameHelper"


# instance fields
.field private final GAMEHELPER_SHARED_PREFS:Ljava/lang/String;

.field private final KEY_SIGN_IN_CANCELLATIONS:Ljava/lang/String;

.field mActivity:Landroid/app/Activity;

.field mAppContext:Landroid/content/Context;

.field mConnectOnStart:Z

.field private mConnecting:Z

.field mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

.field mDebugLog:Z

.field mExpectingResolution:Z

.field mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

.field mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

.field mHandler:Landroid/os/Handler;

.field mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

.field public mIsHSPWithdrawCall:Z

.field mListener:Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;

.field mMaxAutoSignInAttempts:I

.field mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

.field mRequestedClients:I

.field mRequests:Ljava/util/ArrayList;

.field private mSetupDone:Z

.field mShowErrorDialogs:Z

.field mSignInCancelled:Z

.field mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

.field mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

.field mUserInitiatedSignIn:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSetupDone:Z

    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mExpectingResolution:Z

    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInCancelled:Z

    iput-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    iput-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-static {}, Lcom/google/android/gms/games/Games$GamesOptions;->builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->build()Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    iput-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    iput-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    iput-boolean v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mUserInitiatedSignIn:Z

    iput-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    iput-boolean v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mShowErrorDialogs:Z

    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mDebugLog:Z

    iput-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mListener:Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mMaxAutoSignInAttempts:I

    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mIsHSPWithdrawCall:Z

    const-string v0, "GAMEHELPER_SHARED_PREFS"

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->GAMEHELPER_SHARED_PREFS:Ljava/lang/String;

    const-string v0, "KEY_SIGN_IN_CANCELLATIONS"

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->KEY_SIGN_IN_CANCELLATIONS:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    iput p2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private doApiOptionsPreCheck()V
    .locals 2

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-eqz v0, :cond_0

    const-string v0, "GameHelper: you cannot call set*ApiOptions after the client builder has been created. Call it before calling createApiClientBuilder() or setup()."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logError(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static showFailureDialog(Landroid/app/Activity;II)V
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "GameHelper"

    const-string v1, "*** No Activity. Can\'t show failure dialog!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/16 v0, 0x232a

    const/4 v1, 0x0

    invoke-static {p2, p0, v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "GameHelper"

    const-string v1, "No standard error dialog available. Making fallback dialog."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/example/games/basegameutils/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/google/example/games/basegameutils/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/example/games/basegameutils/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/example/games/basegameutils/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/google/example/games/basegameutils/GameHelperUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method assertConfigured(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameHelper error: Operation attempted without setup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". The setup() method must be called before attempting any other operation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logError(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method public beginUserInitiatedSignIn()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "beginUserInitiatedSignIn: resetting attempt count."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->resetSignInCancellations()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInCancelled:Z

    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "beginUserInitiatedSignIn() called when already connected. Calling listener directly to notify of success."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logWarn(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    if-eqz v0, :cond_1

    const-string v0, "beginUserInitiatedSignIn() called when already connecting. Be patient! You can only call this method after you get an onSignInSucceeded() or onSignInFailed() callback. Suggestion: disable the sign-in button on startup and also when it\'s clicked, and re-enable when you get the callback."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logWarn(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Starting USER-INITIATED sign-in flow."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mUserInitiatedSignIn:Z

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2

    const-string v0, "beginUserInitiatedSignIn: continuing pending sign-in flow."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->resolveConnectionResult()V

    goto :goto_0

    :cond_2
    const-string v0, "beginUserInitiatedSignIn: starting new sign-in flow."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->connect()V

    goto :goto_0
.end method

.method public clearInvitation()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    return-void
.end method

.method public clearRequests()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequests:Ljava/util/ArrayList;

    return-void
.end method

.method public clearTurnBasedMatch()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    return-void
.end method

.method connect()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Already connected."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Starting connection."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    iput-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    iput-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method

.method public createApiClientBuilder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 3

    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSetupDone:Z

    if-eqz v0, :cond_0

    const-string v0, "GameHelper: you called GameHelper.createApiClientBuilder() after calling setup. You can only get a client builder BEFORE performing setup."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logError(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iget v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    iget-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    sget-object v1, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    :cond_1
    iget v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    sget-object v1, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    :cond_2
    iget v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/android/gms/drive/Drive;->SCOPE_APPFOLDER:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    sget-object v1, Lcom/google/android/gms/drive/Drive;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    :cond_3
    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    return-object v0
.end method

.method debugLog(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameHelper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Disconnecting client."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "GameHelper"

    const-string v1, "disconnect() called when client was already disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableDebugLog(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mDebugLog:Z

    if-eqz p1, :cond_0

    const-string v0, "Debug log enabled."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public enableDebugLog(ZLjava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "GameHelper"

    const-string v1, "GameHelper.enableDebugLog(boolean,String) is deprecated. Use GameHelper.enableDebugLog(boolean)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/google/example/games/basegameutils/GameHelper;->enableDebugLog(Z)V

    return-void
.end method

.method public getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 2

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No GoogleApiClient. Did you call setup()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public getConnectionResult()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method public getInvitation()Lcom/google/android/gms/games/multiplayer/Invitation;
    .locals 2

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GameHelper"

    const-string v1, "Warning: getInvitation() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    return-object v0
.end method

.method public getInvitationId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GameHelper"

    const-string v1, "Warning: getInvitationId() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequests()Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GameHelper"

    const-string v1, "Warning: getRequests() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSignInCancellations()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v1, "GAMEHELPER_SHARED_PREFS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSignInError()Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;
    .locals 1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    return-object v0
.end method

.method public getTurnBasedMatch()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .locals 2

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GameHelper"

    const-string v1, "Warning: getTurnBasedMatch() should only be called when signed in, that is, after getting onSignInSuceeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    return-object v0
.end method

.method giveUp(Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->disconnect()V

    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    iget v0, p1, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;->mActivityResultCode:I

    const/16 v1, 0x2714

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/example/games/basegameutils/GameHelperUtils;->printMisconfiguredDebugInfo(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->showFailureDialog()V

    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    return-void
.end method

.method public hasInvitation()Z
    .locals 1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequests()Z
    .locals 1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequests:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSignInError()Z
    .locals 1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTurnBasedMatch()Z
    .locals 1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method incrementSignInCancellations()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->getSignInCancellations()I

    move-result v0

    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v2, "GAMEHELPER_SHARED_PREFS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "KEY_SIGN_IN_CANCELLATIONS"

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isConnectOnStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    return v0
.end method

.method public isSetupDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSetupDone:Z

    return v0
.end method

.method public isSignInCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInCancelled:Z

    return v0
.end method

.method public isSignedIn()Z
    .locals 1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserInitiatedSignIn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mUserInitiatedSignIn:Z

    return v0
.end method

.method logError(Ljava/lang/String;)V
    .locals 3

    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** GameHelper ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3

    const-string v0, "GameHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!! GameHelper WARNING: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public makeSimpleDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, "*** makeSimpleDialog failed: no current Activity!"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logError(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public makeSimpleDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, "*** makeSimpleDialog failed: no current Activity!"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->logError(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method notifyListener(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying LISTENER of sign-in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    const-string v0, "SUCCESS"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mListener:Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mListener:Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;->onSignInSucceeded()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_2

    const-string v0, "FAILURE (error)"

    goto :goto_0

    :cond_2
    const-string v0, "FAILURE (no error)"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mListener:Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;

    invoke-interface {v0}, Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;->onSignInFailed()V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/16 v2, 0x2329

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne p1, v2, :cond_0

    const-string v0, "RC_RESOLVE"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/google/example/games/basegameutils/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    if-eq p1, v2, :cond_1

    const-string v0, "onActivityResult: request code not meant for us. Ignoring."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/google/example/games/basegameutils/GameHelper;->mExpectingResolution:Z

    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    if-nez v0, :cond_2

    const-string v0, "onActivityResult: ignoring because we are not connecting."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const-string v0, "onAR: Resolution was RESULT_OK, so connecting current client again."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->connect()V

    goto :goto_1

    :cond_3
    const/16 v0, 0x2711

    if-ne p2, v0, :cond_4

    const-string v0, "onAR: Resolution was RECONNECT_REQUIRED, so reconnecting."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->connect()V

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    const-string v0, "onAR: Got a cancellation result, so disconnecting."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInCancelled:Z

    iput-boolean v4, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    iput-boolean v4, p0, Lcom/google/example/games/basegameutils/GameHelper;->mUserInitiatedSignIn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    iput-boolean v4, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->getSignInCancellations()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->incrementSignInCancellations()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAR: # of cancellations "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " --> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAR: responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/google/example/games/basegameutils/GameHelperUtils;->activityResponseCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", so giving up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    new-instance v0, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-direct {v0, v1, p2}, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->giveUp(Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;)V

    goto/16 :goto_1
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "onConnected: connected!"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v0, "onConnected: connection hint provided. Checking for invite."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    const-string v0, "invitation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "onConnected: connection hint has a room invite!"

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invitation ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mInvitation:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v1}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/request/Requests;->getGameRequestsFromBundle(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequests:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnected: connection hint has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " request(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    :cond_1
    const-string v0, "onConnected: connection hint provided. Checking for TBMP game."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    const-string v0, "turn_based_match"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mTurnBasedMatch:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    :cond_2
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->succeedSignIn()V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "onConnectionFailed"

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    const-string v2, "Connection failure:"

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/example/games/basegameutils/GameHelperUtils;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - resolvable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - details: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->getSignInCancellations()I

    move-result v2

    iget-boolean v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mUserInitiatedSignIn:Z

    if-eqz v3, :cond_0

    const-string v2, "onConnectionFailed: WILL resolve because user initiated sign-in."

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_3

    const-string v0, "onConnectionFailed: since we won\'t resolve, failing now."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    :goto_1
    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInCancelled:Z

    if-eqz v3, :cond_1

    const-string v0, "onConnectionFailed WILL NOT resolve (user already cancelled once)."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mMaxAutoSignInAttempts:I

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConnectionFailed: WILL resolve because we have below the max# of attempts, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/example/games/basegameutils/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectionFailed: Will NOT resolve; not user-initiated and max attempts reached: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " >= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mMaxAutoSignInAttempts:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "onConnectionFailed: resolving problem..."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->resolveConnectionResult()V

    goto :goto_1
.end method

.method public onConnectionSuspended(I)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionSuspended, cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    const-string v0, "Making extraordinary call to onSignInFailed callback"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 4

    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->assertConfigured(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GameHelper"

    const-string v1, "GameHelper: client was already connected on onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "Connecting client."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    :cond_1
    const-string v0, "Not attempting to connect becase mConnectOnStart=false"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    const-string v0, "Instead, reporting a sign-in failure."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/example/games/basegameutils/GameHelper$1;

    invoke-direct {v1, p0}, Lcom/google/example/games/basegameutils/GameHelper$1;-><init>(Lcom/google/example/games/basegameutils/GameHelper;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->assertConfigured(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Disconnecting client due to onStop"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :goto_0
    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mExpectingResolution:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    return-void

    :cond_0
    const-string v0, "Client already disconnected when we got onStop."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reconnectClient()V
    .locals 2

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GameHelper"

    const-string v1, "reconnectClient() called when client is not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->connect()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Reconnecting client."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->reconnect()V

    goto :goto_0
.end method

.method resetSignInCancellations()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mAppContext:Landroid/content/Context;

    const-string v1, "GAMEHELPER_SHARED_PREFS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_SIGN_IN_CANCELLATIONS"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method resolveConnectionResult()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mExpectingResolution:Z

    if-eqz v0, :cond_0

    const-string v0, "We\'re already expecting the result of a previous resolution."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolveConnectionResult: trying to resolve result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Result has resolution. Starting it."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mExpectingResolution:Z

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x2329

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "SendIntentException, so connecting again."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->connect()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "Ignoring attempt to resolve connection result without an active Activity."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    const-string v0, "resolveConnectionResult: result has no resolution. Giving up."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    new-instance v0, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->giveUp(Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;)V

    goto :goto_0
.end method

.method public setConnectOnStart(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forcing mConnectOnStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    return-void
.end method

.method public setConnectionResult(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public setGamesApiOptions(Lcom/google/android/gms/games/Games$GamesOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/example/games/basegameutils/GameHelper;->doApiOptionsPreCheck()V

    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGamesApiOptions:Lcom/google/android/gms/games/Games$GamesOptions;

    return-void
.end method

.method public setMaxAutoSignInAttempts(I)V
    .locals 0

    iput p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mMaxAutoSignInAttempts:I

    return-void
.end method

.method public setPlusApiOptions(Lcom/google/android/gms/plus/Plus$PlusOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/example/games/basegameutils/GameHelper;->doApiOptionsPreCheck()V

    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mPlusApiOptions:Lcom/google/android/gms/plus/Plus$PlusOptions;

    return-void
.end method

.method public setRequestedClients(I)V
    .locals 0

    iput p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    return-void
.end method

.method public setShowErrorDialogs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mShowErrorDialogs:Z

    return-void
.end method

.method public setSignInCancelled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forcing mSignInCancelled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInCancelled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInCancelled:Z

    return-void
.end method

.method public setup(Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;)V
    .locals 2

    iput-object p1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mListener:Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setup: requested clients: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    const-string v0, "Setup: already init"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/GameHelper;->createApiClientBuilder()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    :cond_1
    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClientBuilder:Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSetupDone:Z

    goto :goto_0
.end method

.method public showFailureDialog()V
    .locals 3

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;->getServiceErrorCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    invoke-virtual {v1}, Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;->getActivityResultCode()I

    move-result v1

    iget-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mShowErrorDialogs:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1, v0}, Lcom/google/example/games/basegameutils/GameHelper;->showFailureDialog(Landroid/app/Activity;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not showing error dialog because mShowErrorDialogs==false. Error was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public signOut()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "signOut: was already disconnected, ignoring."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "Clearing default account on PlusClient."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/Account;->clearDefaultAccount(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mIsHSPWithdrawCall:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    iget-object v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/Account;->revokeAccessAndDisconnect(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mIsHSPWithdrawCall:Z

    :cond_1
    iget v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mRequestedClients:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const-string v0, "Signing out from the Google API Client."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    :cond_2
    const-string v0, "Disconnecting client."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    iget-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0
.end method

.method succeedSignIn()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "succeedSignIn"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/GameHelper;->debugLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/GameHelper;->mSignInFailureReason:Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnectOnStart:Z

    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mUserInitiatedSignIn:Z

    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/GameHelper;->mConnecting:Z

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/GameHelper;->notifyListener(Z)V

    return-void
.end method
