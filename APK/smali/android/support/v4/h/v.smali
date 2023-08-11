.class public final Landroid/support/v4/h/v;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/h/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/h/z;

    invoke-direct {v0}, Landroid/support/v4/h/z;-><init>()V

    sput-object v0, Landroid/support/v4/h/v;->a:Landroid/support/v4/h/w;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/h/y;

    invoke-direct {v0}, Landroid/support/v4/h/y;-><init>()V

    sput-object v0, Landroid/support/v4/h/v;->a:Landroid/support/v4/h/w;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/h/x;

    invoke-direct {v0}, Landroid/support/v4/h/x;-><init>()V

    sput-object v0, Landroid/support/v4/h/v;->a:Landroid/support/v4/h/w;

    goto :goto_0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/support/v4/h/af;)V
    .locals 1

    sget-object v0, Landroid/support/v4/h/v;->a:Landroid/support/v4/h/w;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/h/w;->a(Landroid/view/LayoutInflater;Landroid/support/v4/h/af;)V

    return-void
.end method
