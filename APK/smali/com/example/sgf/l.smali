.class public Lcom/example/sgf/l;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/example/sgf/b;

.field public b:Lcom/example/sgf/a;

.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/example/sgf/l;->a:Lcom/example/sgf/b;

    iput-object v0, p0, Lcom/example/sgf/l;->b:Lcom/example/sgf/a;

    iput-object v0, p0, Lcom/example/sgf/l;->c:Landroid/content/Context;

    return-void
.end method
