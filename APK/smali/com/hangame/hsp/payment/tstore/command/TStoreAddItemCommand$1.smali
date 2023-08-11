.class Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/skplanet/dodo/IapPlugin$RequestCallback;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;

.field final synthetic val$code:I

.field final synthetic val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/String;Lcom/hangame/hsp/payment/core/model/PaymentHeader;I)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;->this$0:Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;

    iput-object p2, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    iput-object p3, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    iput p5, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/hangame/hsp/payment/core/PaymentService;->getInstance()Lcom/hangame/hsp/payment/core/PaymentService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/payment/core/PaymentService;->getStoreAction()Lcom/hangame/hsp/payment/core/StoreAction;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/payment/tstore/TStorePurchase;

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;->this$0:Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;

    invoke-static {v1}, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;->access$000(Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;->this$0:Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;

    invoke-static {v2}, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;->access$100(Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-virtual {v3}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getReserved()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/hangame/hsp/payment/tstore/TStorePurchase;->getStoreAddInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setData(Ljava/lang/String;)V

    const-string v0, "TStoreAddItemTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError() identifier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TStore change_product_properties fail. identifier:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->RESPONSE_FAIL:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    iget v4, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;->val$code:I

    const-string v5, "hsp.payment.err.msg.give.item.fail"

    invoke-static {v5}, Lcom/hangame/hsp/ui/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/hangame/hsp/payment/tstore/TStoreIAPView;->closeTStoreIAPView()V

    return-void
.end method

.method public onResponse(Lcom/skplanet/dodo/IapResponse;)V
    .locals 8

    const/4 v6, 0x0

    const-string v0, "TStoreAddItemTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/skplanet/dodo/IapResponse;->getContentToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/payment/core/model/ClientStatusData;->setDetailMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;->val$data:Lcom/hangame/hsp/payment/core/model/ClientStatusData;

    iget-object v1, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;->val$paymentHeader:Lcom/hangame/hsp/payment/core/model/PaymentHeader;

    invoke-virtual {v1}, Lcom/hangame/hsp/payment/core/model/PaymentHeader;->getProductId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hangame/hsp/payment/core/constant/ClientStatus;->CL500_ADD_ITEM:Lcom/hangame/hsp/payment/core/constant/ClientStatus;

    sget-object v3, Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;

    iget v4, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;->val$code:I

    iget-object v5, p0, Lcom/hangame/hsp/payment/tstore/command/TStoreAddItemCommand$1;->val$message:Ljava/lang/String;

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/hangame/hsp/payment/core/util/PaymentUtil;->runPurchaseCallback(Lcom/hangame/hsp/payment/core/model/ClientStatusData;Ljava/lang/Object;Lcom/hangame/hsp/payment/core/constant/ClientStatus;Lcom/hangame/hsp/payment/core/constant/ClientStatusCode;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/hangame/hsp/payment/tstore/TStoreIAPView;->closeTStoreIAPView()V

    return-void
.end method
