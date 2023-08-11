.class Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;
.super Ljava/lang/Object;


# instance fields
.field private customKey:Ljava/lang/String;

.field private customVal:J

.field private landingUrl:Ljava/lang/String;

.field private promoId:I

.field private startUpImageUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;


# direct methods
.method private constructor <init>(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->this$0:Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;-><init>(Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager;)V

    return-void
.end method


# virtual methods
.method public getCustomKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->customKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomVal()J
    .locals 2

    iget-wide v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->customVal:J

    return-wide v0
.end method

.method public getLandingUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->landingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPromoId()I
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->promoId:I

    return v0
.end method

.method public getStartUpImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->startUpImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomKey(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ToastPromotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Custom Key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->customKey:Ljava/lang/String;

    return-void
.end method

.method public setCustomVal(J)V
    .locals 3

    const-string v0, "ToastPromotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Custom Val : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->customVal:J

    return-void
.end method

.method public setLandingUrl(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ToastPromotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Promotion Page URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->landingUrl:Ljava/lang/String;

    return-void
.end method

.method public setPromoId(I)V
    .locals 3

    const-string v0, "ToastPromotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Promotion ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->promoId:I

    return-void
.end method

.method public setStartUpImageUrl(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ToastPromotion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Button Image URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/toast/android/analytics/toastpromotion/ToastPromotionManager$ToastPromotionInfoVO;->startUpImageUrl:Ljava/lang/String;

    return-void
.end method
