.class Lcom/hangame/hsp/cgp/core/CGPService$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/cgp/core/CGPService$1;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/cgp/core/CGPService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/core/CGPService$1$1;->this$1:Lcom/hangame/hsp/cgp/core/CGPService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "CGPService"

    const-string v1, "Fail to run the requestPromotion. : because user don\'t accept Google Play Service"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
