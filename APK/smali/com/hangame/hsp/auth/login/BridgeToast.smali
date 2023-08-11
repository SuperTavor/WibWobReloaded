.class Lcom/hangame/hsp/auth/login/BridgeToast;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static showToast(Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberNickname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/hangame/hsp/auth/login/BridgeToast$1;

    invoke-direct {v1, p0, v0}, Lcom/hangame/hsp/auth/login/BridgeToast$1;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
