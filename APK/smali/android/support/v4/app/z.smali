.class public final Landroid/support/v4/app/z;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ab;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0
.end method
