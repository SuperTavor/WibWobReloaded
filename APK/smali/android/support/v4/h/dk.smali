.class final Landroid/support/v4/h/dk;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Landroid/support/v4/h/dl;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/h/dl;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/h/dk;->a:Landroid/support/v4/h/dl;

    iput-object p2, p0, Landroid/support/v4/h/dk;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/h/dk;->a:Landroid/support/v4/h/dl;

    iget-object v1, p0, Landroid/support/v4/h/dk;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/h/dl;->c(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/h/dk;->a:Landroid/support/v4/h/dl;

    iget-object v1, p0, Landroid/support/v4/h/dk;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/h/dl;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/h/dk;->a:Landroid/support/v4/h/dl;

    iget-object v1, p0, Landroid/support/v4/h/dk;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/h/dl;->a(Landroid/view/View;)V

    return-void
.end method
