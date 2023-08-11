.class Lbolts/m;
.super Ljava/lang/Object;

# interfaces
.implements Lbolts/k;


# virtual methods
.method public a(Lbolts/l;)Lbolts/l;
    .locals 1

    invoke-virtual {p1}, Lbolts/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbolts/l;->g()Lbolts/l;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lbolts/l;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbolts/l;->f()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lbolts/l;->a(Ljava/lang/Exception;)Lbolts/l;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/l;->a(Ljava/lang/Object;)Lbolts/l;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic then(Lbolts/l;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lbolts/m;->a(Lbolts/l;)Lbolts/l;

    move-result-object v0

    return-object v0
.end method
