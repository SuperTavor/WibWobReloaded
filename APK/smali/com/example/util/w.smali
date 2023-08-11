.class Lcom/example/util/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Lcom/example/util/YWPEditBoxDialog;


# direct methods
.method constructor <init>(Lcom/example/util/YWPEditBoxDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/w;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/example/util/w;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-static {v0}, Lcom/example/util/YWPEditBoxDialog;->a(Lcom/example/util/YWPEditBoxDialog;)Lcom/example/util/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/util/af;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eq p5, p9, :cond_3

    if-eqz p9, :cond_3

    invoke-static {}, Lcom/example/util/YWPEditBoxDialog;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "layout!!"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLayoutChange!!!!bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldBottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/example/util/w;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-static {v2, v1}, Lcom/example/util/YWPEditBoxDialog;->a(Lcom/example/util/YWPEditBoxDialog;I)I

    if-ge p5, p9, :cond_1

    iget-object v2, p0, Lcom/example/util/w;->a:Lcom/example/util/YWPEditBoxDialog;

    sub-int v3, p5, p9

    invoke-static {v2, v3}, Lcom/example/util/YWPEditBoxDialog;->a(Lcom/example/util/YWPEditBoxDialog;I)I

    :cond_1
    invoke-static {}, Lcom/example/util/YWPEditBoxDialog;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "layout!!!"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "from="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int v5, p5, p9

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x4

    iput v3, v2, Landroid/os/Message;->what:I

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/example/util/w;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-static {v0}, Lcom/example/util/YWPEditBoxDialog;->b(Lcom/example/util/YWPEditBoxDialog;)I

    move-result v0

    if-nez v0, :cond_4

    sub-int v0, p5, p9

    :goto_0
    add-int/2addr v0, v3

    iput v0, v2, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/example/util/YWPEditBoxDialog;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method
