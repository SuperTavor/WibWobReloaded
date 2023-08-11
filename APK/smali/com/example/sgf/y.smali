.class Lcom/example/sgf/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic a:Lcom/example/sgf/SoundManager$BackGroundMusic;


# direct methods
.method constructor <init>(Lcom/example/sgf/SoundManager$BackGroundMusic;)V
    .locals 0

    iput-object p1, p0, Lcom/example/sgf/y;->a:Lcom/example/sgf/SoundManager$BackGroundMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance v0, Lcom/example/sgf/z;

    invoke-direct {v0, p0, p1}, Lcom/example/sgf/z;-><init>(Lcom/example/sgf/y;Ljava/lang/Runnable;)V

    return-object v0
.end method
