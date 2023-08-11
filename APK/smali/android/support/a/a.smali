.class public final Landroid/support/a/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/a/a;->a:Landroid/content/Intent;

    iput-object p2, p0, Landroid/support/a/a;->b:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/support/a/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/a/a;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a;->a:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Landroid/support/a/a;->a:Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/a/a;->b:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
