.class Lcom/hangame/hsp/payment/core/manager/CallbackManager$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/core/manager/CallbackManager$4;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/core/manager/CallbackManager$4;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/manager/CallbackManager$4$1;->this$0:Lcom/hangame/hsp/payment/core/manager/CallbackManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
