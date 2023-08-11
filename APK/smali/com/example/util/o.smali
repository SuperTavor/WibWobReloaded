.class final Lcom/example/util/o;
.super Ljava/lang/Object;

# interfaces


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransferkeyResult()V
    .locals 1

    const-string v8, "TAG"

    const-string v9, "invoke-virtual isSuccess o"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "transferkey"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
