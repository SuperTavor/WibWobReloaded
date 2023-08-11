.class Lcom/hangame/hsp/payment/kakao/KakaoIAPView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/kakao/KakaoIAPView;

.field final synthetic val$developerPayload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/kakao/KakaoIAPView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$2;->this$0:Lcom/hangame/hsp/payment/kakao/KakaoIAPView;

    iput-object p2, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$2;->val$developerPayload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string v0, "KakaoIAPView"

    const-string v1, "kakao.startPaymentActivity()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$2;->this$0:Lcom/hangame/hsp/payment/kakao/KakaoIAPView;

    iget-object v0, v0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->kakao:Lcom/kakao/api/Kakao;

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->access$100()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$2;->this$0:Lcom/hangame/hsp/payment/kakao/KakaoIAPView;

    invoke-static {v4}, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->access$200(Lcom/hangame/hsp/payment/kakao/KakaoIAPView;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$2;->this$0:Lcom/hangame/hsp/payment/kakao/KakaoIAPView;

    invoke-static {v5}, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->access$300(Lcom/hangame/hsp/payment/kakao/KakaoIAPView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$2;->val$developerPayload:Ljava/lang/String;

    iget-object v7, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$2;->this$0:Lcom/hangame/hsp/payment/kakao/KakaoIAPView;

    invoke-static {v7}, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->access$400(Lcom/hangame/hsp/payment/kakao/KakaoIAPView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/kakao/api/Kakao;->startPaymentActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
