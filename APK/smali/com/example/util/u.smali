.class Lcom/example/util/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/example/util/YWPEditBoxDialog;


# direct methods
.method constructor <init>(Lcom/example/util/YWPEditBoxDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/u;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPEditBoxHandler;->setEditTextChanged(Ljava/lang/String;)V

    return-void
.end method
