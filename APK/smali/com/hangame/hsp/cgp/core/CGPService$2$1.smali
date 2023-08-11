.class Lcom/hangame/hsp/cgp/core/CGPService$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/cgp/core/CGPService$2;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/cgp/core/CGPService$2;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/core/CGPService$2$1;->this$1:Lcom/hangame/hsp/cgp/core/CGPService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    const v7, 0x90004

    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, "CGPService"

    const-string v1, "Google Play Service is limited by User : <Opt out of interest-based ads>"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeAllProgressDialog()V

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService$2$1;->this$1:Lcom/hangame/hsp/cgp/core/CGPService$2;

    iget-object v0, v0, Lcom/hangame/hsp/cgp/core/CGPService$2;->val$callback:Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;

    const-string v1, "CGPSERVICE"

    const v2, 0x90004

    const-string v3, "user don\'t let us use AD_ID"

    invoke-static {v1, v2, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/cgp/core/CGPService$2$1;->this$1:Lcom/hangame/hsp/cgp/core/CGPService$2;

    iget-object v2, v2, Lcom/hangame/hsp/cgp/core/CGPService$2;->val$context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;->onCheckPromotion(Lcom/hangame/hsp/HSPResult;Ljava/lang/Object;Lcom/hangame/hsp/cgp/model/PromotionState;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "CGPService"

    const-string v2, "Success to get ad id"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/cgp/core/CGPService;->access$002(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "deviceId"

    invoke-static {}, Lcom/hangame/hsp/cgp/core/CGPService;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "memberNo"

    iget-object v2, p0, Lcom/hangame/hsp/cgp/core/CGPService$2$1;->this$1:Lcom/hangame/hsp/cgp/core/CGPService$2;

    iget-object v2, v2, Lcom/hangame/hsp/cgp/core/CGPService$2;->this$0:Lcom/hangame/hsp/cgp/core/CGPService;

    invoke-static {v2}, Lcom/hangame/hsp/cgp/core/CGPService;->access$100(Lcom/hangame/hsp/cgp/core/CGPService;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gameNo"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gameVersion"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceInfo"

    sget-object v2, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;->ANDROID:Lcom/hangame/hsp/cgp/constant/CGPType$OSType;

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/CGPServer/CheckPromotion"

    new-instance v2, Lcom/hangame/hsp/cgp/request/HttpRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/hangame/hsp/cgp/core/CGPService$2$1;->this$1:Lcom/hangame/hsp/cgp/core/CGPService$2;

    iget-object v4, v4, Lcom/hangame/hsp/cgp/core/CGPService$2;->this$0:Lcom/hangame/hsp/cgp/core/CGPService;

    invoke-static {v4}, Lcom/hangame/hsp/cgp/core/CGPService;->access$200(Lcom/hangame/hsp/cgp/core/CGPService;)Lcom/hangame/hsp/cgp/response/CGPServerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hangame/hsp/cgp/response/CGPServerInfo;->getCgpServerUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/hangame/hsp/cgp/request/HttpRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "CGPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPromotion "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/hangame/hsp/cgp/request/HttpRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService$2$1;->this$1:Lcom/hangame/hsp/cgp/core/CGPService$2;

    iget-object v3, v0, Lcom/hangame/hsp/cgp/core/CGPService$2;->val$context:Landroid/content/Context;

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService$2$1;->this$1:Lcom/hangame/hsp/cgp/core/CGPService$2;

    iget-object v6, v0, Lcom/hangame/hsp/cgp/core/CGPService$2;->val$callback:Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;

    invoke-direct/range {v1 .. v6}, Lcom/hangame/hsp/cgp/command/CheckPromotionCommand;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;)V

    invoke-static {v1}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CGPService"

    const-string v2, "Fail to run the requestPromotion. : get ad id"

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeAllProgressDialog()V

    iget-object v0, p0, Lcom/hangame/hsp/cgp/core/CGPService$2$1;->this$1:Lcom/hangame/hsp/cgp/core/CGPService$2;

    iget-object v0, v0, Lcom/hangame/hsp/cgp/core/CGPService$2;->val$callback:Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;

    const-string v1, "CGPSERVICE"

    const-string v2, "there is something error when we get AD_ID from Google Lib"

    invoke-static {v1, v7, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/cgp/core/CGPService$2$1;->this$1:Lcom/hangame/hsp/cgp/core/CGPService$2;

    iget-object v2, v2, Lcom/hangame/hsp/cgp/core/CGPService$2;->val$context:Landroid/content/Context;

    invoke-interface {v0, v1, v2, v8}, Lcom/hangame/hsp/cgp/HSPCGP$CheckPromotionCB;->onCheckPromotion(Lcom/hangame/hsp/HSPResult;Ljava/lang/Object;Lcom/hangame/hsp/cgp/model/PromotionState;)V

    goto/16 :goto_0
.end method
