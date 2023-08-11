.class final LXDR/Translator/Serializer$StringEncoder;
.super Ljava/lang/Object;


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private destination:[B

.field private encoder:Ljava/nio/charset/CharsetEncoder;

.field private final in:Ljava/nio/CharBuffer;

.field private final tempChars:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1fa0

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, LXDR/Translator/Serializer$StringEncoder;->in:Ljava/nio/CharBuffer;

    iget-object v0, p0, LXDR/Translator/Serializer$StringEncoder;->in:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    iput-object v0, p0, LXDR/Translator/Serializer$StringEncoder;->tempChars:[C

    iput-object v1, p0, LXDR/Translator/Serializer$StringEncoder;->charset:Ljava/nio/charset/Charset;

    iput-object v1, p0, LXDR/Translator/Serializer$StringEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iput-object v1, p0, LXDR/Translator/Serializer$StringEncoder;->destination:[B

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, LXDR/Translator/Serializer$StringEncoder;->charset:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, LXDR/Translator/Serializer$StringEncoder;->charset:Ljava/nio/charset/Charset;

    :cond_0
    iget-object v0, p0, LXDR/Translator/Serializer$StringEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, LXDR/Translator/Serializer$StringEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    return-void
.end method


# virtual methods
.method public final Encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, LXDR/Translator/Serializer$StringEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LXDR/Translator/Serializer$StringEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    iget-object v0, p0, LXDR/Translator/Serializer$StringEncoder;->destination:[B

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, LXDR/Translator/Serializer$StringEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, LXDR/Translator/Serializer$StringEncoder;->destination:[B

    :cond_1
    :goto_1
    iget-object v0, p0, LXDR/Translator/Serializer$StringEncoder;->destination:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    move v0, v1

    move v3, v1

    :goto_2
    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    iget-object v4, p0, LXDR/Translator/Serializer$StringEncoder;->tempChars:[C

    array-length v4, v4

    if-le v0, v4, :cond_2

    iget-object v0, p0, LXDR/Translator/Serializer$StringEncoder;->tempChars:[C

    array-length v0, v0

    :cond_2
    iget-object v4, p0, LXDR/Translator/Serializer$StringEncoder;->tempChars:[C

    invoke-virtual {p1, v1, v0, v4, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v4, p0, LXDR/Translator/Serializer$StringEncoder;->in:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    iget-object v4, p0, LXDR/Translator/Serializer$StringEncoder;->in:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    add-int/2addr v3, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v3, v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    iget-object v4, p0, LXDR/Translator/Serializer$StringEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v5, p0, LXDR/Translator/Serializer$StringEncoder;->in:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v5, v2, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, LXDR/Translator/Serializer$StringEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, LXDR/Translator/Serializer$StringEncoder;->destination:[B

    array-length v2, v2

    if-ge v2, v0, :cond_1

    new-array v0, v0, [B

    iput-object v0, p0, LXDR/Translator/Serializer$StringEncoder;->destination:[B

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    iget-object v0, p0, LXDR/Translator/Serializer$StringEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-object v0, v2

    goto :goto_0
.end method

.method public final Encode(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, LXDR/Translator/Serializer$StringEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v0, v3, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v0, v1

    move v2, v1

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    iget-object v4, p0, LXDR/Translator/Serializer$StringEncoder;->tempChars:[C

    array-length v4, v4

    if-le v0, v4, :cond_0

    iget-object v0, p0, LXDR/Translator/Serializer$StringEncoder;->tempChars:[C

    array-length v0, v0

    :cond_0
    iget-object v4, p0, LXDR/Translator/Serializer$StringEncoder;->tempChars:[C

    invoke-virtual {p2, v1, v0, v4, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v4, p0, LXDR/Translator/Serializer$StringEncoder;->in:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    iget-object v4, p0, LXDR/Translator/Serializer$StringEncoder;->in:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    add-int/2addr v2, v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v4, p0, LXDR/Translator/Serializer$StringEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v5, p0, LXDR/Translator/Serializer$StringEncoder;->in:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v5, p1, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, LXDR/Translator/Serializer$StringEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int v1, v0, v3

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final getMaxLength(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, LXDR/Translator/Serializer$StringEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
