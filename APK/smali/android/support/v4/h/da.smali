.class Landroid/support/v4/h/da;
.super Landroid/support/v4/h/cy;


# instance fields
.field b:Ljava/util/WeakHashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/h/cy;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/h/da;->b:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/h/cw;Landroid/view/View;)V
    .locals 0

    invoke-static {p2}, Landroid/support/v4/h/dh;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/support/v4/h/cw;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/h/dh;->a(Landroid/view/View;F)V

    return-void
.end method

.method public a(Landroid/support/v4/h/cw;Landroid/view/View;Landroid/support/v4/h/dl;)V
    .locals 1

    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v0, Landroid/support/v4/h/db;

    invoke-direct {v0, p1}, Landroid/support/v4/h/db;-><init>(Landroid/support/v4/h/cw;)V

    invoke-static {p2, v0}, Landroid/support/v4/h/dh;->a(Landroid/view/View;Landroid/support/v4/h/dl;)V

    return-void
.end method
