.class Lcom/hangame/hsp/payment/kakao/KakaoIAPView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/kakao/KakaoIAPView;

.field final synthetic val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/kakao/KakaoIAPView;Lcom/hangame/hsp/payment/core/model/ClientStatusData;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$1;->this$0:Lcom/hangame/hsp/payment/kakao/KakaoIAPView;

    iput-object p2, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    const-string v1, "kakao\'s sdk payment start."

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-static {v0}, Lcom/hangame/hsp/payment/core/manager/ServerRequestManager;->writeLog(Lcom/hangame/hsp/payment/core/model/ClientStatusData;)Lcom/hangame/hsp/payment/core/model/HSPPaymentResult;

    return-void
.end method
