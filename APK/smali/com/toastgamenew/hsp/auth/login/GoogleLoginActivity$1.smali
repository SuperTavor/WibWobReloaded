.class Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;


# direct methods
.method constructor <init>(Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity$1;->this$0:Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity$1;->this$0:Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;

    invoke-virtual {v0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->getAndUseAuthTokenBlocking()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity$1;->this$0:Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;

    const/16 v1, 0xc8

    iget-object v2, p0, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity$1;->this$0:Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;

    invoke-virtual {v2}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity$1;->this$0:Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;

    invoke-virtual {v0}, Lcom/toastgamenew/hsp/auth/login/GoogleLoginActivity;->finish()V

    goto :goto_0
.end method
