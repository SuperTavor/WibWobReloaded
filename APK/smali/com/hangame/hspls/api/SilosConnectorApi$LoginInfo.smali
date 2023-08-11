.class public Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;
.super Ljava/lang/Object;


# instance fields
.field protected defaultNickname:Ljava/lang/String;

.field protected extraData:Ljava/lang/String;

.field protected lastLoginIDPUserID:Ljava/lang/String;

.field protected loginEncryptData:Lcom/hangame/hsp/xdr/hsp13/response/LoginAnsEncryptData;

.field protected loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

.field protected loginStatus:I

.field protected loginType:I

.field protected oAuthAccessToken:Ljava/lang/String;

.field protected sequence:I

.field protected sessionId:J

.field protected sessionIv:[B

.field protected sessionKey:[B


# direct methods
.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginMemberInfo:Lcom/hangame/hsp/auth/login/LoginMemberInfo;

    iput-object v2, p0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginEncryptData:Lcom/hangame/hsp/xdr/hsp13/response/LoginAnsEncryptData;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->sessionId:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->sequence:I

    sget-object v0, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_NotExistSession:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginStatus:I

    iput-object v2, p0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->lastLoginIDPUserID:Ljava/lang/String;

    iput-object v2, p0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->defaultNickname:Ljava/lang/String;

    iput-object v2, p0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->extraData:Ljava/lang/String;

    iput-object v2, p0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->oAuthAccessToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setIv(Ljava/util/Vector;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->sessionIv:[B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->sessionIv:[B

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->sessionIv:[B

    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setKey(Ljava/util/Vector;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->sessionKey:[B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->sessionKey:[B

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->sessionKey:[B

    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setLoginEncryptData(Lcom/hangame/hsp/xdr/hsp13/response/LoginAnsEncryptData;)V
    .locals 2

    iput-object p1, p0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginEncryptData:Lcom/hangame/hsp/xdr/hsp13/response/LoginAnsEncryptData;

    iget-wide v0, p1, Lcom/hangame/hsp/xdr/hsp13/response/LoginAnsEncryptData;->sessionID:J

    iput-wide v0, p0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->sessionId:J

    iget-object v0, p1, Lcom/hangame/hsp/xdr/hsp13/response/LoginAnsEncryptData;->aesIv:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->setIv(Ljava/util/Vector;)V

    iget-object v0, p1, Lcom/hangame/hsp/xdr/hsp13/response/LoginAnsEncryptData;->aesKey:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->setKey(Ljava/util/Vector;)V

    return-void
.end method

.method protected setLoginStatus(I)V
    .locals 1

    sget-object v0, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->Status_DeviceLogIn:Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;

    invoke-virtual {v0}, Lcom/hangame/hspls/api/SilosConnectorApi$LogInStatus;->ordinal()I

    move-result v0

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/hangame/hspls/api/SilosConnectorApi$LoginInfo;->loginStatus:I

    :cond_0
    return-void
.end method
