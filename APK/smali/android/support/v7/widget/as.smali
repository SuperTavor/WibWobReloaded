.class Landroid/support/v7/widget/as;
.super Landroid/support/v7/widget/bu;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/au;

.field final synthetic b:Landroid/support/v7/widget/ar;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ar;Landroid/view/View;Landroid/support/v7/widget/au;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/as;->b:Landroid/support/v7/widget/ar;

    iput-object p3, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/au;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/bu;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/widget/bp;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/au;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/as;->b:Landroid/support/v7/widget/ar;

    invoke-static {v0}, Landroid/support/v7/widget/ar;->a(Landroid/support/v7/widget/ar;)Landroid/support/v7/widget/au;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/as;->b:Landroid/support/v7/widget/ar;

    invoke-static {v0}, Landroid/support/v7/widget/ar;->a(Landroid/support/v7/widget/ar;)Landroid/support/v7/widget/au;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->c()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
