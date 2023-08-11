.class final Lcom/example/util/cc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/example/util/cc;->a:I

    iput-object p2, p0, Lcom/example/util/cc;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/example/util/cc;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/example/util/cc;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/example/util/cc;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x2

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->c()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/example/util/cc;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/example/util/YWPWebView2;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->c()Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lcom/example/util/cc;->a:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v1}, Lcom/example/util/YWPWebView2;->destroy()V

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->b()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    new-instance v0, Lcom/example/util/YWPWebView2;

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->a()Lcom/example/sgf/MainActivity;

    move-result-object v2

    iget v3, p0, Lcom/example/util/cc;->a:I

    invoke-direct {v0, v2, v3, v1}, Lcom/example/util/YWPWebView2;-><init>(Landroid/content/Context;ILcom/example/util/YWPWebView2;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->b()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5}, Lcom/example/util/YWPWebView2;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->c()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/example/util/cc;->a:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/example/util/YWPWebView2;->setWebViewRect()V

    iget-object v1, p0, Lcom/example/util/cc;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/example/util/cc;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/example/util/cc;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/example/util/cc;->e:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/example/util/YWPWebView2;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
