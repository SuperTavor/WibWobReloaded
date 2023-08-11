.class public Landroid/support/v4/app/bo;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/support/v4/app/bw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/app/by;

    invoke-direct {v0}, Landroid/support/v4/app/by;-><init>()V

    sput-object v0, Landroid/support/v4/app/bo;->a:Landroid/support/v4/app/bw;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/app/bx;

    invoke-direct {v0}, Landroid/support/v4/app/bx;-><init>()V

    sput-object v0, Landroid/support/v4/app/bo;->a:Landroid/support/v4/app/bw;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/app/ce;

    invoke-direct {v0}, Landroid/support/v4/app/ce;-><init>()V

    sput-object v0, Landroid/support/v4/app/bo;->a:Landroid/support/v4/app/bw;

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/app/cd;

    invoke-direct {v0}, Landroid/support/v4/app/cd;-><init>()V

    sput-object v0, Landroid/support/v4/app/bo;->a:Landroid/support/v4/app/bw;

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    new-instance v0, Landroid/support/v4/app/cc;

    invoke-direct {v0}, Landroid/support/v4/app/cc;-><init>()V

    sput-object v0, Landroid/support/v4/app/bo;->a:Landroid/support/v4/app/bw;

    goto :goto_0

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    new-instance v0, Landroid/support/v4/app/cb;

    invoke-direct {v0}, Landroid/support/v4/app/cb;-><init>()V

    sput-object v0, Landroid/support/v4/app/bo;->a:Landroid/support/v4/app/bw;

    goto :goto_0

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    new-instance v0, Landroid/support/v4/app/ca;

    invoke-direct {v0}, Landroid/support/v4/app/ca;-><init>()V

    sput-object v0, Landroid/support/v4/app/bo;->a:Landroid/support/v4/app/bw;

    goto :goto_0

    :cond_6
    new-instance v0, Landroid/support/v4/app/bz;

    invoke-direct {v0}, Landroid/support/v4/app/bz;-><init>()V

    sput-object v0, Landroid/support/v4/app/bo;->a:Landroid/support/v4/app/bw;

    goto :goto_0
.end method

.method static synthetic a()Landroid/support/v4/app/bw;
    .locals 1

    sget-object v0, Landroid/support/v4/app/bo;->a:Landroid/support/v4/app/bw;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/app/bm;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/app/bo;->b(Landroid/support/v4/app/bm;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/bn;Landroid/support/v4/app/cf;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/app/bo;->b(Landroid/support/v4/app/bn;Landroid/support/v4/app/cf;)V

    return-void
.end method

.method private static b(Landroid/support/v4/app/bm;Ljava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bp;

    invoke-interface {p0, v0}, Landroid/support/v4/app/bm;->a(Landroid/support/v4/app/cl;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static b(Landroid/support/v4/app/bn;Landroid/support/v4/app/cf;)V
    .locals 7

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/support/v4/app/bs;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v4/app/bs;

    iget-object v0, p1, Landroid/support/v4/app/bs;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/bs;->g:Z

    iget-object v2, p1, Landroid/support/v4/app/bs;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/bs;->a:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/cr;->a(Landroid/support/v4/app/bn;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Landroid/support/v4/app/bv;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/support/v4/app/bv;

    iget-object v0, p1, Landroid/support/v4/app/bv;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/bv;->g:Z

    iget-object v2, p1, Landroid/support/v4/app/bv;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/bv;->a:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/cr;->a(Landroid/support/v4/app/bn;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/support/v4/app/br;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/app/br;

    iget-object v1, p1, Landroid/support/v4/app/br;->e:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Landroid/support/v4/app/br;->g:Z

    iget-object v3, p1, Landroid/support/v4/app/br;->f:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/br;->a:Landroid/graphics/Bitmap;

    iget-object v5, p1, Landroid/support/v4/app/br;->b:Landroid/graphics/Bitmap;

    iget-boolean v6, p1, Landroid/support/v4/app/br;->c:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v4/app/cr;->a(Landroid/support/v4/app/bn;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method
