.class final Lcom/example/util/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/example/util/FacebookConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "onSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-class v0, Lcom/example/util/FacebookConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/example/util/FacebookConnector;->a()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/example/util/FacebookConnector;->a()J

    move-result-wide v0

    invoke-static {v0, v1, v7, v6}, Lcom/example/util/FacebookConnector;->a(JZZ)V

    :cond_0
    invoke-static {v4, v5}, Lcom/example/util/FacebookConnector;->a(J)J

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_2
    const-string v1, "onCancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-class v0, Lcom/example/util/FacebookConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/example/util/FacebookConnector;->a()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/example/util/FacebookConnector;->a()J

    move-result-wide v0

    invoke-static {v0, v1, v6, v7}, Lcom/example/util/FacebookConnector;->a(JZZ)V

    :cond_3
    invoke-static {v4, v5}, Lcom/example/util/FacebookConnector;->a(J)J

    goto :goto_0

    :cond_4
    const-string v1, "onError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/example/util/FacebookConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/example/util/FacebookConnector;->a()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/example/util/FacebookConnector;->a()J

    move-result-wide v0

    invoke-static {v0, v1, v6, v6}, Lcom/example/util/FacebookConnector;->a(JZZ)V

    :cond_5
    invoke-static {v4, v5}, Lcom/example/util/FacebookConnector;->a(J)J

    goto :goto_0
.end method
