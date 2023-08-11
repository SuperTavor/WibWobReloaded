.class public Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/PlainTextMessageSigner;
.super Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;-><init>()V

    return-void
.end method


# virtual methods
.method public getSignatureMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "PLAINTEXT"

    return-object v0
.end method

.method public sign(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/PlainTextMessageSigner;->getConsumerSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/PlainTextMessageSigner;->getTokenSecret()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
