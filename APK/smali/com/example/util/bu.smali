.class final Lcom/example/util/bu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/example/util/bu;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->c()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/example/util/bu;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/util/YWPWebView2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/example/util/YWPWebView2;->getEnableCustomFont()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/example/util/YWPWebView2;->canGoBackOrForward(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/example/util/bu;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
