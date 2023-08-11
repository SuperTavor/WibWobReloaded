.class public Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;
.super Ljava/lang/Object;

# interfaces
.implements LXDR/IMessage;


# static fields
.field public static final nMsgID:I = 0xcb74cea


# instance fields
.field private bSubMessageFlag:Z

.field public backwardRelationTypeMap:Ljava/util/HashMap;

.field public forwardRelationTypeMap:Ljava/util/HashMap;

.field public header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

.field public targetMemberNoList:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->targetMemberNoList:Ljava/util/Vector;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->forwardRelationTypeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->backwardRelationTypeMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->bSubMessageFlag:Z

    return-void
.end method


# virtual methods
.method public GetID()I
    .locals 1

    const v0, 0xcb74cea

    return v0
.end method

.method public GetLength()I
    .locals 8

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->bSubMessageFlag:Z

    if-nez v0, :cond_8

    const v0, 0xcb74cea

    invoke-static {v0}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v0

    add-int/2addr v0, v2

    :goto_0
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    invoke-static {v1}, LXDR/Translator/Serializer;->GetMessageLength(LXDR/IMessage;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    move v1, v2

    move v3, v0

    :goto_1
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->targetMemberNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->targetMemberNoList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, LXDR/Translator/Serializer;->GetLongLength(J)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.GetLength() - Invalid element type. Element type must be Long."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v3, 0x4

    new-instance v5, Ljava/util/Vector;

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->forwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    move v3, v2

    move v4, v0

    :goto_2
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->forwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v6, v0, Ljava/lang/Long;

    if-eqz v6, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, LXDR/Translator/Serializer;->GetLongLength(J)I

    move-result v0

    add-int/2addr v4, v0

    instance-of v0, v1, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v0}, LXDR/Translator/Serializer;->GetByteLength(B)I

    move-result v0

    add-int v1, v4, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v1

    goto :goto_2

    :cond_2
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.GetLength() - Invalid key type. Key must be Long."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.GetLength() - Invalid value type. Value must be Byte."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v0, v4, 0x4

    new-instance v4, Ljava/util/Vector;

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->backwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    move v3, v0

    :goto_3
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->backwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v0, Ljava/lang/Long;

    if-eqz v5, :cond_5

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, LXDR/Translator/Serializer;->GetLongLength(J)I

    move-result v0

    add-int/2addr v3, v0

    instance-of v0, v1, Ljava/lang/Byte;

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v0}, LXDR/Translator/Serializer;->GetByteLength(B)I

    move-result v0

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_3

    :cond_5
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.GetLength() - Invalid key type. Key must be Long."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.GetLength() - Invalid value type. Value must be Byte."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return v3

    :cond_8
    move v0, v2

    goto/16 :goto_0
.end method

.method public GetMaxLength()I
    .locals 8

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->bSubMessageFlag:Z

    if-nez v0, :cond_8

    const v0, 0xcb74cea

    invoke-static {v0}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v0

    add-int/2addr v0, v2

    :goto_0
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    invoke-static {v1}, LXDR/Translator/Serializer;->GetMessageLength(LXDR/IMessage;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    move v1, v2

    move v3, v0

    :goto_1
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->targetMemberNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->targetMemberNoList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, LXDR/Translator/Serializer;->GetLongLength(J)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.GetLength() - Invalid element type. Element type must be Long."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v3, 0x4

    new-instance v5, Ljava/util/Vector;

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->forwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    move v3, v2

    move v4, v0

    :goto_2
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->forwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v6, v0, Ljava/lang/Long;

    if-eqz v6, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, LXDR/Translator/Serializer;->GetLongLength(J)I

    move-result v0

    add-int/2addr v4, v0

    instance-of v0, v1, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v0}, LXDR/Translator/Serializer;->GetByteLength(B)I

    move-result v0

    add-int v1, v4, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v1

    goto :goto_2

    :cond_2
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.GetLength() - Invalid key type. Key must be Long."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.GetLength() - Invalid value type. Value must be Byte."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v0, v4, 0x4

    new-instance v4, Ljava/util/Vector;

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->backwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    move v3, v0

    :goto_3
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->backwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v0, Ljava/lang/Long;

    if-eqz v5, :cond_5

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, LXDR/Translator/Serializer;->GetLongLength(J)I

    move-result v0

    add-int/2addr v3, v0

    instance-of v0, v1, Ljava/lang/Byte;

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v0}, LXDR/Translator/Serializer;->GetByteLength(B)I

    move-result v0

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_3

    :cond_5
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.GetLength() - Invalid key type. Key must be Long."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.GetLength() - Invalid value type. Value must be Byte."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return v3

    :cond_8
    move v0, v2

    goto/16 :goto_0
.end method

.method public GetName()Ljava/lang/String;
    .locals 1

    const-string v0, "AnsGetBothRelationList"

    return-object v0
.end method

.method public GetSubMessageFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->bSubMessageFlag:Z

    return v0
.end method

.method public Load([BI)I
    .locals 8

    const/4 v0, 0x0

    array-length v1, p1

    if-ge p2, v1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.Load() - Invalid value of offset"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->bSubMessageFlag:Z

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const v3, 0xcb74cea

    if-eq v3, v1, :cond_2

    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.Load() - Invalid message identifier"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    invoke-static {v2, v1}, LXDR/Translator/Serializer;->LoadMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->targetMemberNoList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadInt(Ljava/nio/ByteBuffer;)I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    new-instance v4, Ljava/lang/Long;

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/lang/Long;-><init>(J)V

    iget-object v5, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->targetMemberNoList:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->forwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadInt(Ljava/nio/ByteBuffer;)I

    move-result v3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_4

    new-instance v4, Ljava/lang/Long;

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/lang/Long;-><init>(J)V

    new-instance v5, Ljava/lang/Byte;

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadByte(Ljava/nio/ByteBuffer;)B

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    iget-object v6, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->forwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->backwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadInt(Ljava/nio/ByteBuffer;)I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_5

    new-instance v3, Ljava/lang/Long;

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    new-instance v4, Ljava/lang/Byte;

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadByte(Ljava/nio/ByteBuffer;)B

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    iget-object v5, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->backwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, p2

    return v0
.end method

.method public Load(Ljava/io/InputStream;)V
    .locals 8

    const/4 v0, 0x0

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->bSubMessageFlag:Z

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const v3, 0xcb74cea

    if-eq v3, v1, :cond_0

    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.Load() - Invalid message identifier"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    invoke-static {v2, v1}, LXDR/Translator/Serializer;->LoadMessage(Ljava/io/DataInputStream;LXDR/IMessage;)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->targetMemberNoList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadInt(Ljava/io/DataInputStream;)I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    new-instance v4, Ljava/lang/Long;

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadLong(Ljava/io/DataInputStream;)J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/lang/Long;-><init>(J)V

    iget-object v5, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->targetMemberNoList:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->forwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadInt(Ljava/io/DataInputStream;)I

    move-result v3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    new-instance v4, Ljava/lang/Long;

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadLong(Ljava/io/DataInputStream;)J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/lang/Long;-><init>(J)V

    new-instance v5, Ljava/lang/Byte;

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadByte(Ljava/io/DataInputStream;)B

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    iget-object v6, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->forwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->backwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadInt(Ljava/io/DataInputStream;)I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_3

    new-instance v3, Ljava/lang/Long;

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadLong(Ljava/io/DataInputStream;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    new-instance v4, Ljava/lang/Byte;

    invoke-static {v2}, LXDR/Translator/Serializer;->LoadByte(Ljava/io/DataInputStream;)B

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    iget-object v5, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->backwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public Save(Ljava/io/OutputStream;)V
    .locals 8

    const/4 v2, 0x0

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->bSubMessageFlag:Z

    if-nez v0, :cond_0

    const v0, 0xcb74cea

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveMessage(Ljava/io/DataOutputStream;LXDR/IMessage;)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->targetMemberNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/io/DataOutputStream;I)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->targetMemberNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->targetMemberNoList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, LXDR/Translator/Serializer;->SaveLong(Ljava/io/DataOutputStream;J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.GetLength() - Invalid element type. Element type must be Long."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v5, Ljava/util/Vector;

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->forwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/io/DataOutputStream;I)V

    move v3, v2

    :goto_1
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->forwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v6, v0, Ljava/lang/Long;

    if-eqz v6, :cond_3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, LXDR/Translator/Serializer;->SaveLong(Ljava/io/DataOutputStream;J)V

    instance-of v0, v1, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveByte(Ljava/io/DataOutputStream;B)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.Save() - Invalid key type. Key must be Long."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.Save() - Invalid value type. Value must be Byte."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v3, Ljava/util/Vector;

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->backwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/io/DataOutputStream;I)V

    :goto_2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->backwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v0, Ljava/lang/Long;

    if-eqz v5, :cond_6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, LXDR/Translator/Serializer;->SaveLong(Ljava/io/DataOutputStream;J)V

    instance-of v0, v1, Ljava/lang/Byte;

    if-eqz v0, :cond_7

    move-object v0, v1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v4, v0}, LXDR/Translator/Serializer;->SaveByte(Ljava/io/DataOutputStream;B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.Save() - Invalid key type. Key must be Long."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.Save() - Invalid value type. Value must be Byte."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void
.end method

.method public Save()[B
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->GetMaxLength()I

    move-result v0

    new-array v4, v0, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->bSubMessageFlag:Z

    if-nez v0, :cond_0

    const v0, 0xcb74cea

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    invoke-static {v5, v0}, LXDR/Translator/Serializer;->SaveMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->targetMemberNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {v5, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/nio/ByteBuffer;I)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->targetMemberNoList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->targetMemberNoList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, LXDR/Translator/Serializer;->SaveLong(Ljava/nio/ByteBuffer;J)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.GetLength() - Invalid element type. Element type must be Long."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v6, Ljava/util/Vector;

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->forwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {v5, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/nio/ByteBuffer;I)V

    move v3, v2

    :goto_1
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->forwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v7, v0, Ljava/lang/Long;

    if-eqz v7, :cond_3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v5, v8, v9}, LXDR/Translator/Serializer;->SaveLong(Ljava/nio/ByteBuffer;J)V

    instance-of v0, v1, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v5, v0}, LXDR/Translator/Serializer;->SaveByte(Ljava/nio/ByteBuffer;B)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.Save() - Invalid key type. Key must be Long."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.Save() - Invalid value type. Value must be Byte."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v6, Ljava/util/Vector;

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->backwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {v5, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/nio/ByteBuffer;I)V

    move v3, v2

    :goto_2
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->backwardRelationTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v7, v0, Ljava/lang/Long;

    if-eqz v7, :cond_6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v5, v8, v9}, LXDR/Translator/Serializer;->SaveLong(Ljava/nio/ByteBuffer;J)V

    instance-of v0, v1, Ljava/lang/Byte;

    if-eqz v0, :cond_7

    move-object v0, v1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v5, v0}, LXDR/Translator/Serializer;->SaveByte(Ljava/nio/ByteBuffer;B)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_6
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.Save() - Invalid key type. Key must be Long."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, LXDR/XDRException;

    const-string v1, "AnsGetBothRelationList.Save() - Invalid value type. Value must be Byte."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    array-length v1, v4

    if-eq v0, v1, :cond_9

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-static {v4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    return-object v0

    :cond_9
    move-object v0, v4

    goto :goto_3
.end method

.method public SetSubMessageFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetBothRelationList;->bSubMessageFlag:Z

    return-void
.end method
