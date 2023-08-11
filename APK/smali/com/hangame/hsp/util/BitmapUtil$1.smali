.class final Lcom/hangame/hsp/util/BitmapUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method constructor <init>(Landroid/graphics/BitmapFactory$Options;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/util/BitmapUtil$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1770

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/hangame/hsp/util/BitmapUtil$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
