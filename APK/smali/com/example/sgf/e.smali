.class final Lcom/example/sgf/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/example/sgf/GLApplication;->a()Lcom/example/sgf/GLApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/sgf/GLApplication;->invokeFunctionQueueOnMainThread()V

    return-void
.end method
