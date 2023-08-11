.class public abstract Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthConsumer;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private additionalParameters:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;

.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private messageSigner:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;

.field private final random:Ljava/util/Random;

.field private requestParameters:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;

.field private sendEmptyTokens:Z

.field private signingStrategy:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/SigningStrategy;

.field private toHeaderElementSignature:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->random:Ljava/util/Random;

    iput-object p1, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->consumerKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->consumerSecret:Ljava/lang/String;

    new-instance v0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/HmacSha1MessageSigner;

    invoke-direct {v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/HmacSha1MessageSigner;-><init>()V

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->setMessageSigner(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;)V

    new-instance v0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/AuthorizationHeaderSigningStrategy;

    invoke-direct {v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/AuthorizationHeaderSigningStrategy;-><init>()V

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->setSigningStrategy(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/SigningStrategy;)V

    return-void
.end method


# virtual methods
.method protected collectBodyParameters(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;)V
    .locals 2

    invoke-interface {p1}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;->getMessagePayload()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuth;->decodeForm(Ljava/io/InputStream;)Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;->putAll(Ljava/util/Map;Z)V

    :cond_0
    return-void
.end method

.method protected collectHeaderParameters(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;)V
    .locals 2

    const-string v0, "Authorization"

    invoke-interface {p1, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuth;->oauthHeaderToParamsMap(Ljava/lang/String;)Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;->putAll(Ljava/util/Map;Z)V

    return-void
.end method

.method protected collectQueryParameters(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;)V
    .locals 2

    invoke-interface {p1}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuth;->decodeForm(Ljava/lang/String;)Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;->putAll(Ljava/util/Map;Z)V

    :cond_0
    return-void
.end method

.method protected completeOAuthParameters(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "oauth_consumer_key"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "oauth_consumer_key"

    iget-object v1, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->consumerKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    :cond_0
    const-string v0, "oauth_signature_method"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "oauth_signature_method"

    iget-object v1, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->messageSigner:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;

    invoke-virtual {v1}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;->getSignatureMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    :cond_1
    const-string v0, "oauth_timestamp"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "oauth_timestamp"

    invoke-virtual {p0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->generateTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    :cond_2
    const-string v0, "oauth_nonce"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "oauth_nonce"

    invoke-virtual {p0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->generateNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    :cond_3
    const-string v0, "oauth_version"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "oauth_version"

    const-string v1, "1.0"

    invoke-virtual {p1, v0, v1, v2}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    :cond_4
    const-string v0, "oauth_token"

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->sendEmptyTokens:Z

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "oauth_token"

    iget-object v1, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    :cond_6
    return-void
.end method

.method protected generateNonce()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected generateTimestamp()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConsumerKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->consumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestParameters()Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->requestParameters:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;

    return-object v0
.end method

.method public getToHeaderElementSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->toHeaderElementSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->messageSigner:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;

    invoke-virtual {v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAdditionalParameters(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->additionalParameters:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;

    return-void
.end method

.method public setMessageSigner(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;)V
    .locals 1

    iput-object p1, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->messageSigner:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;

    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->consumerSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;->setConsumerSecret(Ljava/lang/String;)V

    return-void
.end method

.method public setSendEmptyTokens(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->sendEmptyTokens:Z

    return-void
.end method

.method public setSigningStrategy(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/SigningStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->signingStrategy:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/SigningStrategy;

    return-void
.end method

.method public setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->token:Ljava/lang/String;

    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->messageSigner:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;

    invoke-virtual {v0, p2}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;->setTokenSecret(Ljava/lang/String;)V

    return-void
.end method

.method public sign(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;)Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->consumerKey:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/exception/OAuthExpectationFailedException;

    const-string v1, "consumer key not set"

    invoke-direct {v0, v1}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->consumerSecret:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/exception/OAuthExpectationFailedException;

    const-string v1, "consumer secret not set"

    invoke-direct {v0, v1}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;

    invoke-direct {v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->requestParameters:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;

    :try_start_0
    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->additionalParameters:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->requestParameters:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;

    iget-object v1, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->additionalParameters:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;->putAll(Ljava/util/Map;Z)V

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->requestParameters:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;

    invoke-virtual {p0, p1, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->collectHeaderParameters(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;)V

    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->requestParameters:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;

    invoke-virtual {p0, p1, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->collectQueryParameters(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;)V

    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->requestParameters:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;

    invoke-virtual {p0, p1, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->collectBodyParameters(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;)V

    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->requestParameters:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->completeOAuthParameters(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;)V

    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->requestParameters:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;

    const-string v1, "oauth_signature"

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;->remove(Ljava/lang/Object;)Ljava/util/SortedSet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->messageSigner:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;

    iget-object v1, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->requestParameters:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;

    invoke-virtual {v0, p1, v1}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;->sign(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "signature"

    invoke-static {v1, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuth;->debugOut(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->signingStrategy:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/SigningStrategy;

    iget-object v2, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->requestParameters:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;

    invoke-interface {v1, v0, p1, v2}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/SigningStrategy;->writeSignature(Ljava/lang/String;Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;)Ljava/lang/String;

    const-string v1, "Auth header"

    const-string v2, "Authorization"

    invoke-interface {p1, v2}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuth;->debugOut(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Request URL"

    invoke-interface {p1}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuth;->debugOut(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "oauth_signature"

    invoke-static {v1, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuth;->toHeaderElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->toHeaderElementSignature:Ljava/lang/String;

    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/exception/OAuthCommunicationException;

    invoke-direct {v1, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public sign(Ljava/lang/Object;)Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->wrap(Ljava/lang/Object;)Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->sign(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;)Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public sign(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/basic/UrlStringRequestAdapter;

    invoke-direct {v0, p1}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/basic/UrlStringRequestAdapter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->signingStrategy:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/SigningStrategy;

    new-instance v2, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/QueryStringSigningStrategy;

    invoke-direct {v2}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/QueryStringSigningStrategy;-><init>()V

    iput-object v2, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->signingStrategy:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/SigningStrategy;

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->sign(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;)Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;

    iput-object v1, p0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/AbstractOAuthConsumer;->signingStrategy:Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/SigningStrategy;

    invoke-interface {v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract wrap(Ljava/lang/Object;)Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;
.end method
