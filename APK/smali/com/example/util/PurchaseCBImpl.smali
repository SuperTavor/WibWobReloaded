.class public Lcom/example/util/PurchaseCBImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/payment/HSPPayment$PurchaseCB;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/example/util/HspJniUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/util/PurchaseCBImpl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/example/util/PurchaseCBImpl;->b:J

    return-void
.end method

.method private native onEndPurchase(JIJLjava/lang/String;)V
.end method


# virtual methods
.method public onPurchase(Lcom/hangame/hsp/HSPResult;Ljava/lang/Object;)V
    .locals 7

    sget-object v0, Lcom/example/util/PurchaseCBImpl;->a:Ljava/lang/String;

    const-string v1, "onPurchase"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/example/util/PurchaseCBImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hspResult.getDetail()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/example/util/PurchaseCBImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hspResult.getDetailCode()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getDetailCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/example/util/PurchaseCBImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hspResult.getCode()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/example/util/PurchaseCBImpl;->a:Ljava/lang/String;

    const-string v1, "SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, p0, Lcom/example/util/PurchaseCBImpl;->b:J

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/example/util/PurchaseCBImpl;->onEndPurchase(JIJLjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    const v1, 0x80008

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/example/util/PurchaseCBImpl;->a:Ljava/lang/String;

    const-string v1, "CANCEL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, p0, Lcom/example/util/PurchaseCBImpl;->b:J

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/example/util/PurchaseCBImpl;->onEndPurchase(JIJLjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/example/util/PurchaseCBImpl;->a:Ljava/lang/String;

    const-string v1, "ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, p0, Lcom/example/util/PurchaseCBImpl;->b:J

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/example/util/PurchaseCBImpl;->onEndPurchase(JIJLjava/lang/String;)V

    goto/16 :goto_0
.end method
