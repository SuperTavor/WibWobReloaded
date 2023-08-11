.class Lcom/hangame/hsp/cgp/core/CGPService$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/cgp/core/CGPService$8;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/cgp/core/CGPService$8;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/core/CGPService$8$1;->this$0:Lcom/hangame/hsp/cgp/core/CGPService$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    const-string v1, "CGPService"

    const-string v2, "Success to get ad id"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/cgp/core/CGPService;->access$302(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService$8$1;->this$0:Lcom/hangame/hsp/cgp/core/CGPService$8;

    iget-object v0, v0, Lcom/hangame/hsp/cgp/core/CGPService$8;->val$result:Ljava/util/HashMap;

    const-string v1, "EXTERNAL_DEVICEID"

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/hangame/hsp/cgp/core/CGPService$8$1$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/cgp/core/CGPService$8$1$1;-><init>(Lcom/hangame/hsp/cgp/core/CGPService$8$1;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CGPService"

    const-string v2, "Fail to run the requestPromotion. : get ad id"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/hangame/hsp/cgp/core/CGPService$8$1$2;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/cgp/core/CGPService$8$1$2;-><init>(Lcom/hangame/hsp/cgp/core/CGPService$8$1;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeAllProgressDialog()V

    goto :goto_0
.end method
