.class Landroid/support/b/a/q;
.super Ljava/lang/Object;


# instance fields
.field protected m:[Landroid/support/b/a/i;

.field n:Ljava/lang/String;

.field o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/b/a/q;->m:[Landroid/support/b/a/i;

    return-void
.end method

.method public constructor <init>(Landroid/support/b/a/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/b/a/q;->m:[Landroid/support/b/a/i;

    iget-object v0, p1, Landroid/support/b/a/q;->n:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/b/a/q;->n:Ljava/lang/String;

    iget v0, p1, Landroid/support/b/a/q;->o:I

    iput v0, p0, Landroid/support/b/a/q;->o:I

    iget-object v0, p1, Landroid/support/b/a/q;->m:[Landroid/support/b/a/i;

    invoke-static {v0}, Landroid/support/b/a/f;->a([Landroid/support/b/a/i;)[Landroid/support/b/a/i;

    move-result-object v0

    iput-object v0, p0, Landroid/support/b/a/q;->m:[Landroid/support/b/a/i;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Landroid/support/b/a/q;->m:[Landroid/support/b/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/b/a/q;->m:[Landroid/support/b/a/i;

    invoke-static {v0, p1}, Landroid/support/b/a/i;->a([Landroid/support/b/a/i;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/b/a/q;->n:Ljava/lang/String;

    return-object v0
.end method
