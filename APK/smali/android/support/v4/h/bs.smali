.class Landroid/support/v4/h/bs;
.super Landroid/support/v4/h/bq;


# static fields
.field static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/h/bs;->b:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/h/bq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/h/a;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/h/cd;->a(Landroid/view/View;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/h/a;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public j(Landroid/view/View;)Landroid/support/v4/h/cw;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/h/bs;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/h/bs;->a:Ljava/util/WeakHashMap;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/h/bs;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/h/cw;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/h/cw;

    invoke-direct {v0, p1}, Landroid/support/v4/h/cw;-><init>(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v4/h/bs;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
