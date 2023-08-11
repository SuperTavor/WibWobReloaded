.class Lcom/hangame/hsp/ui/DialogManager$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/ui/DialogManager$7;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/DialogManager$7;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/DialogManager$7$1;->this$0:Lcom/hangame/hsp/ui/DialogManager$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/DialogManager$7$1;->this$0:Lcom/hangame/hsp/ui/DialogManager$7;

    iget-object v0, v0, Lcom/hangame/hsp/ui/DialogManager$7;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method
