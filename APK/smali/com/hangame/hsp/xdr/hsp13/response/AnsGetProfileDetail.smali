.class public Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;
.super Ljava/lang/Object;

# interfaces
.implements LXDR/IMessage;


# static fields
.field public static final nMsgID:I = 0x86141fa


# instance fields
.field public adminGameNo:I

.field public age:B

.field private bSubMessageFlag:Z

.field public exposeAge:Z

.field public exposeGender:Z

.field public gameUserData:Ljava/lang/String;

.field public gender:Ljava/lang/String;

.field public header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

.field public idpInfoList:Ljava/util/Vector;

.field public nicknameChanged:Z

.field public phoneNo:Ljava/lang/String;

.field public playedGameNoList:Ljava/util/Vector;

.field public profile:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

.field public punishInfoList:Ljava/util/Vector;

.field public todayWord:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/Profile;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->profile:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->idpInfoList:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->punishInfoList:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->playedGameNoList:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->bSubMessageFlag:Z

    return-void
.end method


# virtual methods
.method public GetID()I
    .locals 1

    const v0, 0x86141fa

    return v0
.end method

.method public GetLength()I
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->bSubMessageFlag:Z

    if-nez v0, :cond_6

    const v0, 0x86141fa

    invoke-static {v0}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    iget-object v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    invoke-static {v2}, LXDR/Translator/Serializer;->GetMessageLength(LXDR/IMessage;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->profile:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    invoke-static {v2}, LXDR/Translator/Serializer;->GetMessageLength(LXDR/IMessage;)I

    move-result v2

    add-int/2addr v0, v2

    iget-boolean v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->nicknameChanged:Z

    invoke-static {v2}, LXDR/Translator/Serializer;->GetBooleanLength(Z)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->todayWord:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    iget-boolean v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->exposeGender:Z

    invoke-static {v2}, LXDR/Translator/Serializer;->GetBooleanLength(Z)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->gender:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    iget-boolean v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->exposeAge:Z

    invoke-static {v2}, LXDR/Translator/Serializer;->GetBooleanLength(Z)I

    move-result v2

    add-int/2addr v0, v2

    iget-byte v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->age:B

    invoke-static {v2}, LXDR/Translator/Serializer;->GetByteLength(B)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->adminGameNo:I

    invoke-static {v2}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->phoneNo:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x4

    move v2, v1

    move v3, v0

    :goto_1
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->idpInfoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->idpInfoList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, LXDR/IMessage;

    if-eqz v4, :cond_0

    check-cast v0, LXDR/IMessage;

    invoke-static {v0}, LXDR/Translator/Serializer;->GetMessageLength(LXDR/IMessage;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetProfileDetail.GetLength() - Invalid element type. Element type must be XDR.IMessage."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v3, 0x4

    move v2, v1

    move v3, v0

    :goto_2
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->punishInfoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->punishInfoList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, LXDR/IMessage;

    if-eqz v4, :cond_2

    check-cast v0, LXDR/IMessage;

    invoke-static {v0}, LXDR/Translator/Serializer;->GetMessageLength(LXDR/IMessage;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetProfileDetail.GetLength() - Invalid element type. Element type must be XDR.IMessage."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v3, 0x4

    move v2, v0

    :goto_3
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->playedGameNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->playedGameNoList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_3

    :cond_4
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetProfileDetail.GetLength() - Invalid element type. Element type must be Integer."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->gameUserData:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    return v0

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method public GetMaxLength()I
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->bSubMessageFlag:Z

    if-nez v0, :cond_6

    const v0, 0x86141fa

    invoke-static {v0}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    iget-object v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    invoke-static {v2}, LXDR/Translator/Serializer;->GetMessageLength(LXDR/IMessage;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->profile:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    invoke-static {v2}, LXDR/Translator/Serializer;->GetMessageLength(LXDR/IMessage;)I

    move-result v2

    add-int/2addr v0, v2

    iget-boolean v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->nicknameChanged:Z

    invoke-static {v2}, LXDR/Translator/Serializer;->GetBooleanLength(Z)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->todayWord:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, LXDR/Translator/Serializer;->GetStringMaxLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    iget-boolean v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->exposeGender:Z

    invoke-static {v2}, LXDR/Translator/Serializer;->GetBooleanLength(Z)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->gender:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, LXDR/Translator/Serializer;->GetStringMaxLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    iget-boolean v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->exposeAge:Z

    invoke-static {v2}, LXDR/Translator/Serializer;->GetBooleanLength(Z)I

    move-result v2

    add-int/2addr v0, v2

    iget-byte v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->age:B

    invoke-static {v2}, LXDR/Translator/Serializer;->GetByteLength(B)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->adminGameNo:I

    invoke-static {v2}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->phoneNo:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, LXDR/Translator/Serializer;->GetStringMaxLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x4

    move v2, v1

    move v3, v0

    :goto_1
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->idpInfoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->idpInfoList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, LXDR/IMessage;

    if-eqz v4, :cond_0

    check-cast v0, LXDR/IMessage;

    invoke-static {v0}, LXDR/Translator/Serializer;->GetMessageLength(LXDR/IMessage;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetProfileDetail.GetLength() - Invalid element type. Element type must be XDR.IMessage."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v3, 0x4

    move v2, v1

    move v3, v0

    :goto_2
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->punishInfoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->punishInfoList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, LXDR/IMessage;

    if-eqz v4, :cond_2

    check-cast v0, LXDR/IMessage;

    invoke-static {v0}, LXDR/Translator/Serializer;->GetMessageLength(LXDR/IMessage;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetProfileDetail.GetLength() - Invalid element type. Element type must be XDR.IMessage."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v3, 0x4

    move v2, v0

    :goto_3
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->playedGameNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->playedGameNoList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_3

    :cond_4
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetProfileDetail.GetLength() - Invalid element type. Element type must be Integer."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->gameUserData:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->GetStringMaxLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    return v0

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method public GetName()Ljava/lang/String;
    .locals 1

    const-string v0, "AnsGetProfileDetail"

    return-object v0
.end method

.method public GetSubMessageFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->bSubMessageFlag:Z

    return v0
.end method

.method public Load([BI)I
    .locals 6

    const/4 v0, 0x0

    array-length v1, p1

    if-ge p2, v1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetProfileDetail.Load() - Invalid value of offset"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->bSubMessageFlag:Z

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const v3, 0x86141fa

    if-eq v3, v1, :cond_2

    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetProfileDetail.Load() - Invalid message identifier"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    invoke-static {v2, v1}, LXDR/Translator/Serializer;->LoadMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->profile:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    invoke-static {v2, v1}, LXDR/Translator/Serializer;->LoadMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->nicknameChanged:Z

    const-string v1, ""

    invoke-static {v2, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->todayWord:Ljava/lang/String;

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->exposeGender:Z

    const-string v1, ""

    invoke-static {v2, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->gender:Ljava/lang/String;

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->exposeAge:Z

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadByte(Ljava/nio/ByteBuffer;)B

    move-result v1

    iput-byte v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->age:B

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadInt(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->adminGameNo:I

    const-string v1, ""

    invoke-static {v2, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->phoneNo:Ljava/lang/String;

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->idpInfoList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadInt(Ljava/nio/ByteBuffer;)I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    new-instance v4, Lcom/hangame/hsp/xdr/hsp13/response/IdpInfo;

    invoke-direct {v4}, Lcom/hangame/hsp/xdr/hsp13/response/IdpInfo;-><init>()V

    invoke-static {v2, v4}, LXDR/Translator/Serializer;->LoadMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V

    iget-object v5, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->idpInfoList:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->punishInfoList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadInt(Ljava/nio/ByteBuffer;)I

    move-result v3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_4

    new-instance v4, Lcom/hangame/hsp/xdr/hsp13/response/PunishInfo;

    invoke-direct {v4}, Lcom/hangame/hsp/xdr/hsp13/response/PunishInfo;-><init>()V

    invoke-static {v2, v4}, LXDR/Translator/Serializer;->LoadMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V

    iget-object v5, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->punishInfoList:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->playedGameNoList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadInt(Ljava/nio/ByteBuffer;)I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_5

    new-instance v3, Ljava/lang/Integer;

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadInt(Ljava/nio/ByteBuffer;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    iget-object v4, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->playedGameNoList:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const-string v0, ""

    invoke-static {v2, v0}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->gameUserData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, p2

    return v0
.end method

.method public Load(Ljava/io/InputStream;)V
    .locals 6

    const/4 v0, 0x0

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->bSubMessageFlag:Z

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const v3, 0x86141fa

    if-eq v3, v1, :cond_0

    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetProfileDetail.Load() - Invalid message identifier"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    invoke-static {v2, v1}, LXDR/Translator/Serializer;->LoadMessage(Ljava/io/DataInputStream;LXDR/IMessage;)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->profile:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    invoke-static {v2, v1}, LXDR/Translator/Serializer;->LoadMessage(Ljava/io/DataInputStream;LXDR/IMessage;)V

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadBoolean(Ljava/io/DataInputStream;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->nicknameChanged:Z

    const-string v1, ""

    invoke-static {v2, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->todayWord:Ljava/lang/String;

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadBoolean(Ljava/io/DataInputStream;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->exposeGender:Z

    const-string v1, ""

    invoke-static {v2, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->gender:Ljava/lang/String;

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadBoolean(Ljava/io/DataInputStream;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->exposeAge:Z

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadByte(Ljava/io/DataInputStream;)B

    move-result v1

    iput-byte v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->age:B

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadInt(Ljava/io/DataInputStream;)I

    move-result v1

    iput v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->adminGameNo:I

    const-string v1, ""

    invoke-static {v2, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->phoneNo:Ljava/lang/String;

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->idpInfoList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadInt(Ljava/io/DataInputStream;)I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    new-instance v4, Lcom/hangame/hsp/xdr/hsp13/response/IdpInfo;

    invoke-direct {v4}, Lcom/hangame/hsp/xdr/hsp13/response/IdpInfo;-><init>()V

    invoke-static {v2, v4}, LXDR/Translator/Serializer;->LoadMessage(Ljava/io/DataInputStream;LXDR/IMessage;)V

    iget-object v5, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->idpInfoList:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->punishInfoList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadInt(Ljava/io/DataInputStream;)I

    move-result v3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    new-instance v4, Lcom/hangame/hsp/xdr/hsp13/response/PunishInfo;

    invoke-direct {v4}, Lcom/hangame/hsp/xdr/hsp13/response/PunishInfo;-><init>()V

    invoke-static {v2, v4}, LXDR/Translator/Serializer;->LoadMessage(Ljava/io/DataInputStream;LXDR/IMessage;)V

    iget-object v5, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->punishInfoList:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->playedGameNoList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadInt(Ljava/io/DataInputStream;)I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_3

    new-instance v3, Ljava/lang/Integer;

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadInt(Ljava/io/DataInputStream;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    iget-object v4, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->playedGameNoList:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const-string v0, ""

    invoke-static {v2, v0}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->gameUserData:Ljava/lang/String;

    return-void
.end method

.method public Save(Ljava/io/OutputStream;)V
    .locals 5

    const/4 v2, 0x0

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->bSubMessageFlag:Z

    if-nez v0, :cond_0

    const v0, 0x86141fa

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    invoke-static {v3, v0}, LXDR/Translator/Serializer;->SaveMessage(Ljava/io/DataOutputStream;LXDR/IMessage;)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->profile:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    invoke-static {v3, v0}, LXDR/Translator/Serializer;->SaveMessage(Ljava/io/DataOutputStream;LXDR/IMessage;)V

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->nicknameChanged:Z

    invoke-static {v3, v0}, LXDR/Translator/Serializer;->SaveBoolean(Ljava/io/DataOutputStream;Z)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->todayWord:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v3, v0, v1}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->exposeGender:Z

    invoke-static {v3, v0}, LXDR/Translator/Serializer;->SaveBoolean(Ljava/io/DataOutputStream;Z)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->gender:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v3, v0, v1}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->exposeAge:Z

    invoke-static {v3, v0}, LXDR/Translator/Serializer;->SaveBoolean(Ljava/io/DataOutputStream;Z)V

    iget-byte v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->age:B

    invoke-static {v3, v0}, LXDR/Translator/Serializer;->SaveByte(Ljava/io/DataOutputStream;B)V

    iget v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->adminGameNo:I

    invoke-static {v3, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/io/DataOutputStream;I)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->phoneNo:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v3, v0, v1}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->idpInfoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {v3, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/io/DataOutputStream;I)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->idpInfoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->idpInfoList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, LXDR/IMessage;

    if-eqz v4, :cond_1

    check-cast v0, LXDR/IMessage;

    invoke-static {v3, v0}, LXDR/Translator/Serializer;->SaveMessage(Ljava/io/DataOutputStream;LXDR/IMessage;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetProfileDetail.GetLength() - Invalid element type. Element type must be XDR.IMessage."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->punishInfoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {v3, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/io/DataOutputStream;I)V

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->punishInfoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->punishInfoList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, LXDR/IMessage;

    if-eqz v4, :cond_3

    check-cast v0, LXDR/IMessage;

    invoke-static {v3, v0}, LXDR/Translator/Serializer;->SaveMessage(Ljava/io/DataOutputStream;LXDR/IMessage;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetProfileDetail.GetLength() - Invalid element type. Element type must be XDR.IMessage."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->playedGameNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {v3, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/io/DataOutputStream;I)V

    :goto_2
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->playedGameNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->playedGameNoList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/io/DataOutputStream;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetProfileDetail.GetLength() - Invalid element type. Element type must be Integer."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->gameUserData:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v3, v0, v1}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Save()[B
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->GetMaxLength()I

    move-result v0

    new-array v3, v0, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->bSubMessageFlag:Z

    if-nez v0, :cond_0

    const v0, 0x86141fa

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->profile:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->nicknameChanged:Z

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveBoolean(Ljava/nio/ByteBuffer;Z)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->todayWord:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v4, v0, v1}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->exposeGender:Z

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveBoolean(Ljava/nio/ByteBuffer;Z)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->gender:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v4, v0, v1}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->exposeAge:Z

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveBoolean(Ljava/nio/ByteBuffer;Z)V

    iget-byte v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->age:B

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveByte(Ljava/nio/ByteBuffer;B)V

    iget v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->adminGameNo:I

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->phoneNo:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v4, v0, v1}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->idpInfoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/nio/ByteBuffer;I)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->idpInfoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->idpInfoList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, LXDR/IMessage;

    if-eqz v5, :cond_1

    check-cast v0, LXDR/IMessage;

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetProfileDetail.GetLength() - Invalid element type. Element type must be XDR.IMessage."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->punishInfoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/nio/ByteBuffer;I)V

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->punishInfoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->punishInfoList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, LXDR/IMessage;

    if-eqz v5, :cond_3

    check-cast v0, LXDR/IMessage;

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetProfileDetail.GetLength() - Invalid element type. Element type must be XDR.IMessage."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->playedGameNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/nio/ByteBuffer;I)V

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->playedGameNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->playedGameNoList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/nio/ByteBuffer;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetProfileDetail.GetLength() - Invalid element type. Element type must be Integer."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->gameUserData:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v4, v0, v1}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    array-length v1, v3

    if-eq v0, v1, :cond_7

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    return-object v0

    :cond_7
    move-object v0, v3

    goto :goto_3
.end method

.method public SetSubMessageFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetProfileDetail;->bSubMessageFlag:Z

    return-void
.end method
