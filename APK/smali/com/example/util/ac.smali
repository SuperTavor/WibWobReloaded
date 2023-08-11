.class Lcom/example/util/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/example/util/ae;

.field final synthetic c:Lcom/example/util/YWPEditBoxHandler;

.field private final d:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/example/util/YWPEditBoxHandler;Landroid/view/View;Lcom/example/util/ae;)V
    .locals 1

    iput-object p1, p0, Lcom/example/util/ac;->c:Lcom/example/util/YWPEditBoxHandler;

    iput-object p2, p0, Lcom/example/util/ac;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/example/util/ac;->b:Lcom/example/util/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/example/util/ac;->d:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/example/util/ac;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/example/util/ac;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/example/util/ac;->b:Lcom/example/util/ae;

    iget-object v1, p0, Lcom/example/util/ac;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/example/util/ae;->a(I)V

    return-void
.end method
