.class Landroid/support/v4/h/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/h/m;


# instance fields
.field final synthetic a:Landroid/support/v4/h/a;

.field final synthetic b:Landroid/support/v4/h/e;


# direct methods
.method constructor <init>(Landroid/support/v4/h/e;Landroid/support/v4/h/a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/h/f;->b:Landroid/support/v4/h/e;

    iput-object p2, p0, Landroid/support/v4/h/f;->a:Landroid/support/v4/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/h/f;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/a;->a(Landroid/view/View;)Landroid/support/v4/h/a/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/h/a/r;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/h/f;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/h/a;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/h/f;->a:Landroid/support/v4/h/a;

    new-instance v1, Landroid/support/v4/h/a/f;

    invoke-direct {v1, p2}, Landroid/support/v4/h/a/f;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/h/a;->a(Landroid/view/View;Landroid/support/v4/h/a/f;)V

    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/h/f;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/h/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/h/f;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/h/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/h/f;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/h/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/h/f;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/h/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/h/f;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/h/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/h/f;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/h/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
