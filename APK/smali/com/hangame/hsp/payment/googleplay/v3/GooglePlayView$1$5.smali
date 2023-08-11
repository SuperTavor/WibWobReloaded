.class Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$5;->this$1:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$5$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$5$1;-><init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$5;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->closeGooglePlayView()V

    return-void
.end method
