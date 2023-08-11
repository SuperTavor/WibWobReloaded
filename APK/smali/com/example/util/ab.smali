.class Lcom/example/util/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/example/util/ae;


# instance fields
.field final synthetic a:Lcom/example/util/YWPEditBoxHandler;


# direct methods
.method constructor <init>(Lcom/example/util/YWPEditBoxHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/ab;->a:Lcom/example/util/YWPEditBoxHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    invoke-static {}, Lcom/example/util/YWPEditBoxHandler;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EditBoxH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/example/util/YWPEditBoxHandler;->a(I)V

    return-void
.end method
