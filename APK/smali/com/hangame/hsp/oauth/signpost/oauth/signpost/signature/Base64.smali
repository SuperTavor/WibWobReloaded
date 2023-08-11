.class public final Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;
.super Ljava/lang/Object;


# static fields
.field private static final BASELENGTH:I = 0xff

.field private static final EIGHTBIT:I = 0x8

.field private static final FOURBYTE:I = 0x4

.field private static final LOOKUPLENGTH:I = 0x40

.field private static final PAD:B = 0x3dt

.field private static final SIGN:I = -0x80

.field private static final SIXTEENBIT:I = 0x10

.field private static final TWENTYFOURBITGROUP:I = 0x18

.field private static base64AlphabetForCookie:[B

.field private static base64AlphabetOriginal:[B

.field private static lookUpBase64AlphabetForCookie:[B

.field private static lookUpBase64AlphabetOriginal:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v4, -0x1

    const/16 v3, 0xff

    const/16 v6, 0x3f

    const/16 v5, 0x3e

    const/4 v0, 0x0

    new-array v1, v3, [B

    sput-object v1, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->base64AlphabetForCookie:[B

    const/16 v1, 0x40

    new-array v1, v1, [B

    sput-object v1, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->lookUpBase64AlphabetForCookie:[B

    new-array v1, v3, [B

    sput-object v1, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->base64AlphabetOriginal:[B

    const/16 v1, 0x40

    new-array v1, v1, [B

    sput-object v1, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->lookUpBase64AlphabetOriginal:[B

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    sget-object v2, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->base64AlphabetForCookie:[B

    aput-byte v4, v2, v1

    sget-object v2, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->base64AlphabetOriginal:[B

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    sget-object v2, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->base64AlphabetForCookie:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    sget-object v2, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->base64AlphabetOriginal:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    sget-object v2, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->base64AlphabetForCookie:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    sget-object v2, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->base64AlphabetOriginal:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    const/16 v1, 0x39

    :goto_3
    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    sget-object v2, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->base64AlphabetForCookie:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    sget-object v2, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->base64AlphabetOriginal:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->base64AlphabetForCookie:[B

    const/16 v2, 0x2d

    aput-byte v5, v1, v2

    sget-object v1, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->base64AlphabetForCookie:[B

    const/16 v2, 0x5f

    aput-byte v6, v1, v2

    sget-object v1, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->base64AlphabetOriginal:[B

    const/16 v2, 0x2b

    aput-byte v5, v1, v2

    sget-object v1, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->base64AlphabetOriginal:[B

    const/16 v2, 0x2f

    aput-byte v6, v1, v2

    move v1, v0

    :goto_4
    const/16 v2, 0x19

    if-gt v1, v2, :cond_4

    sget-object v2, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->lookUpBase64AlphabetForCookie:[B

    add-int/lit8 v3, v1, 0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    sget-object v2, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->lookUpBase64AlphabetOriginal:[B

    add-int/lit8 v3, v1, 0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_5
    const/16 v3, 0x33

    if-gt v2, v3, :cond_5

    sget-object v3, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->lookUpBase64AlphabetForCookie:[B

    add-int/lit8 v4, v1, 0x61

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    sget-object v3, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->lookUpBase64AlphabetOriginal:[B

    add-int/lit8 v4, v1, 0x61

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    const/16 v1, 0x34

    :goto_6
    const/16 v2, 0x3d

    if-gt v1, v2, :cond_6

    sget-object v2, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->lookUpBase64AlphabetForCookie:[B

    add-int/lit8 v3, v0, 0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    sget-object v2, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->lookUpBase64AlphabetOriginal:[B

    add-int/lit8 v3, v0, 0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    sget-object v0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->lookUpBase64AlphabetForCookie:[B

    const/16 v1, 0x2d

    aput-byte v1, v0, v5

    sget-object v0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->lookUpBase64AlphabetForCookie:[B

    const/16 v1, 0x5f

    aput-byte v1, v0, v6

    sget-object v0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->lookUpBase64AlphabetOriginal:[B

    const/16 v1, 0x2b

    aput-byte v1, v0, v5

    sget-object v0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->lookUpBase64AlphabetOriginal:[B

    const/16 v1, 0x2f

    aput-byte v1, v0, v6

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([B)[B
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->decode([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BZ)[B
    .locals 11

    const/4 v1, 0x0

    const/16 v10, 0x3d

    array-length v0, p0

    if-nez v0, :cond_1

    new-array v0, v1, [B

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    array-length v0, p0

    div-int/lit8 v3, v0, 0x4

    invoke-static {p1}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->getBase64Alphabet(Z)[B

    move-result-object v4

    array-length v0, p0

    :cond_2
    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p0, v2

    if-ne v2, v10, :cond_3

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    new-array v0, v1, [B

    goto :goto_0

    :cond_3
    sub-int/2addr v0, v3

    new-array v0, v0, [B

    move v2, v1

    :goto_1
    if-ge v1, v3, :cond_0

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v6, v5, 0x2

    aget-byte v6, p0, v6

    add-int/lit8 v7, v5, 0x3

    aget-byte v7, p0, v7

    aget-byte v8, p0, v5

    aget-byte v8, v4, v8

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    aget-byte v5, v4, v5

    if-eq v6, v10, :cond_5

    if-eq v7, v10, :cond_5

    aget-byte v6, v4, v6

    aget-byte v7, v4, v7

    shl-int/lit8 v8, v8, 0x2

    shr-int/lit8 v9, v5, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    add-int/lit8 v8, v2, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v9, v6, 0x2

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v0, v8

    add-int/lit8 v5, v2, 0x2

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-ne v6, v10, :cond_6

    shl-int/lit8 v6, v8, 0x2

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    goto :goto_2

    :cond_6
    if-ne v7, v10, :cond_4

    aget-byte v6, v4, v6

    shl-int/lit8 v7, v8, 0x2

    shr-int/lit8 v8, v5, 0x4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    add-int/lit8 v7, v2, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v7

    goto :goto_2
.end method

.method public static decodeForCookie([B)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->decode([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)[B
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->encode([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BZ)[B
    .locals 14

    const/16 v13, 0x3d

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    rem-int/lit8 v5, v0, 0x18

    div-int/lit8 v6, v0, 0x18

    invoke-static {p1}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->getLookUpBase64Alphabet(Z)[B

    move-result-object v7

    if-eqz v5, :cond_0

    add-int/lit8 v0, v6, 0x1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    :goto_0
    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v6, :cond_4

    mul-int/lit8 v1, v4, 0x3

    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-byte v8, p0, v3

    add-int/lit8 v1, v1, 0x2

    aget-byte v9, p0, v1

    and-int/lit8 v1, v8, 0xf

    int-to-byte v10, v1

    and-int/lit8 v1, v2, 0x3

    int-to-byte v11, v1

    mul-int/lit8 v12, v4, 0x4

    and-int/lit8 v1, v2, -0x80

    if-nez v1, :cond_1

    shr-int/lit8 v1, v2, 0x2

    int-to-byte v1, v1

    move v3, v1

    :goto_2
    and-int/lit8 v1, v8, -0x80

    if-nez v1, :cond_2

    shr-int/lit8 v1, v8, 0x4

    int-to-byte v1, v1

    move v2, v1

    :goto_3
    and-int/lit8 v1, v9, -0x80

    if-nez v1, :cond_3

    shr-int/lit8 v1, v9, 0x6

    int-to-byte v1, v1

    :goto_4
    aget-byte v3, v7, v3

    aput-byte v3, v0, v12

    add-int/lit8 v3, v12, 0x1

    shl-int/lit8 v8, v11, 0x4

    or-int/2addr v2, v8

    aget-byte v2, v7, v2

    aput-byte v2, v0, v3

    add-int/lit8 v2, v12, 0x2

    shl-int/lit8 v3, v10, 0x2

    or-int/2addr v1, v3

    aget-byte v1, v7, v1

    aput-byte v1, v0, v2

    add-int/lit8 v1, v12, 0x3

    and-int/lit8 v2, v9, 0x3f

    aget-byte v2, v7, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_0
    mul-int/lit8 v0, v6, 0x4

    new-array v0, v0, [B

    goto :goto_0

    :cond_1
    shr-int/lit8 v1, v2, 0x2

    xor-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    move v3, v1

    goto :goto_2

    :cond_2
    shr-int/lit8 v1, v8, 0x4

    xor-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    move v2, v1

    goto :goto_3

    :cond_3
    shr-int/lit8 v1, v9, 0x6

    xor-int/lit16 v1, v1, 0xfc

    int-to-byte v1, v1

    goto :goto_4

    :cond_4
    mul-int/lit8 v1, v4, 0x3

    mul-int/lit8 v3, v4, 0x4

    const/16 v2, 0x8

    if-ne v5, v2, :cond_7

    aget-byte v1, p0, v1

    and-int/lit8 v2, v1, 0x3

    int-to-byte v2, v2

    and-int/lit8 v4, v1, -0x80

    if-nez v4, :cond_6

    shr-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    :goto_5
    aget-byte v1, v7, v1

    aput-byte v1, v0, v3

    add-int/lit8 v1, v3, 0x1

    shl-int/lit8 v2, v2, 0x4

    aget-byte v2, v7, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0x2

    aput-byte v13, v0, v1

    add-int/lit8 v1, v3, 0x3

    aput-byte v13, v0, v1

    :cond_5
    :goto_6
    return-object v0

    :cond_6
    shr-int/lit8 v1, v1, 0x2

    xor-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    goto :goto_5

    :cond_7
    const/16 v2, 0x10

    if-ne v5, v2, :cond_5

    aget-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v4, p0, v1

    and-int/lit8 v1, v4, 0xf

    int-to-byte v5, v1

    and-int/lit8 v1, v2, 0x3

    int-to-byte v6, v1

    and-int/lit8 v1, v2, -0x80

    if-nez v1, :cond_8

    shr-int/lit8 v1, v2, 0x2

    int-to-byte v1, v1

    move v2, v1

    :goto_7
    and-int/lit8 v1, v4, -0x80

    if-nez v1, :cond_9

    shr-int/lit8 v1, v4, 0x4

    int-to-byte v1, v1

    :goto_8
    aget-byte v2, v7, v2

    aput-byte v2, v0, v3

    add-int/lit8 v2, v3, 0x1

    shl-int/lit8 v4, v6, 0x4

    or-int/2addr v1, v4

    aget-byte v1, v7, v1

    aput-byte v1, v0, v2

    add-int/lit8 v1, v3, 0x2

    shl-int/lit8 v2, v5, 0x2

    aget-byte v2, v7, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0x3

    aput-byte v13, v0, v1

    goto :goto_6

    :cond_8
    shr-int/lit8 v1, v2, 0x2

    xor-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    move v2, v1

    goto :goto_7

    :cond_9
    shr-int/lit8 v1, v4, 0x4

    xor-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    goto :goto_8
.end method

.method public static encodeForCookie([B)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->encode([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBase64Alphabet(Z)[B
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->base64AlphabetOriginal:[B

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->base64AlphabetForCookie:[B

    goto :goto_0
.end method

.method public static getLookUpBase64Alphabet(Z)[B
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->lookUpBase64AlphabetOriginal:[B

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->lookUpBase64AlphabetForCookie:[B

    goto :goto_0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v3, p0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-byte v4, p0, v2

    invoke-static {v4}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->isBase64(B)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isBase64(B)Z
    .locals 2

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->base64AlphabetForCookie:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBase64(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/oauth/signpost/oauth/signpost/signature/Base64;->isArrayByteBase64([B)Z

    move-result v0

    return v0
.end method
