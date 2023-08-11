.class final Lcom/hangame/hsp/ui/DialogManager$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Landroid/webkit/JsResult;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/DialogManager$6;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/ui/DialogManager$6;->val$result:Landroid/webkit/JsResult;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeDialog()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/ui/DialogManager$6;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    goto :goto_0
.end method
