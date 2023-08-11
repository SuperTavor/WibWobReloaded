.class Lbolts/r;
.super Ljava/lang/Object;

# interfaces
.implements Lbolts/k;


# instance fields
.field final synthetic a:Lbolts/k;

.field final synthetic b:Lbolts/l;


# direct methods
.method constructor <init>(Lbolts/l;Lbolts/k;)V
    .locals 0

    iput-object p1, p0, Lbolts/r;->b:Lbolts/l;

    iput-object p2, p0, Lbolts/r;->a:Lbolts/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbolts/l;)Lbolts/l;
    .locals 1

    invoke-virtual {p1}, Lbolts/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbolts/l;->f()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lbolts/l;->a(Ljava/lang/Exception;)Lbolts/l;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lbolts/l;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lbolts/l;->g()Lbolts/l;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbolts/r;->a:Lbolts/k;

    invoke-virtual {p1, v0}, Lbolts/l;->a(Lbolts/k;)Lbolts/l;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic then(Lbolts/l;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lbolts/r;->a(Lbolts/l;)Lbolts/l;

    move-result-object v0

    return-object v0
.end method
