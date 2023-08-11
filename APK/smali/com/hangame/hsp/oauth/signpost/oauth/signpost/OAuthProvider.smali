.class public interface abstract Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthProvider;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getAccessTokenEndpointUrl()Ljava/lang/String;
.end method

.method public abstract getAuthorizationWebsiteUrl()Ljava/lang/String;
.end method

.method public abstract getRequestHeaders()Ljava/util/Map;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getRequestTokenEndpointUrl()Ljava/lang/String;
.end method

.method public abstract getResponseParameters()Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;
.end method

.method public abstract isOAuth10a()Z
.end method

.method public abstract removeListener(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthProviderListener;)V
.end method

.method public abstract retrieveAccessToken(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthConsumer;Ljava/lang/String;)V
.end method

.method public abstract retrieveRequestToken(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthConsumer;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setListener(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/OAuthProviderListener;)V
.end method

.method public abstract setOAuth10a(Z)V
.end method

.method public abstract setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setResponseParameters(Lcom/hangame/hsp/oauth/signpost/oauth/signpost/http/HttpParameters;)V
.end method
