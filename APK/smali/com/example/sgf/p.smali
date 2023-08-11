.class final enum Lcom/example/sgf/p;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/example/sgf/p;

.field public static final enum b:Lcom/example/sgf/p;

.field public static final enum c:Lcom/example/sgf/p;

.field public static final enum d:Lcom/example/sgf/p;

.field public static final enum e:Lcom/example/sgf/p;

.field public static final enum f:Lcom/example/sgf/p;

.field public static final enum g:Lcom/example/sgf/p;

.field private static final synthetic h:[Lcom/example/sgf/p;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/example/sgf/p;

    const-string v1, "Will_Suspending"

    invoke-direct {v0, v1, v3}, Lcom/example/sgf/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/sgf/p;->a:Lcom/example/sgf/p;

    new-instance v0, Lcom/example/sgf/p;

    const-string v1, "Did_Suspended"

    invoke-direct {v0, v1, v4}, Lcom/example/sgf/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/sgf/p;->b:Lcom/example/sgf/p;

    new-instance v0, Lcom/example/sgf/p;

    const-string v1, "Will_Resuming"

    invoke-direct {v0, v1, v5}, Lcom/example/sgf/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/sgf/p;->c:Lcom/example/sgf/p;

    new-instance v0, Lcom/example/sgf/p;

    const-string v1, "Did_Resumed"

    invoke-direct {v0, v1, v6}, Lcom/example/sgf/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/sgf/p;->d:Lcom/example/sgf/p;

    new-instance v0, Lcom/example/sgf/p;

    const-string v1, "BackKey"

    invoke-direct {v0, v1, v7}, Lcom/example/sgf/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/sgf/p;->e:Lcom/example/sgf/p;

    new-instance v0, Lcom/example/sgf/p;

    const-string v1, "MemoryWarning"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/example/sgf/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/sgf/p;->f:Lcom/example/sgf/p;

    new-instance v0, Lcom/example/sgf/p;

    const-string v1, "OpenURL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/example/sgf/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/sgf/p;->g:Lcom/example/sgf/p;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/example/sgf/p;

    sget-object v1, Lcom/example/sgf/p;->a:Lcom/example/sgf/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/example/sgf/p;->b:Lcom/example/sgf/p;

    aput-object v1, v0, v4

    sget-object v1, Lcom/example/sgf/p;->c:Lcom/example/sgf/p;

    aput-object v1, v0, v5

    sget-object v1, Lcom/example/sgf/p;->d:Lcom/example/sgf/p;

    aput-object v1, v0, v6

    sget-object v1, Lcom/example/sgf/p;->e:Lcom/example/sgf/p;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/example/sgf/p;->f:Lcom/example/sgf/p;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/example/sgf/p;->g:Lcom/example/sgf/p;

    aput-object v2, v0, v1

    sput-object v0, Lcom/example/sgf/p;->h:[Lcom/example/sgf/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/example/sgf/p;
    .locals 1

    const-class v0, Lcom/example/sgf/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/example/sgf/p;

    return-object v0
.end method

.method public static values()[Lcom/example/sgf/p;
    .locals 1

    sget-object v0, Lcom/example/sgf/p;->h:[Lcom/example/sgf/p;

    invoke-virtual {v0}, [Lcom/example/sgf/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/example/sgf/p;

    return-object v0
.end method
