.class Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$3;->this$1:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1$3;->this$1:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;

    iget-object v0, v0, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView$1;->this$0:Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;

    invoke-static {v0}, Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;->access$400(Lcom/hangame/hsp/payment/googleplay/v3/GooglePlayView;)V

    return-void
.end method
