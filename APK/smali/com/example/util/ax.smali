.class final Lcom/example/util/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/example/util/YWPQRCodeHelper;->g()Lcom/example/util/YWPQRCodeHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPQRCodeHelper;->d(Lcom/example/util/YWPQRCodeHelper;)V

    return-void
.end method
