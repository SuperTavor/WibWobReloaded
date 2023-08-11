.class final Lcom/example/util/cb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/example/util/cb;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, -0x2

    new-instance v0, Lcom/example/util/YWPWebView2;

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->a()Lcom/example/sgf/MainActivity;

    move-result-object v1

    iget v2, p0, Lcom/example/util/cb;->a:I

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->b()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/example/util/YWPWebView2;-><init>(Landroid/content/Context;ILandroid/widget/FrameLayout;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->b()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/example/util/YWPWebView2;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->c()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/example/util/cb;->a:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
