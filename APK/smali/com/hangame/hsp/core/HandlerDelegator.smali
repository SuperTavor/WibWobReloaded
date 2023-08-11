.class public final Lcom/hangame/hsp/core/HandlerDelegator;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HandlerDelegator"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delegateEventHolder(Lcom/hangame/hsp/core/HSPHttpResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPHttpResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V

    return-void
.end method

.method public static delegateEventHolder(Lcom/hangame/hsp/core/HSPHttpResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V
    .locals 6

    if-eqz p0, :cond_0

    new-instance v0, Lcom/hangame/hsp/core/HandlerDelegator$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hangame/hsp/core/HandlerDelegator$2;-><init>(Lcom/hangame/hsp/core/HSPHttpResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V

    instance-of v1, p0, Lcom/hangame/hsp/core/HSPUiHttpResHandler;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V

    return-void
.end method

.method public static delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lcom/hangame/hsp/core/HandlerDelegator$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hangame/hsp/core/HandlerDelegator$1;-><init>(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V

    instance-of v1, p0, Lcom/hangame/hsp/core/HSPUiResHandler;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
