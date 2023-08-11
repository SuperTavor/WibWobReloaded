.class public Lcom/toastgamenew/hsp/google/HSPGoogle;
.super Ljava/lang/Object;


# static fields
.field public static final GAME_REQUESTS_TYPE_GIFT:I = 0x1

.field public static final GAME_REQUESTS_TYPE_WISH:I = 0x2

.field private static final RC_UNUSED:I = 0x232a

.field public static final REQUESTS_REQUEST_DEFAULT_LIFETIME_DAYS:I = -0x1

.field private static final SEND_GIFT_CODE:I = 0x2

.field private static final SHOW_INBOX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HSPGoogle"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkGoogleLogin()Z
    .locals 2

    invoke-static {}, Lcom/toastgamenew/hsp/google/HSPGoogle;->getGoogleGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HSPGoogle"

    const-string v1, "google not login"

  #  invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    invoke-static {}, Lcom/toastgamenew/hsp/google/HSPGoogle;->getGoogleGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method public static getGoogleGameHelper()Lcom/google/example/games/basegameutils/GameHelper;
    .locals 1

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->getGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    return-object v0
.end method

.method public static getRequests()Ljava/util/ArrayList;
    .locals 1

    invoke-static {}, Lcom/toastgamenew/hsp/google/HSPGoogle;->checkGoogleLogin()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/toastgamenew/hsp/google/HSPGoogle;->getGoogleGameHelper()Lcom/google/example/games/basegameutils/GameHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->getRequests()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public static incrementAchievement(Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Lcom/toastgamenew/hsp/google/HSPGoogle;->checkGoogleLogin()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-static {}, Lcom/toastgamenew/hsp/google/HSPGoogle;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1}, Lcom/google/android/gms/games/achievement/Achievements;->incrementImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_0
.end method

.method public static receiveRequests()V
    .locals 3

    invoke-static {}, Lcom/toastgamenew/hsp/google/HSPGoogle;->checkGoogleLogin()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    invoke-static {}, Lcom/toastgamenew/hsp/google/HSPGoogle;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/request/Requests;->getInboxIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "HSPGoogle"

    const-string v2, "receive requests intent"

  #  invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

  #  invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

   # invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const-string v0, "HSPGoogle"

    const-string v1, "receive requests intent is null"

  #  invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static sendRequests(I[BILandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/toastgamenew/hsp/google/HSPGoogle;->checkGoogleLogin()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    invoke-static {}, Lcom/toastgamenew/hsp/google/HSPGoogle;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    move v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/request/Requests;->getSendIntent(Lcom/google/android/gms/common/api/GoogleApiClient;I[BILandroid/graphics/Bitmap;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "HSPGoogle"

    const-string v2, "send requests intent"

  #  invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

  #  invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

  #  invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const-string v0, "HSPGoogle"

    const-string v1, "send requests intent is null"

 #   invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showAchievements()V
    .locals 3

    invoke-static {}, Lcom/toastgamenew/hsp/google/HSPGoogle;->checkGoogleLogin()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-static {}, Lcom/toastgamenew/hsp/google/HSPGoogle;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/achievement/Achievements;->getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "HSPGoogle"

    const-string v2, "show achievements intent"

 #   invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

  #  invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

  #  invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x232a

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const-string v0, "HSPGoogle"

    const-string v1, "show achievements intent is null"

  #  invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showAllLeaderBoards()V
    .locals 3

    invoke-static {}, Lcom/toastgamenew/hsp/google/HSPGoogle;->checkGoogleLogin()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-static {}, Lcom/toastgamenew/hsp/google/HSPGoogle;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getAllLeaderboardsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "HSPGoogle"

    const-string v2, "show leaderboard intent"

  #  invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

  #  invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

  #  invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x232a

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const-string v0, "HSPGoogle"

    const-string v1, "show leaderboard intent is null"

  #  invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showLeaderBoards(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/toastgamenew/hsp/google/HSPGoogle;->checkGoogleLogin()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-static {}, Lcom/toastgamenew/hsp/google/HSPGoogle;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getLeaderboardIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "HSPGoogle"

    const-string v2, "show leaderboard intent"

  #  invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

  #  invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

   # invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x232a

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const-string v0, "HSPGoogle"

    const-string v1, "show leaderboard intent is null"

   # invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static submitScore(Ljava/lang/String;J)V
    .locals 3

    invoke-static {}, Lcom/toastgamenew/hsp/google/HSPGoogle;->checkGoogleLogin()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    invoke-static {}, Lcom/toastgamenew/hsp/google/HSPGoogle;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScoreImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_0
.end method

.method public static unlockAchievement(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/toastgamenew/hsp/google/HSPGoogle;->checkGoogleLogin()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    invoke-static {}, Lcom/toastgamenew/hsp/google/HSPGoogle;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/games/achievement/Achievements;->unlockImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_0
.end method
