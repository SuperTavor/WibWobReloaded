.class public final Lbolts/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "al_applink_data"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 2

    invoke-static {p0}, Lbolts/f;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "extras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method
