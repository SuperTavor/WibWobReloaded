.class public abstract Landroid/support/v4/app/cf;
.super Ljava/lang/Object;


# instance fields
.field d:Landroid/support/v4/app/bt;

.field e:Ljava/lang/CharSequence;

.field f:Ljava/lang/CharSequence;

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/cf;->g:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/cf;->d:Landroid/support/v4/app/bt;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/cf;->d:Landroid/support/v4/app/bt;

    invoke-virtual {v0}, Landroid/support/v4/app/bt;->a()Landroid/app/Notification;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Landroid/support/v4/app/bt;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/cf;->d:Landroid/support/v4/app/bt;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/v4/app/cf;->d:Landroid/support/v4/app/bt;

    iget-object v0, p0, Landroid/support/v4/app/cf;->d:Landroid/support/v4/app/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/cf;->d:Landroid/support/v4/app/bt;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/bt;->a(Landroid/support/v4/app/cf;)Landroid/support/v4/app/bt;

    :cond_0
    return-void
.end method
