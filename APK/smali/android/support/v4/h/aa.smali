.class Landroid/support/v4/h/aa;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/view/LayoutInflater;Landroid/support/v4/h/af;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/v4/h/ab;

    invoke-direct {v0, p1}, Landroid/support/v4/h/ab;-><init>(Landroid/support/v4/h/af;)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
