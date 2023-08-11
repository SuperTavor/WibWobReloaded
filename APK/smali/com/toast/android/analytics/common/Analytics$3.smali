.class final Lcom/toast/android/analytics/common/Analytics$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/toast/android/analytics/common/utils/InformationUtil$IOnLoadInformation;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/common/Analytics$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    sget-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/toast/android/analytics/common/Analytics;->sDeviceIdCollected:Z

    invoke-static {}, Lcom/toast/android/analytics/common/Analytics;->access$100()V

    invoke-static {}, Lcom/toast/android/analytics/promotion/PromotionManager;->getInstance()Lcom/toast/android/analytics/promotion/PromotionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/toast/android/analytics/promotion/PromotionManager;->onDeviceIdCollect()V

    iget-object v0, p0, Lcom/toast/android/analytics/common/Analytics$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/toast/android/analytics/googleplayservices/GooglePlayServicesManager;->onDeviceIdCollect(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
