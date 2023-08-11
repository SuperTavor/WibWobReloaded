.class Lcom/example/util/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic a:Lcom/example/util/r;


# direct methods
.method constructor <init>(Lcom/example/util/r;)V
    .locals 0

    iput-object p1, p0, Lcom/example/util/s;->a:Lcom/example/util/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/example/util/r;->c:Z

    iget-object v0, p0, Lcom/example/util/s;->a:Lcom/example/util/r;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    iput-object p2, v0, Lcom/example/util/r;->b:Landroid/bluetooth/BluetoothA2dp;

    iget-object v0, p0, Lcom/example/util/s;->a:Lcom/example/util/r;

    iget-object v0, v0, Lcom/example/util/r;->b:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/example/util/r;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/example/util/s;->a:Lcom/example/util/r;

    invoke-static {v0}, Lcom/example/util/r;->a(Lcom/example/util/r;)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/example/util/s;->a:Lcom/example/util/r;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/example/util/r;->b:Landroid/bluetooth/BluetoothA2dp;

    :cond_0
    return-void
.end method
