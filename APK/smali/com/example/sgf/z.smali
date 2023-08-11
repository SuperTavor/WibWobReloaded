.class Lcom/example/sgf/z;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/example/sgf/y;


# direct methods
.method constructor <init>(Lcom/example/sgf/y;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/example/sgf/z;->a:Lcom/example/sgf/y;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
