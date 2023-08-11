.class public Lcom/hangame/hsp/auth/OAuthData;
.super Ljava/lang/Object;


# instance fields
.field public final extra:Ljava/lang/String;

.field public final oauthConsumerKey:Ljava/lang/String;

.field public final oauthConsumerKeySecret:Ljava/lang/String;

.field public final oauthNonce:Ljava/lang/String;

.field public final oauthRefreshToken:Ljava/lang/String;

.field public final oauthSignature:Ljava/lang/String;

.field public final oauthSignatureMethod:Ljava/lang/String;

.field public final oauthTimestamp:Ljava/lang/String;

.field public final oauthToken:Ljava/lang/String;

.field public final oauthTokenExpireTime:J

.field public final oauthTokenSecret:Ljava/lang/String;

.field public final oauthVerifier:Ljava/lang/String;

.field public final oauthVersion:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hangame/hsp/auth/OAuthData;->oauthVersion:I

    iput-object p2, p0, Lcom/hangame/hsp/auth/OAuthData;->oauthVerifier:Ljava/lang/String;

    iput-object p3, p0, Lcom/hangame/hsp/auth/OAuthData;->oauthConsumerKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/hangame/hsp/auth/OAuthData;->oauthConsumerKeySecret:Ljava/lang/String;

    iput-object p5, p0, Lcom/hangame/hsp/auth/OAuthData;->oauthNonce:Ljava/lang/String;

    iput-object p6, p0, Lcom/hangame/hsp/auth/OAuthData;->oauthSignatureMethod:Ljava/lang/String;

    iput-object p7, p0, Lcom/hangame/hsp/auth/OAuthData;->oauthSignature:Ljava/lang/String;

    iput-object p8, p0, Lcom/hangame/hsp/auth/OAuthData;->oauthToken:Ljava/lang/String;

    iput-object p9, p0, Lcom/hangame/hsp/auth/OAuthData;->oauthTokenSecret:Ljava/lang/String;

    iput-object p10, p0, Lcom/hangame/hsp/auth/OAuthData;->oauthTimestamp:Ljava/lang/String;

    iput-object p11, p0, Lcom/hangame/hsp/auth/OAuthData;->oauthRefreshToken:Ljava/lang/String;

    iput-wide p12, p0, Lcom/hangame/hsp/auth/OAuthData;->oauthTokenExpireTime:J

    iput-object p14, p0, Lcom/hangame/hsp/auth/OAuthData;->extra:Ljava/lang/String;

    return-void
.end method

.method public static convertOAuthData(Lcom/hangame/hsp/HSPOAuthData;)Lcom/hangame/hsp/auth/OAuthData;
    .locals 15

    new-instance v0, Lcom/hangame/hsp/auth/OAuthData;

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPOAuthData;->getVersion()I

    move-result v1

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPOAuthData;->getVerifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPOAuthData;->getConsumerKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPOAuthData;->getConsumerSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPOAuthData;->getNonce()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPOAuthData;->getSignatureMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPOAuthData;->getSignature()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPOAuthData;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPOAuthData;->getAccessTokenSecret()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPOAuthData;->getTimestamp()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPOAuthData;->getRefreshToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPOAuthData;->getTokenExpireTime()J

    move-result-wide v12

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPOAuthData;->getExtra()Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v0 .. v14}, Lcom/hangame/hsp/auth/OAuthData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method public static createGlobalGameGSquareOAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/hangame/hsp/auth/OAuthData;
    .locals 16

    new-instance v0, Lcom/hangame/hsp/auth/OAuthData;

    const/4 v1, 0x2

    const-string v2, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v10, ""

    const-string v11, ""

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-wide/from16 v12, p4

    move-object/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Lcom/hangame/hsp/auth/OAuthData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method public static createHangameExOAuthData(Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/auth/OAuthData;
    .locals 15

    new-instance v0, Lcom/hangame/hsp/auth/OAuthData;

    const/4 v1, 0x2

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-wide/16 v12, 0x0

    move-object v8, p0

    move-object/from16 v14, p1

    invoke-direct/range {v0 .. v14}, Lcom/hangame/hsp/auth/OAuthData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method public static createHangameJPOAuth2Data(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/auth/OAuthData;
    .locals 15

    new-instance v0, Lcom/hangame/hsp/auth/OAuthData;

    const/4 v1, 0x2

    const-string v2, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    invoke-direct/range {v0 .. v14}, Lcom/hangame/hsp/auth/OAuthData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method public static createOAuth1Data(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hangame/hsp/auth/OAuthData;
    .locals 15

    new-instance v0, Lcom/hangame/hsp/auth/OAuthData;

    const/4 v1, 0x1

    const-string v11, ""

    const-wide/16 v12, 0x0

    const-string v14, ""

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v14}, Lcom/hangame/hsp/auth/OAuthData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method public static createOAuth2Data(Ljava/lang/String;)Lcom/hangame/hsp/auth/OAuthData;
    .locals 15

    new-instance v0, Lcom/hangame/hsp/auth/OAuthData;

    const/4 v1, 0x2

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-wide/16 v12, 0x0

    const-string v14, ""

    move-object v8, p0

    invoke-direct/range {v0 .. v14}, Lcom/hangame/hsp/auth/OAuthData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method public static createOAuth2Data(Ljava/lang/String;Ljava/lang/String;J)Lcom/hangame/hsp/auth/OAuthData;
    .locals 16

    new-instance v0, Lcom/hangame/hsp/auth/OAuthData;

    const/4 v1, 0x2

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v9, ""

    const-string v10, ""

    const-string v14, ""

    move-object/from16 v8, p0

    move-object/from16 v11, p1

    move-wide/from16 v12, p2

    invoke-direct/range {v0 .. v14}, Lcom/hangame/hsp/auth/OAuthData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oauthConsumerKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/auth/OAuthData;->oauthConsumerKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&oauthConsumerKeySecret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/auth/OAuthData;->oauthConsumerKeySecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&oauthToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/auth/OAuthData;->oauthToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&oauthTokenSecret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/auth/OAuthData;->oauthTokenSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&oauthTokenExpireTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/hangame/hsp/auth/OAuthData;->oauthTokenExpireTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hangame/hsp/auth/OAuthData;->extra:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
