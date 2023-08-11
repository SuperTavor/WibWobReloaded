.class public final Landroid/support/v4/h/bh;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/h/bk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/h/bj;

    invoke-direct {v0}, Landroid/support/v4/h/bj;-><init>()V

    sput-object v0, Landroid/support/v4/h/bh;->a:Landroid/support/v4/h/bk;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/h/bi;

    invoke-direct {v0}, Landroid/support/v4/h/bi;-><init>()V

    sput-object v0, Landroid/support/v4/h/bh;->a:Landroid/support/v4/h/bk;

    goto :goto_0
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/h/bh;->a:Landroid/support/v4/h/bk;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/h/bk;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
