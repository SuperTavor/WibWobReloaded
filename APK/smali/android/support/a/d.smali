.class public final Landroid/support/a/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/a/e;

.field private final b:Landroid/content/ComponentName;


# virtual methods
.method a()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/support/a/d;->a:Landroid/support/a/e;

    invoke-interface {v0}, Landroid/support/a/e;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method b()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/support/a/d;->b:Landroid/content/ComponentName;

    return-object v0
.end method
