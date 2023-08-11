.class Lcom/hangame/hsp/payment/kakao/KakaoIAPView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/kakao/KakaoIAPView;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/kakao/KakaoIAPView;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$3;->this$0:Lcom/hangame/hsp/payment/kakao/KakaoIAPView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$3$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/payment/kakao/KakaoIAPView$3$1;-><init>(Lcom/hangame/hsp/payment/kakao/KakaoIAPView$3;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/hangame/hsp/payment/kakao/KakaoIAPView;->closeIAPView()V

    return-void
.end method
