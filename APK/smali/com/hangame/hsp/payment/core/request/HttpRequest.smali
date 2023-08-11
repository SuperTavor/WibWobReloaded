.class public Lcom/hangame/hsp/payment/core/request/HttpRequest;
.super Ljava/lang/Object;


# instance fields
.field private final body:Ljava/lang/String;

.field private final parameterMap:Ljava/util/Map;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/payment/core/request/HttpRequest;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/hangame/hsp/payment/core/request/HttpRequest;->parameterMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/hangame/hsp/payment/core/request/HttpRequest;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/request/HttpRequest;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterMap()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/request/HttpRequest;->parameterMap:Ljava/util/Map;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/payment/core/request/HttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpRequest [url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/request/HttpRequest;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/hangame/hsp/payment/core/request/HttpRequest;->parameterMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/payment/core/request/HttpRequest;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
