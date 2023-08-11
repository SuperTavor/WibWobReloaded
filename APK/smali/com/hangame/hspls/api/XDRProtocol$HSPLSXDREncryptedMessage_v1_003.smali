.class public final Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;
.super Ljava/lang/Object;

# interfaces
.implements LXDR/IMessage;


# static fields
.field public static final nMsgID:I = 0x1c77bfa


# instance fields
.field private bSubMessageFlag:Z

.field public type_:I

.field public value_:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->value_:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->bSubMessageFlag:Z

    return-void
.end method


# virtual methods
.method public GetID()I
    .locals 1

    const v0, 0x1c77bfa

    return v0
.end method

.method public GetLength()I
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->bSubMessageFlag:Z

    if-nez v0, :cond_2

    const v0, 0x1c77bfa

    invoke-static {v0}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    iget v2, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->type_:I

    invoke-static {v2}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x4

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->value_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->value_:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Byte;

    if-eqz v3, :cond_0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v0}, LXDR/Translator/Serializer;->GetByteLength(B)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    new-instance v0, LXDR/XDRException;

    const-string v1, "HSPLSXDREncryptedMessage_v1_003.GetLength() - Invalid element type. Element type must be Byte."

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

    const-string v0, "HSPLSXDREncryptedMessage_v1_003"

    return-object v0
.end method

.method public GetSubMessageFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->bSubMessageFlag:Z

    return v0
.end method

.method public Load([BI)I
    .locals 5

    array-length v0, p1

    if-ge p2, v0, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, LXDR/XDRException;

    const-string v1, "HSPLSXDREncryptedMessage_v1_003.Load() - Invalid value of offset"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-boolean v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->bSubMessageFlag:Z

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const v2, 0x1c77bfa

    if-eq v2, v0, :cond_2

    new-instance v0, LXDR/XDRException;

    const-string v1, "HSPLSXDREncryptedMessage_v1_003.Load() - Invalid message identifier"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, LXDR/Translator/Serializer;->LoadInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->type_:I

    iget-object v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->value_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    invoke-static {v1}, LXDR/Translator/Serializer;->LoadInt(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    new-instance v3, Ljava/lang/Byte;

    invoke-static {v1}, LXDR/Translator/Serializer;->LoadByte(Ljava/nio/ByteBuffer;)B

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    iget-object v4, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->value_:Ljava/util/Vector;

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

    iget-boolean v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->bSubMessageFlag:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const v2, 0x1c77bfa

    if-eq v2, v0, :cond_0

    new-instance v0, LXDR/XDRException;

    const-string v1, "CLoginReq.Load() - Invalid message identifier"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v1}, LXDR/Translator/Serializer;->LoadInt(Ljava/io/DataInputStream;)I

    move-result v0

    iput v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->type_:I

    iget-object v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->value_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    invoke-static {v1}, LXDR/Translator/Serializer;->LoadInt(Ljava/io/DataInputStream;)I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    new-instance v3, Ljava/lang/Byte;

    invoke-static {v1}, LXDR/Translator/Serializer;->LoadByte(Ljava/io/DataInputStream;)B

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    iget-object v4, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->value_:Ljava/util/Vector;

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

    iget-boolean v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->bSubMessageFlag:Z

    if-nez v0, :cond_0

    const v0, 0x1c77bfa

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_0
    iget v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->type_:I

    invoke-static {v2, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/io/DataOutputStream;I)V

    iget-object v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->value_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {v2, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/io/DataOutputStream;I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->value_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->value_:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Byte;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v2, v0}, LXDR/Translator/Serializer;->SaveByte(Ljava/io/DataOutputStream;B)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, LXDR/XDRException;

    const-string v1, "HSPLSXDREncryptedMessage_v1_003.GetLength() - Invalid element type. Element type must be Byte."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public Save()[B
    .locals 5

    invoke-virtual {p0}, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->GetLength()I

    move-result v0

    new-array v2, v0, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-boolean v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->bSubMessageFlag:Z

    if-nez v0, :cond_0

    const v0, 0x1c77bfa

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_0
    iget v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->type_:I

    invoke-static {v3, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->value_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {v3, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/nio/ByteBuffer;I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->value_:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->value_:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/Byte;

    if-eqz v4, :cond_1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v3, v0}, LXDR/Translator/Serializer;->SaveByte(Ljava/nio/ByteBuffer;B)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, LXDR/XDRException;

    const-string v1, "HSPLSXDREncryptedMessage_v1_003.GetLength() - Invalid element type. Element type must be Byte."

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v2
.end method

.method public SetSubMessageFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDREncryptedMessage_v1_003;->bSubMessageFlag:Z

    return-void
.end method
