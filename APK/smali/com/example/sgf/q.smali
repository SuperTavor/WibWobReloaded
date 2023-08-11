.class final enum Lcom/example/sgf/q;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/example/sgf/q;

.field public static final enum b:Lcom/example/sgf/q;

.field public static final enum c:Lcom/example/sgf/q;

.field private static final synthetic d:[Lcom/example/sgf/q;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/example/sgf/q;

    const-string v1, "Run"

    invoke-direct {v0, v1, v2}, Lcom/example/sgf/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/sgf/q;->a:Lcom/example/sgf/q;

    new-instance v0, Lcom/example/sgf/q;

    const-string v1, "Pause"

    invoke-direct {v0, v1, v3}, Lcom/example/sgf/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/sgf/q;->b:Lcom/example/sgf/q;

    new-instance v0, Lcom/example/sgf/q;

    const-string v1, "Destroy"

    invoke-direct {v0, v1, v4}, Lcom/example/sgf/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/sgf/q;->c:Lcom/example/sgf/q;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/example/sgf/q;

    sget-object v1, Lcom/example/sgf/q;->a:Lcom/example/sgf/q;

    aput-object v1, v0, v2

    sget-object v1, Lcom/example/sgf/q;->b:Lcom/example/sgf/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/example/sgf/q;->c:Lcom/example/sgf/q;

    aput-object v1, v0, v4

    sput-object v0, Lcom/example/sgf/q;->d:[Lcom/example/sgf/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/example/sgf/q;
    .locals 1

    const-class v0, Lcom/example/sgf/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/example/sgf/q;

    return-object v0
.end method

.method public static values()[Lcom/example/sgf/q;
    .locals 1

    sget-object v0, Lcom/example/sgf/q;->d:[Lcom/example/sgf/q;

    invoke-virtual {v0}, [Lcom/example/sgf/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/example/sgf/q;

    return-object v0
.end method
