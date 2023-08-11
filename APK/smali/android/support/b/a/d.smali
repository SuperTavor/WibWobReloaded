.class Landroid/support/b/a/d;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# instance fields
.field a:I

.field b:Landroid/support/b/a/l;

.field c:Ljava/util/ArrayList;

.field d:Landroid/support/v4/g/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/b/a/d;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p2, :cond_2

    iget v0, p2, Landroid/support/b/a/d;->a:I

    iput v0, p0, Landroid/support/b/a/d;->a:I

    iget-object v0, p2, Landroid/support/b/a/d;->b:Landroid/support/b/a/l;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/support/b/a/d;->b:Landroid/support/b/a/l;

    invoke-virtual {v0}, Landroid/support/b/a/l;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz p4, :cond_1

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/b/a/l;

    iput-object v0, p0, Landroid/support/b/a/d;->b:Landroid/support/b/a/l;

    :goto_0
    iget-object v0, p0, Landroid/support/b/a/d;->b:Landroid/support/b/a/l;

    invoke-virtual {v0}, Landroid/support/b/a/l;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/b/a/l;

    iput-object v0, p0, Landroid/support/b/a/d;->b:Landroid/support/b/a/l;

    iget-object v0, p0, Landroid/support/b/a/d;->b:Landroid/support/b/a/l;

    invoke-virtual {v0, p3}, Landroid/support/b/a/l;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/support/b/a/d;->b:Landroid/support/b/a/l;

    iget-object v2, p2, Landroid/support/b/a/d;->b:Landroid/support/b/a/l;

    invoke-virtual {v2}, Landroid/support/b/a/l;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/b/a/l;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/b/a/d;->b:Landroid/support/b/a/l;

    invoke-virtual {v0, v1}, Landroid/support/b/a/l;->a(Z)V

    :cond_0
    iget-object v0, p2, Landroid/support/b/a/d;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/support/b/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/b/a/d;->c:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0, v2}, Landroid/support/v4/g/a;-><init>(I)V

    iput-object v0, p0, Landroid/support/b/a/d;->d:Landroid/support/v4/g/a;

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v0, p2, Landroid/support/b/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v3

    iget-object v4, p2, Landroid/support/b/a/d;->d:Landroid/support/v4/g/a;

    invoke-virtual {v4, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Landroid/support/b/a/d;->b:Landroid/support/b/a/l;

    invoke-virtual {v4, v0}, Landroid/support/b/a/l;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v4, p0, Landroid/support/b/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/support/b/a/d;->d:Landroid/support/v4/g/a;

    invoke-virtual {v4, v3, v0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/b/a/l;

    iput-object v0, p0, Landroid/support/b/a/d;->b:Landroid/support/b/a/l;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    iget v0, p0, Landroid/support/b/a/d;->a:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No constant state support for SDK < 21."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No constant state support for SDK < 21."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
