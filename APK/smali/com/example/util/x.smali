.class Lcom/example/util/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/example/util/YWPEditBoxDialog;


# direct methods
.method constructor <init>(Lcom/example/util/YWPEditBoxDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/x;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/example/util/x;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-static {v0}, Lcom/example/util/YWPEditBoxDialog;->a(Lcom/example/util/YWPEditBoxDialog;)Lcom/example/util/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/util/af;->requestFocus()Z

    iget-object v0, p0, Lcom/example/util/x;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-static {v0}, Lcom/example/util/YWPEditBoxDialog;->a(Lcom/example/util/YWPEditBoxDialog;)Lcom/example/util/af;

    move-result-object v0

    iget-object v1, p0, Lcom/example/util/x;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-static {v1}, Lcom/example/util/YWPEditBoxDialog;->a(Lcom/example/util/YWPEditBoxDialog;)Lcom/example/util/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/example/util/af;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/example/util/af;->setSelection(I)V

    iget-object v0, p0, Lcom/example/util/x;->a:Lcom/example/util/YWPEditBoxDialog;

    invoke-static {v0}, Lcom/example/util/YWPEditBoxDialog;->c(Lcom/example/util/YWPEditBoxDialog;)V

    return-void
.end method
