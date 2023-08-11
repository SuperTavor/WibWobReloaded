.class public final enum Lcom/example/sgf/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/example/sgf/d;

.field public static final enum b:Lcom/example/sgf/d;

.field public static final enum c:Lcom/example/sgf/d;

.field public static final enum d:Lcom/example/sgf/d;

.field private static final synthetic e:[Lcom/example/sgf/d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/example/sgf/d;

    const-string v1, "RGBA8"

    invoke-direct {v0, v1, v2}, Lcom/example/sgf/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/sgf/d;->a:Lcom/example/sgf/d;

    new-instance v0, Lcom/example/sgf/d;

    const-string v1, "RGB8"

    invoke-direct {v0, v1, v3}, Lcom/example/sgf/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/sgf/d;->b:Lcom/example/sgf/d;

    new-instance v0, Lcom/example/sgf/d;

    const-string v1, "RGB565"

    invoke-direct {v0, v1, v4}, Lcom/example/sgf/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/sgf/d;->c:Lcom/example/sgf/d;

    new-instance v0, Lcom/example/sgf/d;

    const-string v1, "RGBA5551"

    invoke-direct {v0, v1, v5}, Lcom/example/sgf/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/sgf/d;->d:Lcom/example/sgf/d;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/example/sgf/d;

    sget-object v1, Lcom/example/sgf/d;->a:Lcom/example/sgf/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/example/sgf/d;->b:Lcom/example/sgf/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/example/sgf/d;->c:Lcom/example/sgf/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/example/sgf/d;->d:Lcom/example/sgf/d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/example/sgf/d;->e:[Lcom/example/sgf/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/example/sgf/d;
    .locals 1

    const-class v0, Lcom/example/sgf/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/example/sgf/d;

    return-object v0
.end method

.method public static values()[Lcom/example/sgf/d;
    .locals 1

    sget-object v0, Lcom/example/sgf/d;->e:[Lcom/example/sgf/d;

    invoke-virtual {v0}, [Lcom/example/sgf/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/example/sgf/d;

    return-object v0
.end method
