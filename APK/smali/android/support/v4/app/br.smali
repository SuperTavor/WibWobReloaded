.class public Landroid/support/v4/app/br;
.super Landroid/support/v4/app/cf;


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/cf;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/bt;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/cf;-><init>()V

    invoke-virtual {p0, p1}, Landroid/support/v4/app/br;->a(Landroid/support/v4/app/bt;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/br;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/br;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/br;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/bt;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/br;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Landroid/graphics/Bitmap;)Landroid/support/v4/app/br;
    .locals 1

    iput-object p1, p0, Landroid/support/v4/app/br;->b:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/br;->c:Z

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v4/app/br;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/bt;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/br;->f:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/br;->g:Z

    return-object p0
.end method
