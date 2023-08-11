.class Landroid/support/v7/widget/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field final synthetic b:Landroid/support/v7/widget/au;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/au;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ax;->b:Landroid/support/v7/widget/au;

    iput-object p2, p0, Landroid/support/v7/widget/ax;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/ax;->b:Landroid/support/v7/widget/au;

    iget-object v0, v0, Landroid/support/v7/widget/au;->a:Landroid/support/v7/widget/ar;

    invoke-virtual {v0}, Landroid/support/v7/widget/ar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ax;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
