.class Landroid/support/v4/app/ai;
.super Landroid/support/v4/app/am;


# instance fields
.field final synthetic a:Landroid/support/v4/app/ag;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/ag;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/ai;->a:Landroid/support/v4/app/ag;

    invoke-direct {p0, p1}, Landroid/support/v4/app/am;-><init>(Landroid/support/v4/app/ag;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ai;->a:Landroid/support/v4/app/ag;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ai;->a:Landroid/support/v4/app/ag;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/ag;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ai;->a:Landroid/support/v4/app/ag;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/app/ag;->access$000(Landroid/support/v4/app/ag;Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ai;->a:Landroid/support/v4/app/ag;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/ag;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ai;->a:Landroid/support/v4/app/ag;

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ai;->a:Landroid/support/v4/app/ag;

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ai;->a:Landroid/support/v4/app/ag;

    invoke-static {v0, p1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/ai;->a:Landroid/support/v4/app/ag;

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/ai;->a:Landroid/support/v4/app/ag;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/support/v4/app/Fragment;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ai;->a:Landroid/support/v4/app/ag;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ag;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public c()Landroid/support/v4/app/ag;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ai;->a:Landroid/support/v4/app/ag;

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ai;->a:Landroid/support/v4/app/ag;

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ai;->a:Landroid/support/v4/app/ag;

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ai;->a:Landroid/support/v4/app/ag;

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method

.method public synthetic g()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/ai;->c()Landroid/support/v4/app/ag;

    move-result-object v0

    return-object v0
.end method
