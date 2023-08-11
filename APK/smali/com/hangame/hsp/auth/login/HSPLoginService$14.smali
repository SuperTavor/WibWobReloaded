.class final Lcom/hangame/hsp/auth/login/HSPLoginService$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$handler:Lcom/hangame/hsp/core/HSPResHandler;

.field final synthetic val$oAuthData:Lcom/hangame/hsp/auth/OAuthData;

.field final synthetic val$oAuthProvider:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/auth/login/HSPLoginService$14;->val$oAuthProvider:Ljava/lang/String;

    iput-object p2, p0, Lcom/hangame/hsp/auth/login/HSPLoginService$14;->val$oAuthData:Lcom/hangame/hsp/auth/OAuthData;

    iput-object p3, p0, Lcom/hangame/hsp/auth/login/HSPLoginService$14;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/auth/login/HSPLoginService$14;->val$oAuthProvider:Ljava/lang/String;

    iget-object v1, p0, Lcom/hangame/hsp/auth/login/HSPLoginService$14;->val$oAuthData:Lcom/hangame/hsp/auth/OAuthData;

    invoke-static {v0, v1}, Lcom/hangame/hsp/auth/login/HSPSilosService;->importByOAuth(Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/auth/login/HSPLoginService$14;->val$handler:Lcom/hangame/hsp/core/HSPResHandler;

    invoke-static {v1, v2, v0, v2}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V

    return-void
.end method
