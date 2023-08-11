.class Landroid/support/v4/app/as;
.super Landroid/support/v4/app/at;


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Landroid/support/v4/app/ap;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ap;Landroid/view/View;Landroid/view/animation/Animation;Landroid/support/v4/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/as;->b:Landroid/support/v4/app/ap;

    iput-object p4, p0, Landroid/support/v4/app/as;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, p2, p3}, Landroid/support/v4/app/at;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/at;->onAnimationEnd(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/support/v4/app/as;->a:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/as;->a:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v4/app/as;->b:Landroid/support/v4/app/ap;

    iget-object v1, p0, Landroid/support/v4/app/as;->a:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Landroid/support/v4/app/as;->a:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/ap;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_0
    return-void
.end method
