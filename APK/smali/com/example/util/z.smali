.class Lcom/example/util/z;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/example/util/YWPEditBoxDialog;


# direct methods
.method constructor <init>(Lcom/example/util/YWPEditBoxDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/z;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/example/util/z;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-static {v0}, Lcom/example/util/YWPEditBoxDialog;->a(Lcom/example/util/YWPEditBoxDialog;)Lcom/example/util/af;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/util/z;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-static {v0}, Lcom/example/util/YWPEditBoxDialog;->a(Lcom/example/util/YWPEditBoxDialog;)Lcom/example/util/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/util/af;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPEditBoxHandler;->setEditTextDialogResult(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/example/util/z;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-static {v0}, Lcom/example/util/YWPEditBoxDialog;->d(Lcom/example/util/YWPEditBoxDialog;)V

    iget-object v0, p0, Lcom/example/util/z;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-virtual {v0}, Lcom/example/util/YWPEditBoxDialog;->dismiss()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/example/util/z;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-static {v0}, Lcom/example/util/YWPEditBoxDialog;->a(Lcom/example/util/YWPEditBoxDialog;)Lcom/example/util/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/util/af;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/example/util/z;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-static {v2}, Lcom/example/util/YWPEditBoxDialog;->b(Lcom/example/util/YWPEditBoxDialog;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/example/util/YWPEditBoxDialog;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "EBox"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topMargine="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HANDLER_UPDATE_POSITION"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/example/util/z;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-static {v1}, Lcom/example/util/YWPEditBoxDialog;->a(Lcom/example/util/YWPEditBoxDialog;)Lcom/example/util/af;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/example/util/af;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
