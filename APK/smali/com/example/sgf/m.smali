.class Lcom/example/sgf/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:[Ljava/lang/String;


# direct methods
.method constructor <init>(II[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/example/sgf/m;->a:I

    iput p2, p0, Lcom/example/sgf/m;->c:I

    array-length v0, p3

    mul-int/2addr v0, p2

    iput v0, p0, Lcom/example/sgf/m;->b:I

    iput-object p3, p0, Lcom/example/sgf/m;->d:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/example/sgf/m;)I
    .locals 1

    iget v0, p0, Lcom/example/sgf/m;->b:I

    return v0
.end method

.method static synthetic b(Lcom/example/sgf/m;)I
    .locals 1

    iget v0, p0, Lcom/example/sgf/m;->a:I

    return v0
.end method

.method static synthetic c(Lcom/example/sgf/m;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/sgf/m;->d:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/example/sgf/m;)I
    .locals 1

    iget v0, p0, Lcom/example/sgf/m;->c:I

    return v0
.end method
