.class final Lcom/example/util/j;
.super Ljava/lang/Object;

# interfaces


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    iput-wide p1, p0, Lcom/example/util/j;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogin()V
    .locals 4

    sget-object v0, Lcom/example/util/HspJniUtil;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loginByLastSno:onLogin::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "TAG"

    const-string v9, "invoke-virtual isSuccess j"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/example/util/HspCallback;

    iget-wide v2, p0, Lcom/example/util/j;->a:J

    invoke-direct {v0, v2, v3}, Lcom/example/util/HspCallback;-><init>(J)V

    invoke-virtual {v0, p1, p2}, Lcom/example/util/HspCallback;->a()V

    return-void
.end method
