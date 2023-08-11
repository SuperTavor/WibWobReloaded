.class final Lcom/example/util/cg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0

    iput p1, p0, Lcom/example/util/cg;->a:I

    iput p2, p0, Lcom/example/util/cg;->b:I

    iput p3, p0, Lcom/example/util/cg;->c:I

    iput p4, p0, Lcom/example/util/cg;->d:I

    iput p5, p0, Lcom/example/util/cg;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->c()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/example/util/cg;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/util/YWPWebView2;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/example/util/cg;->b:I

    iget v2, p0, Lcom/example/util/cg;->c:I

    iget v3, p0, Lcom/example/util/cg;->d:I

    iget v4, p0, Lcom/example/util/cg;->e:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/example/util/YWPWebView2;->setWebViewRect(IIII)V

    :cond_0
    return-void
.end method
