.class public Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;
.super Ljava/lang/Object;


# static fields
.field private static final BYTE:I = 0xff

.field private static final FIN:I = 0x80

.field private static final FRAGMENTED_OPCODES:Ljava/util/List;

.field private static final LENGTH:I = 0x7f

.field private static final MASK:I = 0x80

.field private static final MODE_BINARY:I = 0x2

.field private static final MODE_TEXT:I = 0x1

.field private static final OPCODE:I = 0xf

.field private static final OPCODES:Ljava/util/List;

.field private static final OP_BINARY:I = 0x2

.field private static final OP_CLOSE:I = 0x8

.field private static final OP_CONTINUATION:I = 0x0

.field private static final OP_PING:I = 0x9

.field private static final OP_PONG:I = 0xa

.field private static final OP_TEXT:I = 0x1

.field private static final RSV1:I = 0x40

.field private static final RSV2:I = 0x20

.field private static final RSV3:I = 0x10

.field private static final TAG:Ljava/lang/String; = "HybiParser"


# instance fields
.field private mBuffer:Ljava/io/ByteArrayOutputStream;

.field private mClient:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

.field private mClosed:Z

.field private mFinal:Z

.field private mLength:I

.field private mLengthSize:I

.field private mMask:[B

.field private mMasked:Z

.field private mMasking:Z

.field private mMode:I

.field private mOpcode:I

.field private mPayload:[B

.field private mStage:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->OPCODES:Ljava/util/List;

    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->FRAGMENTED_OPCODES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mMasking:Z

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mMask:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mPayload:[B

    iput-boolean v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mClosed:Z

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mClient:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    return-void
.end method

.method private static byteArrayToLong([BII)J
    .locals 6

    array-length v0, p0

    if-ge v0, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length must be less than or equal to b.length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x8

    add-int v4, v0, p1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int v1, v4, v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method private static copyOfRange([BII)[B
    .locals 3

    if-le p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    array-length v0, p0

    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    sub-int v1, p2, p1

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private decode(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private emitFrame()V
    .locals 7

    const/16 v6, 0xa

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mPayload:[B

    iget-object v2, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mMask:[B

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mask([B[BI)[B

    move-result-object v1

    iget v2, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mOpcode:I

    if-nez v2, :cond_3

    iget v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mMode:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$ProtocolError;

    const-string v1, "Mode was not set."

    invoke-direct {v0, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-boolean v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mFinal:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mMode:I

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mClient:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-virtual {v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->getHandler()Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;->onMessage(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->reset()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mClient:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-virtual {v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->getHandler()Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;->onMessage([B)V

    goto :goto_0

    :cond_3
    if-ne v2, v5, :cond_5

    iget-boolean v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mFinal:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->encode([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mClient:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-virtual {v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->getHandler()Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;->onMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iput v5, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mMode:I

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    :cond_5
    if-ne v2, v4, :cond_7

    iget-boolean v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mFinal:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mClient:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-virtual {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->getHandler()Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;->onMessage([B)V

    goto :goto_1

    :cond_6
    iput v4, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mMode:I

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    :cond_7
    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    array-length v2, v1

    if-lt v2, v4, :cond_8

    aget-byte v0, v1, v0

    mul-int/lit16 v0, v0, 0x100

    aget-byte v2, v1, v5

    add-int/2addr v0, v2

    :cond_8
    array-length v2, v1

    if-le v2, v4, :cond_9

    invoke-direct {p0, v1, v4}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->slice([BI)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->encode([B)Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v2, "HybiParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got close op! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mClient:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-virtual {v2}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->getHandler()Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;->onDisconnect(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    :cond_a
    const/16 v0, 0x9

    if-ne v2, v0, :cond_c

    array-length v0, v1

    const/16 v2, 0x7d

    if-le v0, v2, :cond_b

    new-instance v0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$ProtocolError;

    const-string v1, "Ping payload too large"

    invoke-direct {v0, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string v0, "HybiParser"

    const-string v2, "Sending pong!!"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mClient:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    const/4 v2, -0x1

    invoke-direct {p0, v1, v6, v2}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->frame([BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->sendFrame([B)V

    goto/16 :goto_1

    :cond_c
    if-ne v2, v6, :cond_1

    invoke-direct {p0, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->encode([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HybiParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got pong! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private encode([B)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private frame(Ljava/lang/Object;II)[B
    .locals 12

    iget-boolean v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mClosed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "HybiParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating frame for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " op: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->decode(Ljava/lang/String;)[B

    move-result-object p1

    :goto_1
    if-lez p3, :cond_4

    const/4 v0, 0x2

    :goto_2
    array-length v1, p1

    add-int v4, v1, v0

    const/16 v1, 0x7d

    if-gt v4, v1, :cond_5

    const/4 v1, 0x2

    :goto_3
    iget-boolean v2, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mMasking:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x4

    :goto_4
    add-int v5, v1, v2

    iget-boolean v2, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mMasking:Z

    if-eqz v2, :cond_8

    const/16 v2, 0x80

    :goto_5
    add-int v3, v4, v5

    new-array v3, v3, [B

    const/4 v6, 0x0

    int-to-byte v7, p2

    or-int/lit8 v7, v7, -0x80

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    const/16 v6, 0x7d

    if-gt v4, v6, :cond_9

    const/4 v6, 0x1

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v3, v6

    :goto_6
    if-lez p3, :cond_1

    div-int/lit16 v2, p3, 0x100

    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v5

    add-int/lit8 v2, v5, 0x1

    and-int/lit16 v4, p3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    :cond_1
    const/4 v2, 0x0

    add-int/2addr v0, v5

    array-length v4, p1

    invoke-static {p1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mMasking:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/4 v2, 0x2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/4 v2, 0x3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/4 v2, 0x0

    array-length v4, v0

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v0, v5}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mask([B[BI)[B

    :cond_2
    move-object v0, v3

    goto/16 :goto_0

    :cond_3
    check-cast p1, [B

    check-cast p1, [B

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_5
    const v1, 0xffff

    if-gt v4, v1, :cond_6

    const/4 v1, 0x4

    goto/16 :goto_3

    :cond_6
    const/16 v1, 0xa

    goto/16 :goto_3

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_9
    const v6, 0xffff

    if-gt v4, v6, :cond_a

    const/4 v6, 0x1

    or-int/lit8 v2, v2, 0x7e

    int-to-byte v2, v2

    aput-byte v2, v3, v6

    const/4 v2, 0x2

    div-int/lit16 v6, v4, 0x100

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    const/4 v2, 0x3

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    goto/16 :goto_6

    :cond_a
    const/4 v6, 0x1

    or-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v3, v6

    const/4 v2, 0x2

    int-to-double v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x404c000000000000L    # 56.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    const/4 v2, 0x3

    int-to-double v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4048000000000000L    # 48.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    const/4 v2, 0x4

    int-to-double v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    const/4 v2, 0x5

    int-to-double v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4040000000000000L    # 32.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    const/4 v2, 0x6

    int-to-double v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4038000000000000L    # 24.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    const/4 v2, 0x7

    int-to-double v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    const/16 v2, 0x8

    int-to-double v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    const/16 v2, 0x9

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    goto/16 :goto_6
.end method

.method private frame(Ljava/lang/String;II)[B
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->frame(Ljava/lang/Object;II)[B

    move-result-object v0

    return-object v0
.end method

.method private frame([BII)[B
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->frame(Ljava/lang/Object;II)[B

    move-result-object v0

    return-object v0
.end method

.method private getInteger([B)I
    .locals 5

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->byteArrayToLong([BII)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    new-instance v2, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$ProtocolError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad integer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    long-to-int v0, v0

    return v0
.end method

.method private static mask([B[BI)[B
    .locals 4

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    sub-int/2addr v1, p2

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    add-int v2, p2, v0

    aget-byte v2, p0, v2

    rem-int/lit8 v3, v0, 0x4

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseExtendedLength([B)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->getInteger([B)I

    move-result v0

    iput v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mLength:I

    iget-boolean v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mMasked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mStage:I

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private parseLength(B)V
    .locals 3

    const/4 v1, 0x2

    and-int/lit16 v0, p1, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mMasked:Z

    and-int/lit8 v0, p1, 0x7f

    iput v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mLength:I

    iget v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mLength:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mLength:I

    const/16 v2, 0x7d

    if-gt v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mMasked:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mStage:I

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mLength:I

    const/16 v2, 0x7e

    if-ne v0, v2, :cond_3

    move v0, v1

    :goto_3
    iput v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mLengthSize:I

    iput v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mStage:I

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    goto :goto_3
.end method

.method private parseOpcode(B)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    and-int/lit8 v0, p1, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_1

    move v4, v1

    :goto_0
    and-int/lit8 v0, p1, 0x20

    const/16 v3, 0x20

    if-ne v0, v3, :cond_2

    move v3, v1

    :goto_1
    and-int/lit8 v0, p1, 0x10

    const/16 v5, 0x10

    if-ne v0, v5, :cond_3

    move v0, v1

    :goto_2
    if-nez v4, :cond_0

    if-nez v3, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    new-instance v0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$ProtocolError;

    const-string v1, "RSV not zero"

    invoke-direct {v0, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v4, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    and-int/lit16 v0, p1, 0x80

    const/16 v3, 0x80

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mFinal:Z

    and-int/lit8 v0, p1, 0xf

    iput v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mOpcode:I

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mMask:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mPayload:[B

    sget-object v0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->OPCODES:Ljava/util/List;

    iget v2, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mOpcode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$ProtocolError;

    const-string v1, "Bad opcode"

    invoke-direct {v0, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->FRAGMENTED_OPCODES:Ljava/util/List;

    iget v2, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mOpcode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mFinal:Z

    if-nez v0, :cond_7

    new-instance v0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$ProtocolError;

    const-string v1, "Expected non-final packet"

    invoke-direct {v0, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$ProtocolError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iput v1, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mStage:I

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mMode:I

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method private slice([BI)[B
    .locals 1

    array-length v0, p1

    invoke-static {p1, p2, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close(ILjava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mClosed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mClient:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    const/16 v1, 0x8

    invoke-direct {p0, p2, v1, p1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->frame(Ljava/lang/String;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->send([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mClosed:Z

    goto :goto_0
.end method

.method public frame(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->frame(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public frame([B)[B
    .locals 2

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->frame([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public ping(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mClient:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    const/16 v1, 0x9

    const/4 v2, -0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->frame(Ljava/lang/String;II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->send([B)V

    return-void
.end method

.method public start(Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$HappyDataInputStream;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$HappyDataInputStream;->available()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mClient:Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;

    invoke-virtual {v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient;->getHandler()Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;

    move-result-object v0

    const-string v1, "EOF"

    invoke-interface {v0, v2, v1}, Lcom/hangame/hsp/mashup/lighthouse/koush/WebSocketClient$Handler;->onDisconnect(ILjava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mStage:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$HappyDataInputStream;->readByte()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->parseOpcode(B)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$HappyDataInputStream;->readByte()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->parseLength(B)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mLengthSize:I

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$HappyDataInputStream;->readBytes(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->parseExtendedLength([B)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, v3}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$HappyDataInputStream;->readBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mMask:[B

    iput v3, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mStage:I

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mLength:I

    invoke-virtual {p1, v0}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$HappyDataInputStream;->readBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mPayload:[B

    invoke-direct {p0}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->emitFrame()V

    iput v2, p0, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser;->mStage:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
