.class final Lcom/hangame/hsp/util/DeviceInfoUtil$2;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/util/DeviceInfoUtil$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/util/DeviceInfoUtil$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/hangame/hsp/util/DeviceInfoUtil;->getMacAddressFromDevice(Landroid/content/Context;)Ljava/lang/String;

    return-void
.end method
