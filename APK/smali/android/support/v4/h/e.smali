.class Landroid/support/v4/h/e;
.super Landroid/support/v4/h/b;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/h/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroid/view/View;)Landroid/support/v4/h/a/r;
    .locals 2

    invoke-static {p1, p2}, Landroid/support/v4/h/k;->a(Ljava/lang/Object;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/support/v4/h/a/r;

    invoke-direct {v0, v1}, Landroid/support/v4/h/a/r;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v4/h/a;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v4/h/f;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/h/f;-><init>(Landroid/support/v4/h/e;Landroid/support/v4/h/a;)V

    invoke-static {v0}, Landroid/support/v4/h/k;->a(Landroid/support/v4/h/m;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/h/k;->a(Ljava/lang/Object;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
