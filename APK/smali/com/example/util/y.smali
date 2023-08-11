.class Lcom/example/util/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/example/util/YWPEditBoxDialog;


# direct methods
.method constructor <init>(Lcom/example/util/YWPEditBoxDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/y;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    if-nez p2, :cond_0

    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/example/util/y;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-static {v0}, Lcom/example/util/YWPEditBoxDialog;->a(Lcom/example/util/YWPEditBoxDialog;)Lcom/example/util/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/util/af;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPEditBoxHandler;->setEditTextDialogResult(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/example/util/y;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-static {v0}, Lcom/example/util/YWPEditBoxDialog;->d(Lcom/example/util/YWPEditBoxDialog;)V

    iget-object v0, p0, Lcom/example/util/y;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-virtual {v0}, Lcom/example/util/YWPEditBoxDialog;->dismiss()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
