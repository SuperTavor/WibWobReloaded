.class public final Lcom/hangame/hsp/ui/InternalHSPUiUri;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAuthView(Lcom/hangame/hsp/ui/HSPUiUri;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/hangame/hsp/ui/HSPUiUri;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auth."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSupportsView(Lcom/hangame/hsp/ui/HSPUiUri;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/hangame/hsp/ui/HSPUiUri;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "supports"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
