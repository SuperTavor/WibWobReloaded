.class Landroid/support/v7/widget/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/au;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/au;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/au;

    iget-object v1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/au;

    iget-object v1, v1, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/ar;

    invoke-static {v0, v1}, Landroid/support/v7/widget/au;->a(Landroid/support/v7/widget/au;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/au;

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->i()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/au;

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->b()V

    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v7/widget/au;

    invoke-static {v0}, Landroid/support/v7/widget/au;->b(Landroid/support/v7/widget/au;)V

    goto :goto_0
.end method
