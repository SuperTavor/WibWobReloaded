.class Lbolts/q;
.super Ljava/lang/Object;

# interfaces
.implements Lbolts/k;


# instance fields
.field final synthetic a:Lbolts/t;

.field final synthetic b:Lbolts/k;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lbolts/l;


# direct methods
.method constructor <init>(Lbolts/l;Lbolts/t;Lbolts/k;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lbolts/q;->d:Lbolts/l;

    iput-object p2, p0, Lbolts/q;->a:Lbolts/t;

    iput-object p3, p0, Lbolts/q;->b:Lbolts/k;

    iput-object p4, p0, Lbolts/q;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbolts/l;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lbolts/q;->a:Lbolts/t;

    iget-object v1, p0, Lbolts/q;->b:Lbolts/k;

    iget-object v2, p0, Lbolts/q;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1, v2}, Lbolts/l;->b(Lbolts/t;Lbolts/k;Lbolts/l;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic then(Lbolts/l;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lbolts/q;->a(Lbolts/l;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
