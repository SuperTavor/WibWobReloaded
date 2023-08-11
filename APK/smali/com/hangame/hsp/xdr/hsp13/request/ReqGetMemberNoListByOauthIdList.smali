.class public Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;
.super Ljava/lang/Object;

# interfaces
.implements LXDR/IMessage;


# static fields
.field public static final nMsgID:I = 0x773d9aa


# instance fields
.field private bSubMessageFlag:Z

.field public gameNo:I

.field public header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

.field public oauthIdList:Ljava/util/Vector;

.field public oauthProvider:Ljava/lang/String;

.field public serviceDomain:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthIdList:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->bSubMessageFlag:Z

    return-void
.end method


# virtual methods
.method public GetID()I
    .locals 1

    const v0, 0x773d9aa

    return v0
.end method

.method public GetLength()I
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->bSubMessageFlag:Z

    if-nez v0, :cond_2

    const v0, 0x773d9aa

    invoke-static {v0}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    iget-object v2, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, LXDR/Translator/Serializer;->GetMessageLength(LXDR/IMessage;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->serviceDomain:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthProvider:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->gameNo:I

    invoke-static {v2}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x4

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthIdList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthIdList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_0

    check-cast v0, Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v3}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    new-instance v0, LXDR/XDRException;

    const-string v1, "ReqGetMemberNoListByOauthIdList.GetLength() - Invalid element type. Element type must be String."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public GetMaxLength()I
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->bSubMessageFlag:Z

    if-nez v0, :cond_2

    const v0, 0x773d9aa

    invoke-static {v0}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    iget-object v2, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, LXDR/Translator/Serializer;->GetMessageLength(LXDR/IMessage;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->serviceDomain:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, LXDR/Translator/Serializer;->GetStringMaxLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthProvider:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, LXDR/Translator/Serializer;->GetStringMaxLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->gameNo:I

    invoke-static {v2}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x4

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthIdList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthIdList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_0

    check-cast v0, Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v3}, LXDR/Translator/Serializer;->GetStringMaxLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    new-instance v0, LXDR/XDRException;

    const-string v1, "ReqGetMemberNoListByOauthIdList.GetLength() - Invalid element type. Element type must be String."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public GetName()Ljava/lang/String;
    .locals 1

    const-string v0, "ReqGetMemberNoListByOauthIdList"

    return-object v0
.end method

.method public GetSubMessageFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->bSubMessageFlag:Z

    return v0
.end method

.method public Load([BI)I
    .locals 5

    array-length v0, p1

    if-ge p2, v0, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, LXDR/XDRException;

    const-string v1, "ReqGetMemberNoListByOauthIdList.Load() - Invalid value of offset"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->bSubMessageFlag:Z

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const v2, 0x773d9aa

    if-eq v2, v0, :cond_2

    new-instance v0, LXDR/XDRException;

    const-string v1, "ReqGetMemberNoListByOauthIdList.Load() - Invalid message identifier"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v1, v0}, LXDR/Translator/Serializer;->LoadMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V

    const-string v0, ""

    invoke-static {v1, v0}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->serviceDomain:Ljava/lang/String;

    const-string v0, ""

    invoke-static {v1, v0}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthProvider:Ljava/lang/String;

    invoke-static {v1}, LXDR/Translator/Serializer;->LoadInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->gameNo:I

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthIdList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    invoke-static {v1}, LXDR/Translator/Serializer;->LoadInt(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-static {v1, v4}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthIdList:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, p2

    return v0
.end method

.method public Load(Ljava/io/InputStream;)V
    .locals 5

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->bSubMessageFlag:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const v2, 0x773d9aa

    if-eq v2, v0, :cond_0

    new-instance v0, LXDR/XDRException;

    const-string v1, "ReqGetMemberNoListByOauthIdList.Load() - Invalid message identifier"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v1, v0}, LXDR/Translator/Serializer;->LoadMessage(Ljava/io/DataInputStream;LXDR/IMessage;)V

    const-string v0, ""

    invoke-static {v1, v0}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->serviceDomain:Ljava/lang/String;

    const-string v0, ""

    invoke-static {v1, v0}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthProvider:Ljava/lang/String;

    invoke-static {v1}, LXDR/Translator/Serializer;->LoadInt(Ljava/io/DataInputStream;)I

    move-result v0

    iput v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->gameNo:I

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthIdList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    invoke-static {v1}, LXDR/Translator/Serializer;->LoadInt(Ljava/io/DataInputStream;)I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-static {v1, v4}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthIdList:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Save(Ljava/io/OutputStream;)V
    .locals 4

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->bSubMessageFlag:Z

    if-nez v0, :cond_0

    const v0, 0x773d9aa

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2, v0}, LXDR/Translator/Serializer;->SaveMessage(Ljava/io/DataOutputStream;LXDR/IMessage;)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->serviceDomain:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v2, v0, v1}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthProvider:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v2, v0, v1}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->gameNo:I

    invoke-static {v2, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/io/DataOutputStream;I)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthIdList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {v2, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/io/DataOutputStream;I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthIdList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthIdList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v0, v3}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, LXDR/XDRException;

    const-string v1, "ReqGetMemberNoListByOauthIdList.GetLength() - Invalid element type. Element type must be String."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public Save()[B
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->GetMaxLength()I

    move-result v0

    new-array v3, v0, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->bSubMessageFlag:Z

    if-nez v0, :cond_0

    const v0, 0x773d9aa

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->serviceDomain:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v4, v0, v1}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthProvider:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v4, v0, v1}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->gameNo:I

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthIdList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/nio/ByteBuffer;I)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthIdList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthIdList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_1

    check-cast v0, Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v0, v5}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, LXDR/XDRException;

    const-string v1, "ReqGetMemberNoListByOauthIdList.GetLength() - Invalid element type. Element type must be String."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    array-length v1, v3

    if-eq v0, v1, :cond_3

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    return-object v0

    :cond_3
    move-object v0, v3

    goto :goto_1
.end method

.method public SetSubMessageFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->bSubMessageFlag:Z

    return-void
.end method
