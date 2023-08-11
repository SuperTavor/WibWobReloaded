.class public final LXDR/Translator/Serializer;
.super Ljava/lang/Object;


# static fields
.field private static decoder:Ljava/lang/ThreadLocal;

.field private static encoder:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, LXDR/Translator/Serializer;->decoder:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, LXDR/Translator/Serializer;->encoder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetBooleanLength(Z)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static GetBooleanLength([Z)I
    .locals 1

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static GetByteLength(B)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static GetByteLength([B)I
    .locals 1

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static GetCharLength(C)I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static GetCharLength([C)I
    .locals 1

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static GetDoubleLength(D)I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static GetDoubleLength([D)I
    .locals 1

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static GetFloatLength(F)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static GetFloatLength([F)I
    .locals 1

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static GetIntLength(I)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static GetIntLength([I)I
    .locals 1

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static GetLongLength(J)I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static GetLongLength([J)I
    .locals 1

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static GetMessageLength(LXDR/IMessage;)I
    .locals 2

    invoke-interface {p0}, LXDR/IMessage;->GetSubMessageFlag()Z

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, LXDR/IMessage;->SetSubMessageFlag(Z)V

    invoke-interface {p0}, LXDR/IMessage;->GetLength()I

    move-result v1

    invoke-interface {p0, v0}, LXDR/IMessage;->SetSubMessageFlag(Z)V

    return v1
.end method

.method public static GetMessageLength([LXDR/IMessage;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-static {v2}, LXDR/Translator/Serializer;->GetMessageLength(LXDR/IMessage;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static GetShortLength(S)I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static GetShortLength([S)I
    .locals 1

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static GetStringLength(Ljava/lang/String;)I
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static GetStringLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_1
    sget-object v0, LXDR/Translator/Serializer;->encoder:Ljava/lang/ThreadLocal;

    invoke-static {v0}, LXDR/Translator/Serializer;->deref(Ljava/lang/ThreadLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXDR/Translator/Serializer$StringEncoder;

    if-nez v0, :cond_2

    new-instance v0, LXDR/Translator/Serializer$StringEncoder;

    invoke-direct {v0, p1}, LXDR/Translator/Serializer$StringEncoder;-><init>(Ljava/lang/String;)V

    sget-object v1, LXDR/Translator/Serializer;->encoder:Ljava/lang/ThreadLocal;

    invoke-static {v1, v0}, LXDR/Translator/Serializer;->set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0, p0}, LXDR/Translator/Serializer$StringEncoder;->Encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public static GetStringLength([Ljava/lang/String;)I
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, LXDR/Translator/Serializer;->GetStringLength([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static GetStringLength([Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-static {v2, p1}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static GetStringMaxLength(Ljava/lang/String;)I
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, LXDR/Translator/Serializer;->GetStringMaxLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static GetStringMaxLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_1
    sget-object v0, LXDR/Translator/Serializer;->encoder:Ljava/lang/ThreadLocal;

    invoke-static {v0}, LXDR/Translator/Serializer;->deref(Ljava/lang/ThreadLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXDR/Translator/Serializer$StringEncoder;

    if-nez v0, :cond_2

    new-instance v0, LXDR/Translator/Serializer$StringEncoder;

    invoke-direct {v0, p1}, LXDR/Translator/Serializer$StringEncoder;-><init>(Ljava/lang/String;)V

    sget-object v1, LXDR/Translator/Serializer;->encoder:Ljava/lang/ThreadLocal;

    invoke-static {v1, v0}, LXDR/Translator/Serializer;->set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0, p0}, LXDR/Translator/Serializer$StringEncoder;->getMaxLength(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public static GetStringMaxLength([Ljava/lang/String;)I
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, LXDR/Translator/Serializer;->GetStringLength([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static GetStringMaxLength([Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-static {v2, p1}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static LoadBoolean(Ljava/io/DataInputStream;[Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {p0}, LXDR/Translator/Serializer;->LoadBoolean(Ljava/io/DataInputStream;)Z

    move-result v1

    aput-boolean v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static LoadBoolean(Ljava/nio/ByteBuffer;[Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {p0}, LXDR/Translator/Serializer;->LoadBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v1

    aput-boolean v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static LoadBoolean(Ljava/io/DataInputStream;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public static LoadBoolean(Ljava/nio/ByteBuffer;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static LoadByte(Ljava/io/DataInputStream;)B
    .locals 1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public static LoadByte(Ljava/nio/ByteBuffer;)B
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public static LoadByte(Ljava/io/DataInputStream;[B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {p0}, LXDR/Translator/Serializer;->LoadByte(Ljava/io/DataInputStream;)B

    move-result v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static LoadByte(Ljava/nio/ByteBuffer;[B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {p0}, LXDR/Translator/Serializer;->LoadByte(Ljava/nio/ByteBuffer;)B

    move-result v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static LoadChar(Ljava/io/DataInputStream;)C
    .locals 1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method public static LoadChar(Ljava/nio/ByteBuffer;)C
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    return v0
.end method

.method public static LoadChar(Ljava/io/DataInputStream;[C)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {p0}, LXDR/Translator/Serializer;->LoadChar(Ljava/io/DataInputStream;)C

    move-result v1

    aput-char v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static LoadChar(Ljava/nio/ByteBuffer;[C)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {p0}, LXDR/Translator/Serializer;->LoadChar(Ljava/nio/ByteBuffer;)C

    move-result v1

    aput-char v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static LoadDouble(Ljava/io/DataInputStream;)D
    .locals 2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static LoadDouble(Ljava/nio/ByteBuffer;)D
    .locals 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static LoadDouble(Ljava/io/DataInputStream;[D)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {p0}, LXDR/Translator/Serializer;->LoadDouble(Ljava/io/DataInputStream;)D

    move-result-wide v2

    aput-wide v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static LoadDouble(Ljava/nio/ByteBuffer;[D)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {p0}, LXDR/Translator/Serializer;->LoadDouble(Ljava/nio/ByteBuffer;)D

    move-result-wide v2

    aput-wide v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static LoadFloat(Ljava/io/DataInputStream;)F
    .locals 1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public static LoadFloat(Ljava/nio/ByteBuffer;)F
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    return v0
.end method

.method public static LoadFloat(Ljava/io/DataInputStream;[F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {p0}, LXDR/Translator/Serializer;->LoadFloat(Ljava/io/DataInputStream;)F

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static LoadFloat(Ljava/nio/ByteBuffer;[F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {p0}, LXDR/Translator/Serializer;->LoadFloat(Ljava/nio/ByteBuffer;)F

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static LoadInt(Ljava/io/DataInputStream;)I
    .locals 1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public static LoadInt(Ljava/nio/ByteBuffer;)I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public static LoadInt(Ljava/io/DataInputStream;[I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {p0}, LXDR/Translator/Serializer;->LoadInt(Ljava/io/DataInputStream;)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static LoadInt(Ljava/nio/ByteBuffer;[I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {p0}, LXDR/Translator/Serializer;->LoadInt(Ljava/nio/ByteBuffer;)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static LoadLong(Ljava/io/DataInputStream;)J
    .locals 2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static LoadLong(Ljava/nio/ByteBuffer;)J
    .locals 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static LoadLong(Ljava/io/DataInputStream;[J)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {p0}, LXDR/Translator/Serializer;->LoadLong(Ljava/io/DataInputStream;)J

    move-result-wide v2

    aput-wide v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static LoadLong(Ljava/nio/ByteBuffer;[J)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {p0}, LXDR/Translator/Serializer;->LoadLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    aput-wide v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static LoadMessage(Ljava/io/DataInputStream;LXDR/IMessage;)V
    .locals 2

    invoke-interface {p1}, LXDR/IMessage;->GetSubMessageFlag()Z

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, LXDR/IMessage;->SetSubMessageFlag(Z)V

    :try_start_0
    invoke-interface {p1, p0}, LXDR/IMessage;->Load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, v0}, LXDR/IMessage;->SetSubMessageFlag(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {p1, v0}, LXDR/IMessage;->SetSubMessageFlag(Z)V

    throw v1
.end method

.method public static LoadMessage(Ljava/io/DataInputStream;[LXDR/IMessage;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-static {p0, v1}, LXDR/Translator/Serializer;->LoadMessage(Ljava/io/DataInputStream;LXDR/IMessage;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static LoadMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V
    .locals 3

    invoke-interface {p1}, LXDR/IMessage;->GetSubMessageFlag()Z

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, LXDR/IMessage;->SetSubMessageFlag(Z)V

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-interface {p1, v0, v2}, LXDR/IMessage;->Load([BI)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, v1}, LXDR/IMessage;->SetSubMessageFlag(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1, v1}, LXDR/IMessage;->SetSubMessageFlag(Z)V

    throw v0
.end method

.method public static LoadMessage(Ljava/nio/ByteBuffer;[LXDR/IMessage;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-static {p0, v1}, LXDR/Translator/Serializer;->LoadMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static LoadShort(Ljava/io/DataInputStream;)S
    .locals 1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method public static LoadShort(Ljava/nio/ByteBuffer;)S
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public static LoadShort(Ljava/io/DataInputStream;[S)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {p0}, LXDR/Translator/Serializer;->LoadShort(Ljava/io/DataInputStream;)S

    move-result v1

    aput-short v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static LoadShort(Ljava/nio/ByteBuffer;[S)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {p0}, LXDR/Translator/Serializer;->LoadShort(Ljava/nio/ByteBuffer;)S

    move-result v1

    aput-short v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static LoadString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->read([B)I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto :goto_0
.end method

.method public static LoadString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    :goto_0
    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto :goto_1
.end method

.method public static LoadString(Ljava/io/DataInputStream;[Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, p1, v0}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static LoadString(Ljava/io/DataInputStream;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {p0, p2}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static LoadString(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, p1, v0}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static LoadString(Ljava/nio/ByteBuffer;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {p0, p2}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static SaveBoolean(Ljava/io/DataOutputStream;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    return-void
.end method

.method public static SaveBoolean(Ljava/io/DataOutputStream;[Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-boolean v1, p1, v0

    invoke-static {p0, v1}, LXDR/Translator/Serializer;->SaveBoolean(Ljava/io/DataOutputStream;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static SaveBoolean(Ljava/nio/ByteBuffer;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SaveBoolean(Ljava/nio/ByteBuffer;[Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-boolean v1, p1, v0

    invoke-static {p0, v1}, LXDR/Translator/Serializer;->SaveBoolean(Ljava/nio/ByteBuffer;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static SaveByte(Ljava/io/DataOutputStream;B)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public static SaveByte(Ljava/io/DataOutputStream;[B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    invoke-static {p0, v1}, LXDR/Translator/Serializer;->SaveByte(Ljava/io/DataOutputStream;B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static SaveByte(Ljava/nio/ByteBuffer;B)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static SaveByte(Ljava/nio/ByteBuffer;[B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    invoke-static {p0, v1}, LXDR/Translator/Serializer;->SaveByte(Ljava/nio/ByteBuffer;B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static SaveChar(Ljava/io/DataOutputStream;C)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    return-void
.end method

.method public static SaveChar(Ljava/io/DataOutputStream;[C)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-char v1, p1, v0

    invoke-static {p0, v1}, LXDR/Translator/Serializer;->SaveChar(Ljava/io/DataOutputStream;C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static SaveChar(Ljava/nio/ByteBuffer;C)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static SaveChar(Ljava/nio/ByteBuffer;[C)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-char v1, p1, v0

    invoke-static {p0, v1}, LXDR/Translator/Serializer;->SaveChar(Ljava/nio/ByteBuffer;C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static SaveDouble(Ljava/io/DataOutputStream;D)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    return-void
.end method

.method public static SaveDouble(Ljava/io/DataOutputStream;[D)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    invoke-static {p0, v2, v3}, LXDR/Translator/Serializer;->SaveDouble(Ljava/io/DataOutputStream;D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static SaveDouble(Ljava/nio/ByteBuffer;D)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static SaveDouble(Ljava/nio/ByteBuffer;[D)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    invoke-static {p0, v2, v3}, LXDR/Translator/Serializer;->SaveDouble(Ljava/nio/ByteBuffer;D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static SaveFloat(Ljava/io/DataOutputStream;F)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    return-void
.end method

.method public static SaveFloat(Ljava/io/DataOutputStream;[F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    invoke-static {p0, v1}, LXDR/Translator/Serializer;->SaveFloat(Ljava/io/DataOutputStream;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static SaveFloat(Ljava/nio/ByteBuffer;F)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static SaveFloat(Ljava/nio/ByteBuffer;[F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    invoke-static {p0, v1}, LXDR/Translator/Serializer;->SaveFloat(Ljava/nio/ByteBuffer;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static SaveInt(Ljava/io/DataOutputStream;I)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public static SaveInt(Ljava/io/DataOutputStream;[I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    invoke-static {p0, v1}, LXDR/Translator/Serializer;->SaveInt(Ljava/io/DataOutputStream;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static SaveInt(Ljava/nio/ByteBuffer;I)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static SaveInt(Ljava/nio/ByteBuffer;[I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    invoke-static {p0, v1}, LXDR/Translator/Serializer;->SaveInt(Ljava/nio/ByteBuffer;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static SaveLong(Ljava/io/DataOutputStream;J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-void
.end method

.method public static SaveLong(Ljava/io/DataOutputStream;[J)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    invoke-static {p0, v2, v3}, LXDR/Translator/Serializer;->SaveLong(Ljava/io/DataOutputStream;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static SaveLong(Ljava/nio/ByteBuffer;J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static SaveLong(Ljava/nio/ByteBuffer;[J)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    invoke-static {p0, v2, v3}, LXDR/Translator/Serializer;->SaveLong(Ljava/nio/ByteBuffer;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static SaveMessage(Ljava/io/DataOutputStream;LXDR/IMessage;)V
    .locals 2

    invoke-interface {p1}, LXDR/IMessage;->GetSubMessageFlag()Z

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, LXDR/IMessage;->SetSubMessageFlag(Z)V

    :try_start_0
    invoke-interface {p1, p0}, LXDR/IMessage;->Save(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, v0}, LXDR/IMessage;->SetSubMessageFlag(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {p1, v0}, LXDR/IMessage;->SetSubMessageFlag(Z)V

    throw v1
.end method

.method public static SaveMessage(Ljava/io/DataOutputStream;[LXDR/IMessage;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-static {p0, v1}, LXDR/Translator/Serializer;->SaveMessage(Ljava/io/DataOutputStream;LXDR/IMessage;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static SaveMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V
    .locals 2

    invoke-interface {p1}, LXDR/IMessage;->GetSubMessageFlag()Z

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, LXDR/IMessage;->SetSubMessageFlag(Z)V

    :try_start_0
    invoke-interface {p1}, LXDR/IMessage;->Save()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, v1}, LXDR/IMessage;->SetSubMessageFlag(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1, v1}, LXDR/IMessage;->SetSubMessageFlag(Z)V

    throw v0
.end method

.method public static SaveMessage(Ljava/nio/ByteBuffer;[LXDR/IMessage;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-static {p0, v1}, LXDR/Translator/Serializer;->SaveMessage(Ljava/nio/ByteBuffer;LXDR/IMessage;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static SaveShort(Ljava/io/DataOutputStream;S)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method public static SaveShort(Ljava/io/DataOutputStream;[S)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-short v1, p1, v0

    invoke-static {p0, v1}, LXDR/Translator/Serializer;->SaveShort(Ljava/io/DataOutputStream;S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static SaveShort(Ljava/nio/ByteBuffer;S)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static SaveShort(Ljava/nio/ByteBuffer;[S)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-short v1, p1, v0

    invoke-static {p0, v1}, LXDR/Translator/Serializer;->SaveShort(Ljava/nio/ByteBuffer;S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, p1, v0}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, LXDR/Translator/Serializer;->encoder:Ljava/lang/ThreadLocal;

    invoke-static {v0}, LXDR/Translator/Serializer;->deref(Ljava/lang/ThreadLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXDR/Translator/Serializer$StringEncoder;

    if-nez v0, :cond_2

    new-instance v0, LXDR/Translator/Serializer$StringEncoder;

    invoke-direct {v0, p2}, LXDR/Translator/Serializer$StringEncoder;-><init>(Ljava/lang/String;)V

    sget-object v1, LXDR/Translator/Serializer;->encoder:Ljava/lang/ThreadLocal;

    invoke-static {v1, v0}, LXDR/Translator/Serializer;->set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0, p1}, LXDR/Translator/Serializer$StringEncoder;->Encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static SaveString(Ljava/io/DataOutputStream;[Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, p1, v0}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static SaveString(Ljava/io/DataOutputStream;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-static {p0, v1, p2}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, p1, v0}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    :cond_1
    sget-object v0, LXDR/Translator/Serializer;->encoder:Ljava/lang/ThreadLocal;

    invoke-static {v0}, LXDR/Translator/Serializer;->deref(Ljava/lang/ThreadLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXDR/Translator/Serializer$StringEncoder;

    if-nez v0, :cond_2

    new-instance v0, LXDR/Translator/Serializer$StringEncoder;

    invoke-direct {v0, p2}, LXDR/Translator/Serializer$StringEncoder;-><init>(Ljava/lang/String;)V

    sget-object v1, LXDR/Translator/Serializer;->encoder:Ljava/lang/ThreadLocal;

    invoke-static {v1, v0}, LXDR/Translator/Serializer;->set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0, p0, p1}, LXDR/Translator/Serializer$StringEncoder;->Encode(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static SaveString(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, p1, v0}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static SaveString(Ljava/nio/ByteBuffer;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-static {p0, v1, p2}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static deref(Ljava/lang/ThreadLocal;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static set(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
