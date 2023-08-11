.class public Lcom/example/util/RequestItemDeliveryCallbackImpl;
.super Ljava/lang/Object;

# interfaces
#.implements Lcom/hangame/hsp/itemdelivery/HSPItemDelivery$RequestItemDeliveryCallback;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/example/util/RequestItemDeliveryCallbackImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/util/RequestItemDeliveryCallbackImpl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/example/util/RequestItemDeliveryCallbackImpl;->b:J

    return-void
.end method

.method private native onEndRequestItemDelivery(JJLjava/lang/String;IJLjava/lang/String;)V
.end method


# virtual methods
.method public onRequestItemDelivery()V
    .locals 14

    sget-object v2, Lcom/example/util/RequestItemDeliveryCallbackImpl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hspResult.transactionId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/example/util/RequestItemDeliveryCallbackImpl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hspResult.getDetail()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/example/util/RequestItemDeliveryCallbackImpl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hspResult.getDetailCode()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getDetailCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/example/util/RequestItemDeliveryCallbackImpl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hspResult.getCode()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/example/util/RequestItemDeliveryCallbackImpl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hspResult.receipt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/example/util/RequestItemDeliveryCallbackImpl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hspResult.itemInfoList.size()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, p0, Lcom/example/util/RequestItemDeliveryCallbackImpl;->b:J

    if-nez p5, :cond_0

    const-string v8, ""

    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v9

    #invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    int-to-long v10, v2

    #invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v12, ""

    :goto_1
    move-object v3, p0

    move-wide/from16 v6, p2

    invoke-direct/range {v3 .. v12}, Lcom/example/util/RequestItemDeliveryCallbackImpl;->onEndRequestItemDelivery(JJLjava/lang/String;IJLjava/lang/String;)V

    return-void

    :cond_0
    move-object/from16 v8, p5

    goto :goto_0

    :cond_1
    #invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v12

    goto :goto_1
.end method
