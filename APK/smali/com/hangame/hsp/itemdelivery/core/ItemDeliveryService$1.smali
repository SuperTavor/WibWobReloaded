.class final Lcom/hangame/hsp/itemdelivery/core/ItemDeliveryService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPCore$HSPAfterLoginListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterLogin()V
    .locals 2

    const-string v0, "ItemDeliveryService"

    const-string v1, "ItemDeliveryService onAfterLogin called."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
