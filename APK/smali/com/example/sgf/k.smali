.class Lcom/example/sgf/k;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field final synthetic f:Lcom/example/sgf/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/sgf/MainActivity;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/example/sgf/k;->f:Lcom/example/sgf/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/example/sgf/k;->a:I

    iput v1, p0, Lcom/example/sgf/k;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/example/sgf/k;->c:Ljava/lang/String;

    iput v1, p0, Lcom/example/sgf/k;->d:I

    iput v1, p0, Lcom/example/sgf/k;->e:I

    return-void
.end method
