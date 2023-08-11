.class public interface abstract Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthConsumer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getConsumerKey()Ljava/lang/String;
.end method

.method public abstract getConsumerSecret()Ljava/lang/String;
.end method

.method public abstract getRequestParameters()Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;
.end method

.method public abstract getToHeaderElementSignature()Ljava/lang/String;
.end method

.method public abstract getToken()Ljava/lang/String;
.end method

.method public abstract getTokenSecret()Ljava/lang/String;
.end method

.method public abstract setAdditionalParameters(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;)V
.end method

.method public abstract setMessageSigner(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/OAuthMessageSigner;)V
.end method

.method public abstract setSendEmptyTokens(Z)V
.end method

.method public abstract setSigningStrategy(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/SigningStrategy;)V
.end method

.method public abstract setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sign(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;)Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;
.end method

.method public abstract sign(Ljava/lang/Object;)Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpRequest;
.end method

.method public abstract sign(Ljava/lang/String;)Ljava/lang/String;
.end method
