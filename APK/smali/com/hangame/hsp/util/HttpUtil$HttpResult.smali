.class public final Lcom/hangame/hsp/util/HttpUtil$HttpResult;
.super Ljava/lang/Object;


# instance fields
.field private final mContent:Ljava/lang/Object;

.field private final mStatusCode:I


# direct methods
.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hangame/hsp/util/HttpUtil$HttpResult;->mStatusCode:I

    iput-object p2, p0, Lcom/hangame/hsp/util/HttpUtil$HttpResult;->mContent:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Object;Lcom/hangame/hsp/util/HttpUtil$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hangame/hsp/util/HttpUtil$HttpResult;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/util/HttpUtil$HttpResult;->mContent:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/util/HttpUtil$HttpResult;->mStatusCode:I

    return v0
.end method
