.class public Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity$GoogleCB;
.super Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;


# static fields
.field private static final TAG:Ljava/lang/String; = "GoogleCB"


# instance fields
.field final synthetic this$0:Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;


# direct methods
.method public constructor <init>(Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity$GoogleCB;->this$0:Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;

    invoke-direct {p0}, Lcom/toastgamenew/hsp/auth/login/LoginUtilCB;-><init>()V

    return-void
.end method


# virtual methods
.method protected onIdpLogout()V
    .locals 2

    const-string v0, "GoogleCB"

    const-string v1, "onIdpLogout"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->googleLogout()V

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->INIT:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    invoke-static {v0}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->setGGLoginResultType(Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;)V

    return-void
.end method

.method protected onOAuthLoginListener(Lcom/hangame/hsp/HSPResult;)V
    .locals 3

    const-string v0, "GoogleCB"

    const-string v1, "onOAuthLoginListener"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->INIT:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    invoke-static {v0}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService;->setGGLoginResultType(Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;)V

    iget-object v0, p0, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity$GoogleCB;->this$0:Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity$GoogleCB;->this$0:Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;

    invoke-virtual {v2}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->setResult(ILandroid/content/Intent;)V

    invoke-static {}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->requestDestroy()V

    return-void
.end method
