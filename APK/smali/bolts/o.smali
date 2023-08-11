.class Lbolts/o;
.super Ljava/lang/Object;

# interfaces
.implements Lbolts/k;


# instance fields
.field final synthetic a:Lbolts/n;


# direct methods
.method constructor <init>(Lbolts/n;)V
    .locals 0

    iput-object p1, p0, Lbolts/o;->a:Lbolts/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbolts/l;)Ljava/lang/Void;
    .locals 2

    invoke-virtual {p1}, Lbolts/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbolts/o;->a:Lbolts/n;

    iget-object v0, v0, Lbolts/n;->c:Lbolts/t;

    invoke-virtual {v0}, Lbolts/t;->c()V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lbolts/l;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbolts/o;->a:Lbolts/n;

    iget-object v0, v0, Lbolts/n;->c:Lbolts/t;

    invoke-virtual {p1}, Lbolts/l;->f()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/t;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbolts/o;->a:Lbolts/n;

    iget-object v0, v0, Lbolts/n;->c:Lbolts/t;

    invoke-virtual {p1}, Lbolts/l;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/t;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic then(Lbolts/l;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lbolts/o;->a(Lbolts/l;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
