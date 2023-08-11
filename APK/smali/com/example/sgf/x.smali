.class final Lcom/example/sgf/x;
.super Ljava/util/HashMap;


# direct methods
.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "__________"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ywp_bgm_title"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ywp_bgm_puzzle_weekly"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/example/sgf/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
