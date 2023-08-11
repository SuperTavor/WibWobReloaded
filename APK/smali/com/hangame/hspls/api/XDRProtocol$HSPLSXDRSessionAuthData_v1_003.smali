.class public final Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;
.super Ljava/lang/Object;

# interfaces
.implements LXDR/IMessage;


# static fields
.field public static final nMsgID:I = 0x16145ca


# instance fields
.field private bSubMessageFlag:Z

.field public copyPreventionTag_:I

.field public sequence_:I

.field public sessionId_:J

.field public timestamp_:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->bSubMessageFlag:Z

    return-void
.end method


# virtual methods
.method public GetID()I
    .locals 1

    const v0, 0x16145ca

    return v0
.end method

.method public GetLength()I
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->bSubMessageFlag:Z

    if-nez v1, :cond_0

    const v1, 0x16145ca

    invoke-static {v1}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->sequence_:I

    invoke-static {v1}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->timestamp_:J

    invoke-static {v2, v3}, LXDR/Translator/Serializer;->GetLongLength(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->sessionId_:J

    invoke-static {v2, v3}, LXDR/Translator/Serializer;->GetLongLength(J)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->copyPreventionTag_:I

    invoke-static {v1}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public GetName()Ljava/lang/String;
    .locals 1

    const-string v0, "HSPLSXDRSessionAuthData_v1_003"

    return-object v0
.end method

.method public GetSubMessageFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->bSubMessageFlag:Z

    return v0
.end method

.method public Load([BI)I
    .locals 4

    array-length v0, p1

    if-ge p2, v0, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, LXDR/XDRException;

    const-string v1, "HSPLSXDRSessionAuthData_v1_003.Load() - Invalid value of offset"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-boolean v1, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->bSubMessageFlag:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const v2, 0x16145ca

    if-eq v2, v1, :cond_2

    new-instance v0, LXDR/XDRException;

    const-string v1, "HSPLSXDRSessionAuthData_v1_003.Load() - Invalid message identifier"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, LXDR/Translator/Serializer;->LoadInt(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->sequence_:I

    invoke-static {v0}, LXDR/Translator/Serializer;->LoadLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->timestamp_:J

    invoke-static {v0}, LXDR/Translator/Serializer;->LoadLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->sessionId_:J

    invoke-static {v0}, LXDR/Translator/Serializer;->LoadInt(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->copyPreventionTag_:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, p2

    return v0
.end method

.method public Load(Ljava/io/InputStream;)V
    .locals 4

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-boolean v1, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->bSubMessageFlag:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const v2, 0x16145ca

    if-eq v2, v1, :cond_0

    new-instance v0, LXDR/XDRException;

    const-string v1, "CLoginReq.Load() - Invalid message identifier"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0}, LXDR/Translator/Serializer;->LoadInt(Ljava/io/DataInputStream;)I

    move-result v1

    iput v1, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->sequence_:I

    invoke-static {v0}, LXDR/Translator/Serializer;->LoadLong(Ljava/io/DataInputStream;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->timestamp_:J

    invoke-static {v0}, LXDR/Translator/Serializer;->LoadLong(Ljava/io/DataInputStream;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->sessionId_:J

    invoke-static {v0}, LXDR/Translator/Serializer;->LoadInt(Ljava/io/DataInputStream;)I

    move-result v0

    iput v0, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->copyPreventionTag_:I

    return-void
.end method

.method public Save(Ljava/io/OutputStream;)V
    .locals 4

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-boolean v1, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->bSubMessageFlag:Z

    if-nez v1, :cond_0

    const v1, 0x16145ca

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_0
    iget v1, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->sequence_:I

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->SaveInt(Ljava/io/DataOutputStream;I)V

    iget-wide v2, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->timestamp_:J

    invoke-static {v0, v2, v3}, LXDR/Translator/Serializer;->SaveLong(Ljava/io/DataOutputStream;J)V

    iget-wide v2, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->sessionId_:J

    invoke-static {v0, v2, v3}, LXDR/Translator/Serializer;->SaveLong(Ljava/io/DataOutputStream;J)V

    iget v1, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->copyPreventionTag_:I

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->SaveInt(Ljava/io/DataOutputStream;I)V

    return-void
.end method

.method public Save()[B
    .locals 4

    invoke-virtual {p0}, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->GetLength()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->bSubMessageFlag:Z

    if-nez v2, :cond_0

    const v2, 0x16145ca

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_0
    iget v2, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->sequence_:I

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->SaveInt(Ljava/nio/ByteBuffer;I)V

    iget-wide v2, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->timestamp_:J

    invoke-static {v1, v2, v3}, LXDR/Translator/Serializer;->SaveLong(Ljava/nio/ByteBuffer;J)V

    iget-wide v2, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->sessionId_:J

    invoke-static {v1, v2, v3}, LXDR/Translator/Serializer;->SaveLong(Ljava/nio/ByteBuffer;J)V

    iget v2, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->copyPreventionTag_:I

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->SaveInt(Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method

.method public SetSubMessageFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hspls/api/XDRProtocol$HSPLSXDRSessionAuthData_v1_003;->bSubMessageFlag:Z

    return-void
.end method
