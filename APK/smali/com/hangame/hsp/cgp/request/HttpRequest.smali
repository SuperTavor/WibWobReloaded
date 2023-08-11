.class public Lcom/hangame/hsp/cgp/request/HttpRequest;
.super Ljava/lang/Object;


# instance fields
.field public final parameterMap:Ljava/util/Map;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/cgp/request/HttpRequest;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/hangame/hsp/cgp/request/HttpRequest;->parameterMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpRequest [url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/cgp/request/HttpRequest;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/hangame/hsp/cgp/request/HttpRequest;->parameterMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
