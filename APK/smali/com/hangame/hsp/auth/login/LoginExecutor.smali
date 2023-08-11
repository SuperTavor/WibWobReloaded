.class public final Lcom/hangame/hsp/auth/login/LoginExecutor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginExecutor"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAuthData:Lcom/hangame/hsp/auth/OAuthData;

.field private final mCommandList:Ljava/util/List;

.field private final mHandler:Lcom/hangame/hsp/core/HSPResHandler;

.field private final mManualLogin:Z

.field private mOAuthProvider:Ljava/lang/String;

.field private mOnlyForLnc:Ljava/lang/Boolean;

.field private mServiceUnavailable:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Boolean;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mCommandList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mOnlyForLnc:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mActivity:Landroid/app/Activity;

    iput-boolean v1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mManualLogin:Z

    iput-object p2, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mHandler:Lcom/hangame/hsp/core/HSPResHandler;

    iput-object p3, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mOnlyForLnc:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/hangame/hsp/auth/OAuthData;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mCommandList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mOnlyForLnc:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mActivity:Landroid/app/Activity;

    iput-boolean v1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mManualLogin:Z

    iput-object p4, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mHandler:Lcom/hangame/hsp/core/HSPResHandler;

    iput-boolean v1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mServiceUnavailable:Z

    iput-object p2, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mOAuthProvider:Ljava/lang/String;

    iput-object p3, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mAuthData:Lcom/hangame/hsp/auth/OAuthData;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/hangame/hsp/core/HSPResHandler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mCommandList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mOnlyForLnc:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mActivity:Landroid/app/Activity;

    iput-boolean v1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mManualLogin:Z

    iput-object p3, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mHandler:Lcom/hangame/hsp/core/HSPResHandler;

    iput-boolean v1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mServiceUnavailable:Z

    iput-object p2, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mOAuthProvider:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mAuthData:Lcom/hangame/hsp/auth/OAuthData;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZLcom/hangame/hsp/core/HSPResHandler;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mCommandList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mOnlyForLnc:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mActivity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mManualLogin:Z

    iput-object p3, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mHandler:Lcom/hangame/hsp/core/HSPResHandler;

    iput-boolean v1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mServiceUnavailable:Z

    iput-object v2, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mOAuthProvider:Ljava/lang/String;

    iput-object v2, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mAuthData:Lcom/hangame/hsp/auth/OAuthData;

    return-void
.end method

.method static synthetic access$302(Lcom/hangame/hsp/auth/login/LoginExecutor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mServiceUnavailable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/hangame/hsp/auth/login/LoginExecutor;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hangame/hsp/auth/login/LoginExecutor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mOAuthProvider:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/hangame/hsp/auth/login/LoginExecutor;)Lcom/hangame/hsp/auth/OAuthData;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mAuthData:Lcom/hangame/hsp/auth/OAuthData;

    return-object v0
.end method

.method static synthetic access$700(Lcom/hangame/hsp/auth/login/LoginExecutor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mManualLogin:Z

    return v0
.end method

.method static synthetic access$800(Lcom/hangame/hsp/auth/login/LoginExecutor;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mCommandList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12

    const/16 v10, 0x6001

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/hangame/hsp/core/HSPInternalState;->getCurrentState()Lcom/hangame/hsp/core/HSPInternalState;

    move-result-object v0

    const-string v2, "LoginExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LoginExecutor: state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " manual login: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mManualLogin:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mOnlyForLnc:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mCommandList:Ljava/util/List;

    new-instance v2, Lcom/hangame/hsp/auth/login/LoginExecutor$GetLncInfoCommand;

    invoke-direct {v2, p0, v3}, Lcom/hangame/hsp/auth/login/LoginExecutor$GetLncInfoCommand;-><init>(Lcom/hangame/hsp/auth/login/LoginExecutor;Lcom/hangame/hsp/auth/login/LoginExecutor$1;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    move v2, v4

    move-object v0, v3

    :goto_1
    iget-object v5, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mCommandList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mCommandList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/auth/login/LoginExecutor$Command;

    invoke-interface {v0}, Lcom/hangame/hsp/auth/login/LoginExecutor$Command;->execute()Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->getDetailCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v10, :cond_b

    move v0, v1

    move-object v2, v3

    :goto_2
    move v11, v0

    move-object v0, v2

    move v2, v11

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_LNC_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mCommandList:Ljava/util/List;

    new-instance v2, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;

    invoke-direct {v2, p0, v3}, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;-><init>(Lcom/hangame/hsp/auth/login/LoginExecutor;Lcom/hangame/hsp/auth/login/LoginExecutor$1;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mCommandList:Ljava/util/List;

    new-instance v5, Lcom/hangame/hsp/auth/login/LoginExecutor$GetLncInfoCommand;

    invoke-direct {v5, p0, v3}, Lcom/hangame/hsp/auth/login/LoginExecutor$GetLncInfoCommand;-><init>(Lcom/hangame/hsp/auth/login/LoginExecutor;Lcom/hangame/hsp/auth/login/LoginExecutor$1;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mOAuthProvider:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mCommandList:Ljava/util/List;

    new-instance v2, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;

    invoke-direct {v2, p0, v3}, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;-><init>(Lcom/hangame/hsp/auth/login/LoginExecutor;Lcom/hangame/hsp/auth/login/LoginExecutor$1;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_OFFLINE:Lcom/hangame/hsp/core/HSPInternalState;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mCommandList:Ljava/util/List;

    new-instance v2, Lcom/hangame/hsp/auth/login/LoginExecutor$ResumeCommand;

    invoke-direct {v2, p0, v3}, Lcom/hangame/hsp/auth/login/LoginExecutor$ResumeCommand;-><init>(Lcom/hangame/hsp/auth/login/LoginExecutor;Lcom/hangame/hsp/auth/login/LoginExecutor$1;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_MASHUP_ONLINE:Lcom/hangame/hsp/core/HSPInternalState;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mCommandList:Ljava/util/List;

    new-instance v2, Lcom/hangame/hsp/auth/login/LoginExecutor$ResumeCommand;

    invoke-direct {v2, p0, v3}, Lcom/hangame/hsp/auth/login/LoginExecutor$ResumeCommand;-><init>(Lcom/hangame/hsp/auth/login/LoginExecutor;Lcom/hangame/hsp/auth/login/LoginExecutor$1;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mCommandList:Ljava/util/List;

    new-instance v2, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;

    invoke-direct {v2, p0, v3}, Lcom/hangame/hsp/auth/login/LoginExecutor$LoginCommand;-><init>(Lcom/hangame/hsp/auth/login/LoginExecutor;Lcom/hangame/hsp/auth/login/LoginExecutor$1;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    const-string v0, "LoginExecutor"

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v5}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v5}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    array-length v8, v7

    move v5, v4

    :goto_3
    if-ge v5, v8, :cond_5

    aget-object v6, v7, v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move-object v0, v6

    goto :goto_3

    :cond_5
    const-string v5, "LOGINSERVICE"

    const v6, 0xf001

    invoke-static {v5, v6, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    if-ne v2, v1, :cond_8

    const-string v0, "LOGINSERVICE"

    const/16 v1, 0x100b

    invoke-static {v0, v1, v10}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;II)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mHandler:Lcom/hangame/hsp/core/HSPResHandler;

    invoke-static {v1, v3, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V

    return-void

    :cond_8
    if-nez v0, :cond_9

    const-string v0, "LOGINSERVICE"

    invoke-static {v0}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/hangame/hsp/auth/login/LoginExecutor;->mServiceUnavailable:Z

    if-eqz v1, :cond_a

    sget-object v1, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_UNAVAILABLE:Lcom/hangame/hsp/core/HSPInternalState;

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPInternalState;->setCurrentStateWithUnlock(Lcom/hangame/hsp/core/HSPInternalState;)V

    goto :goto_4

    :cond_a
    sget-object v1, Lcom/hangame/hsp/core/HSPInternalState;->HSP_STATE_INVALID:Lcom/hangame/hsp/core/HSPInternalState;

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPInternalState;->setCurrentStateWithUnlock(Lcom/hangame/hsp/core/HSPInternalState;)V

    goto :goto_4

    :cond_b
    move v11, v2

    move-object v2, v0

    move v0, v11

    goto/16 :goto_2
.end method
