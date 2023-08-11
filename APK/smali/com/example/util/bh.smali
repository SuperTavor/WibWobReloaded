.class public Lcom/example/util/bh;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:F

.field final synthetic e:Lcom/example/util/bf;


# direct methods
.method public constructor <init>(Lcom/example/util/bf;Ljava/lang/String;IFZ)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/bh;->e:Lcom/example/util/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/example/util/bh;->c:Ljava/lang/String;

    iput p3, p0, Lcom/example/util/bh;->a:I

    iput-boolean p5, p0, Lcom/example/util/bh;->b:Z

    iput p4, p0, Lcom/example/util/bh;->d:F

    return-void
.end method
