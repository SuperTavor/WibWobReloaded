.class final Lcom/example/util/ch;
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

    iput p1, p0, Lcom/example/util/ch;->a:I

    iput-object p2, p0, Lcom/example/util/ch;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/example/util/ch;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/example/util/ch;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/example/util/ch;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/example/util/YWPWebViewHelper2;->c()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/example/util/ch;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/util/YWPWebView2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/example/util/ch;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/example/util/ch;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/example/util/ch;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/example/util/ch;->e:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/example/util/YWPWebView2;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
