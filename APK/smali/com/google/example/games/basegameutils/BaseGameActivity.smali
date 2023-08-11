.class public abstract Lcom/google/example/games/basegameutils/BaseGameActivity;
.super Landroid/support/v4/app/ag;

# interfaces
.implements Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;


# static fields
.field public static final CLIENT_ALL:I = 0xb

.field public static final CLIENT_GAMES:I = 0x1

.field public static final CLIENT_PLUS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BaseGameActivity"


# instance fields
.field protected mDebugLog:Z

.field protected mHelper:Lcom/google/example/games/basegameutils/GameHelper;

.field protected mRequestedClients:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/ag;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mRequestedClients:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mDebugLog:Z

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/ag;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mRequestedClients:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mDebugLog:Z

    invoke-virtual {p0, p1}, Lcom/google/example/games/basegameutils/BaseGameActivity;->setRequestedClients(I)V

    return-void
.end method


# virtual methods
.method protected beginUserInitiatedSignIn()V
    .locals 1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->beginUserInitiatedSignIn()V

    return-void
.end method

.method protected enableDebugLog(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mDebugLog:Z

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p1}, Lcom/google/example/games/basegameutils/GameHelper;->enableDebugLog(Z)V

    :cond_0
    return-void
.end method

.method protected enableDebugLog(ZLjava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "BaseGameActivity"

    const-string v1, "BaseGameActivity.enabledDebugLog(bool,String) is deprecated. Use enableDebugLog(boolean)"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/google/example/games/basegameutils/BaseGameActivity;->enableDebugLog(Z)V

    return-void
.end method

.method protected getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method public getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;
    .locals 2

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/example/games/basegameutils/GameHelper;

    iget v1, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mRequestedClients:I

    invoke-direct {v0, p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    iget-boolean v1, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mDebugLog:Z

    invoke-virtual {v0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->enableDebugLog(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    return-object v0
.end method

.method protected getInvitationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->getInvitationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSignInError()Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;
    .locals 1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->getSignInError()Lcom/google/example/games/basegameutils/GameHelper$SignInFailureReason;

    move-result-object v0

    return-object v0
.end method

.method protected hasSignInError()Z
    .locals 1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->hasSignInError()Z

    move-result v0

    return v0
.end method

.method protected isSignedIn()Z
    .locals 1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ag;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "BaseGameActivity"

    const-string v1, "jjw : onActivityResult : "

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/example/games/basegameutils/GameHelper;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/ag;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/BaseGameActivity;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p0}, Lcom/google/example/games/basegameutils/GameHelper;->setup(Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/ag;->onStart()V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p0}, Lcom/google/example/games/basegameutils/GameHelper;->onStart(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/ag;->onStop()V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->onStop()V

    return-void
.end method

.method protected reconnectClient()V
    .locals 1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->reconnectClient()V

    return-void
.end method

.method protected setRequestedClients(I)V
    .locals 0

    iput p1, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mRequestedClients:I

    return-void
.end method

.method protected showAlert(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p1}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected showAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/example/games/basegameutils/GameHelper;->makeSimpleDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected signOut()V
    .locals 1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->mHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->signOut()V

    return-void
.end method
