.class Lcom/example/util/az;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/example/util/ay;


# direct methods
.method constructor <init>(Lcom/example/util/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/az;->a:Lcom/example/util/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/example/util/YWPQRCodeHelper;->g()Lcom/example/util/YWPQRCodeHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPQRCodeHelper;->b(Lcom/example/util/YWPQRCodeHelper;)V

    return-void
.end method
