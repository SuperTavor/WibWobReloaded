.class final Lcom/example/util/bv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/example/util/bv;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->c()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/example/util/bv;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/util/YWPWebView2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/example/util/YWPWebView2;->getEnableCustomFont()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/example/util/YWPWebView2;->goBackOrForward(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method
