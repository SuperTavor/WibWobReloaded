.class final Lbolts/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbolts/k;

.field final synthetic b:Lbolts/l;

.field final synthetic c:Lbolts/t;


# direct methods
.method constructor <init>(Lbolts/k;Lbolts/l;Lbolts/t;)V
    .locals 0

    iput-object p1, p0, Lbolts/s;->a:Lbolts/k;

    iput-object p2, p0, Lbolts/s;->b:Lbolts/l;

    iput-object p3, p0, Lbolts/s;->c:Lbolts/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lbolts/s;->a:Lbolts/k;

    iget-object v1, p0, Lbolts/s;->b:Lbolts/l;

    invoke-interface {v0, v1}, Lbolts/k;->then(Lbolts/l;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lbolts/s;->c:Lbolts/t;

    invoke-virtual {v1, v0}, Lbolts/t;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbolts/s;->c:Lbolts/t;

    invoke-virtual {v1, v0}, Lbolts/t;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
