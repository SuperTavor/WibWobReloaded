.class final Lcom/example/util/ce;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lcom/example/util/ce;->a:I

    iput-boolean p2, p0, Lcom/example/util/ce;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->c()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/example/util/ce;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/util/YWPWebView2;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/example/util/ce;->b:Z

    invoke-virtual {v0, v1}, Lcom/example/util/YWPWebView2;->setGVisibility(Z)V

    :cond_0
    return-void
.end method
