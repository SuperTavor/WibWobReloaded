.class public final Landroid/support/a/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Intent;

.field private b:Ljava/util/ArrayList;

.field private c:Landroid/os/Bundle;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/a/c;-><init>(Landroid/support/a/d;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/a/d;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/support/a/c;->a:Landroid/content/Intent;

    iput-object v0, p0, Landroid/support/a/c;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/a/c;->c:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/a/c;->d:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/a/c;->a:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/support/a/d;->b()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.support.customtabs.extra.SESSION"

    if-nez p1, :cond_1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/support/v4/app/z;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/support/a/c;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/support/a/d;->a()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/support/a/a;
    .locals 4

    iget-object v0, p0, Landroid/support/a/c;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/c;->a:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.MENU_ITEMS"

    iget-object v2, p0, Landroid/support/a/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Landroid/support/a/c;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/a/c;->a:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.TOOLBAR_ITEMS"

    iget-object v2, p0, Landroid/support/a/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_1
    new-instance v0, Landroid/support/a/a;

    iget-object v1, p0, Landroid/support/a/c;->a:Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/a/c;->c:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/a/a;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/support/a/b;)V

    return-object v0
.end method
