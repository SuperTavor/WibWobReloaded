.class public Lcom/example/util/af;
.super Landroid/widget/EditText;


# instance fields
.field private a:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/util/af;->a:Landroid/view/View$OnKeyListener;

    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/example/util/af;->a:Landroid/view/View$OnKeyListener;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/example/util/af;->a:Landroid/view/View$OnKeyListener;

    invoke-interface {v0, p0, p1, p2}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnKeyPreImeListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/af;->a:Landroid/view/View$OnKeyListener;

    return-void
.end method
