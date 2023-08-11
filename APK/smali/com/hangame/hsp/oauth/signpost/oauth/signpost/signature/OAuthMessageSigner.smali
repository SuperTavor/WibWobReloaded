.class public abstract Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3db29529c4356102L


# instance fields
.field private transient base64:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;

.field private consumerSecret:Ljava/lang/String;

.field private tokenSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    return-void
.end method


# virtual methods
.method protected base64Encode([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;->base64:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;

    invoke-static {p1}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method protected decodeBase64(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;->base64:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSignatureMethod()Ljava/lang/String;
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;->tokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public setConsumerSecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;->consumerSecret:Ljava/lang/String;

    return-void
.end method

.method public setTokenSecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;->tokenSecret:Ljava/lang/String;

    return-void
.end method

.method public abstract sign(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;)Ljava/lang/String;
.end method
