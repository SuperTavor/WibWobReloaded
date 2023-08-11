.class Lcom/hangame/hsp/payment/tstore/TStorePurchase$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/tstore/TStorePurchase;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/tstore/TStorePurchase$2;->this$0:Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "false"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getConfiguration()Lcom/hangame/hsp/HSPConfiguration;

    move-result-object v1

    const-string v2, "HSP_PAYMENT_TSTORE_IS_REAL"

    invoke-virtual {v1, v2}, Lcom/hangame/hsp/HSPConfiguration;->getConfigurationItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TStorePurchase"

    const-string v1, "TStore is alpha !!!!!!!!"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    invoke-static {v0, v1}, Lcom/skplanet/dodo/IapPlugin;->getPlugin(Landroid/content/Context;Ljava/lang/String;)Lcom/skplanet/dodo/IapPlugin;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->access$002(Lcom/skplanet/dodo/IapPlugin;)Lcom/skplanet/dodo/IapPlugin;

    :goto_0
    return-void

    :cond_0
    const-string v0, "TStorePurchase"

    const-string v1, "TStore is real !!!!!!!!"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/skplanet/dodo/IapPlugin;->getPlugin(Landroid/content/Context;Ljava/lang/String;)Lcom/skplanet/dodo/IapPlugin;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->access$002(Lcom/skplanet/dodo/IapPlugin;)Lcom/skplanet/dodo/IapPlugin;

    goto :goto_0
.end method
