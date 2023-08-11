.class public Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;
.super Ljava/lang/Object;

# interfaces
.implements LXDR/IMessage;


# static fields
.field public static final nMsgID:I = 0x1a5d4aa


# instance fields
.field private bSubMessageFlag:Z

.field public clientID:Ljava/lang/String;

.field public clientUUID:Ljava/lang/String;

.field public gameNo:I

.field public header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

.field public oAuthData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

.field public oAuthProfile:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

.field public oAuthProvider:Ljava/lang/String;

.field public reserved:Ljava/lang/String;

.field public serviceDomain:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthProfile:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->bSubMessageFlag:Z

    return-void
.end method


# virtual methods
.method public GetID()I
    .locals 1

    const v0, 0x1a5d4aa

    return v0
.end method

.method public GetLength()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->bSubMessageFlag:Z

    if-nez v1, :cond_0

    const v1, 0x1a5d4aa

    invoke-static {v1}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v1}, LXDR/Translator/Serializer;->GetMessageLength(LXDR/IMessage;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->serviceDomain:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthProvider:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->gameNo:I

    invoke-static {v1}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->clientID:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->clientUUID:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->token:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->reserved:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthProfile:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    invoke-static {v1}, LXDR/Translator/Serializer;->GetMessageLength(LXDR/IMessage;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    invoke-static {v1}, LXDR/Translator/Serializer;->GetMessageLength(LXDR/IMessage;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public GetMaxLength()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->bSubMessageFlag:Z

    if-nez v1, :cond_0

    const v1, 0x1a5d4aa

    invoke-static {v1}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v1}, LXDR/Translator/Serializer;->GetMessageLength(LXDR/IMessage;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->serviceDomain:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringMaxLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthProvider:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringMaxLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->gameNo:I

    invoke-static {v1}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->clientID:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringMaxLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->clientUUID:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringMaxLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->token:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringMaxLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->reserved:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringMaxLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthProfile:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    invoke-static {v1}, LXDR/Translator/Serializer;->GetMessageLength(LXDR/IMessage;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    invoke-static {v1}, LXDR/Translator/Serializer;->GetMessageLength(LXDR/IMessage;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public GetName()Ljava/lang/String;
    .locals 1

    const-string v0, "ReqToastCheckLoginStatus"

    return-object v0
.end method

.method public GetSubMessageFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->bSubMessageFlag:Z

    return v0
.end method

.method public Load([BI)I
    .locals 3

    array-length v0, p1

    if-ge p2, v0, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, LXDR/XDRException;

    const-string v1, "ReqToastCheckLoginStatus.Load() - Invalid value of offset"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->bSubMessageFlag:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const v2, 0x1a5d4aa

    if-eq v2, v1, :cond_2

    new-instance v0, LXDR/XDRException;

    const-string v1, "ReqToastCheckLoginStatus.Load() - Invalid message identifier"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->serviceDomain:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthProvider:Ljava/lang/String;

    invoke-static {v0}, LXDR/Translator/Serializer;->LoadInt(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->gameNo:I

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->clientID:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->clientUUID:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->token:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->reserved:Ljava/lang/String;

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthProfile:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, p2

    return v0
.end method

.method public Load(Ljava/io/InputStream;)V
    .locals 3

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->bSubMessageFlag:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const v2, 0x1a5d4aa

    if-eq v2, v1, :cond_0

    new-instance v0, LXDR/XDRException;

    const-string v1, "ReqToastCheckLoginStatus.Load() - Invalid message identifier"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadMessage(Ljava/io/DataInputStream;LXDR/IMessage;)V

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->serviceDomain:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthProvider:Ljava/lang/String;

    invoke-static {v0}, LXDR/Translator/Serializer;->LoadInt(Ljava/io/DataInputStream;)I

    move-result v1

    iput v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->gameNo:I

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->clientID:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->clientUUID:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->token:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->reserved:Ljava/lang/String;

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthProfile:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadMessage(Ljava/io/DataInputStream;LXDR/IMessage;)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadMessage(Ljava/io/DataInputStream;LXDR/IMessage;)V

    return-void
.end method

.method public Save(Ljava/io/OutputStream;)V
    .locals 3

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->bSubMessageFlag:Z

    if-nez v1, :cond_0

    const v1, 0x1a5d4aa

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->SaveMessage(Ljava/io/DataOutputStream;LXDR/IMessage;)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->serviceDomain:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthProvider:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->gameNo:I

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->SaveInt(Ljava/io/DataOutputStream;I)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->clientID:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->clientUUID:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->token:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->reserved:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthProfile:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->SaveMessage(Ljava/io/DataOutputStream;LXDR/IMessage;)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->SaveMessage(Ljava/io/DataOutputStream;LXDR/IMessage;)V

    return-void
.end method

.method public Save()[B
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->GetMaxLength()I

    move-result v0

    new-array v1, v0, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->bSubMessageFlag:Z

    if-nez v0, :cond_0

    const v0, 0x1a5d4aa

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2, v0}, LXDR/Translator/Serializer;->SaveMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->serviceDomain:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v0, v3}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthProvider:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v0, v3}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->gameNo:I

    invoke-static {v2, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->clientID:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v0, v3}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->clientUUID:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v0, v3}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->token:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v0, v3}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->reserved:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v0, v3}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthProfile:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthProfile;

    invoke-static {v2, v0}, LXDR/Translator/Serializer;->SaveMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->oAuthData:Lcom/hangame/hsp/xdr/hsp13/request/ToastLoginReqOAuthData;

    invoke-static {v2, v0}, LXDR/Translator/Serializer;->SaveMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    array-length v3, v1

    if-eq v0, v3, :cond_1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public SetSubMessageFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqToastCheckLoginStatus;->bSubMessageFlag:Z

    return-void
.end method
