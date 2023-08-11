.class Landroid/support/v7/widget/by;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/bp;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/bp;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/by;->a:Landroid/support/v7/widget/bp;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/bp;Landroid/support/v7/widget/bq;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/by;-><init>(Landroid/support/v7/widget/bp;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/by;->a:Landroid/support/v7/widget/bp;

    invoke-virtual {v0}, Landroid/support/v7/widget/bp;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/by;->a:Landroid/support/v7/widget/bp;

    invoke-virtual {v0}, Landroid/support/v7/widget/bp;->c()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/by;->a:Landroid/support/v7/widget/bp;

    invoke-virtual {v0}, Landroid/support/v7/widget/bp;->i()V

    return-void
.end method
