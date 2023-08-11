.class public Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$HappyDataInputStream;
.super Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public readBytes(I)[B
    .locals 5

    const/4 v1, 0x0

    new-array v2, p1, [B

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_0

    sub-int v3, p1, v0

    invoke-virtual {p0, v2, v0, v3}, Lcom/hangame/hsp/mashup/lighthouse/koush/HybiParser$HappyDataInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    :cond_0
    if-eq v0, p1, :cond_2

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Read wrong number of bytes. Got: %s, Expected: %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    add-int/2addr v0, v3

    goto :goto_0

    :cond_2
    return-object v2
.end method
