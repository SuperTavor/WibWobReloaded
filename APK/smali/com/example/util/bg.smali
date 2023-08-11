.class public Lcom/example/util/bg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field final synthetic a:Lcom/example/util/bf;


# direct methods
.method public constructor <init>(Lcom/example/util/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/bg;->a:Lcom/example/util/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7

    if-nez p3, :cond_3

    iget-object v0, p0, Lcom/example/util/bg;->a:Lcom/example/util/bf;

    invoke-static {v0}, Lcom/example/util/bf;->a(Lcom/example/util/bf;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/util/bh;

    iget v2, v0, Lcom/example/util/bh;->a:I

    if-ne p2, v2, :cond_0

    iget-object v1, p0, Lcom/example/util/bg;->a:Lcom/example/util/bf;

    iget-object v2, p0, Lcom/example/util/bg;->a:Lcom/example/util/bf;

    iget-object v3, v0, Lcom/example/util/bh;->c:Ljava/lang/String;

    iget v4, v0, Lcom/example/util/bh;->a:I

    iget v5, v0, Lcom/example/util/bh;->d:F

    iget-boolean v6, v0, Lcom/example/util/bh;->b:Z

    invoke-static {v2, v3, v4, v5, v6}, Lcom/example/util/bf;->a(Lcom/example/util/bf;Ljava/lang/String;IFZ)I

    move-result v2

    invoke-static {v1, v2}, Lcom/example/util/bf;->a(Lcom/example/util/bf;I)I

    iget-object v1, p0, Lcom/example/util/bg;->a:Lcom/example/util/bf;

    invoke-static {v1}, Lcom/example/util/bf;->a(Lcom/example/util/bf;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/example/util/bg;->a:Lcom/example/util/bf;

    invoke-static {v0}, Lcom/example/util/bf;->b(Lcom/example/util/bf;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/example/util/bg;->a:Lcom/example/util/bf;

    invoke-static {v0}, Lcom/example/util/bf;->c(Lcom/example/util/bf;)I

    iget-object v0, p0, Lcom/example/util/bg;->a:Lcom/example/util/bf;

    invoke-static {v0}, Lcom/example/util/bf;->d(Lcom/example/util/bf;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/example/util/bg;->a:Lcom/example/util/bf;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/example/util/bf;->a(Lcom/example/util/bf;I)I

    goto :goto_0
.end method
