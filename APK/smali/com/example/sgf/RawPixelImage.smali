.class public Lcom/example/sgf/RawPixelImage;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static final c:Ljava/util/HashMap;


# instance fields
.field public hasAlpha:I

.field public height:I

.field public pixelData:Ljava/nio/Buffer;

.field public pixelSize:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/example/sgf/RawPixelImage;->a:I

    sput v0, Lcom/example/sgf/RawPixelImage;->b:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/example/sgf/RawPixelImage;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/sgf/RawPixelImage;->pixelData:Ljava/nio/Buffer;

    iput v1, p0, Lcom/example/sgf/RawPixelImage;->pixelSize:I

    iput v1, p0, Lcom/example/sgf/RawPixelImage;->width:I

    iput v1, p0, Lcom/example/sgf/RawPixelImage;->height:I

    iput v1, p0, Lcom/example/sgf/RawPixelImage;->hasAlpha:I

    return-void
.end method

.method private static a(Landroid/graphics/Paint$FontMetricsInt;III)I
    .locals 2

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    if-le p1, p2, :cond_0

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    goto :goto_0

    :pswitch_1
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    sub-int v1, p1, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    :pswitch_2
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    sub-int v1, p1, p2

    add-int/2addr v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;II)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    move p1, v0

    :goto_0
    :pswitch_0
    return p1

    :pswitch_1
    div-int/lit8 p1, p1, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;FI)Landroid/graphics/Paint;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v1, ".ttf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".otf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/example/sgf/RawPixelImage;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    packed-switch p2, :pswitch_data_0

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {p0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    invoke-static {p0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_0
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    :pswitch_1
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Landroid/graphics/Bitmap;)Lcom/example/sgf/RawPixelImage;
    .locals 6

    new-instance v1, Lcom/example/sgf/RawPixelImage;

    invoke-direct {v1}, Lcom/example/sgf/RawPixelImage;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    mul-int v4, v0, v2

    div-int v4, v3, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v5

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v1, Lcom/example/sgf/RawPixelImage;->pixelData:Ljava/nio/Buffer;

    iput v4, v1, Lcom/example/sgf/RawPixelImage;->pixelSize:I

    iput v0, v1, Lcom/example/sgf/RawPixelImage;->width:I

    iput v2, v1, Lcom/example/sgf/RawPixelImage;->height:I

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/example/sgf/RawPixelImage;->hasAlpha:I

    iget-object v0, v1, Lcom/example/sgf/RawPixelImage;->pixelData:Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;IILandroid/graphics/Paint;)Lcom/example/sgf/m;
    .locals 10

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v1, v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v4, v0

    invoke-static {p0, p1, p2, p3}, Lcom/example/sgf/RawPixelImage;->b(Ljava/lang/String;IILandroid/graphics/Paint;)[Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_0

    :goto_0
    new-instance v0, Lcom/example/sgf/m;

    invoke-direct {v0, p1, v4, v5}, Lcom/example/sgf/m;-><init>(II[Ljava/lang/String;)V

    return-object v0

    :cond_0
    array-length v6, v5

    move v2, v3

    move v1, v3

    :goto_1
    if-ge v2, v6, :cond_2

    aget-object v0, v5, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p3, v0, v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    if-le v0, v1, :cond_1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move p1, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;FI)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/example/sgf/RawPixelImage;->a:I

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/example/sgf/RawPixelImage;->a(Ljava/lang/String;FI)Landroid/graphics/Paint;

    move-result-object v0

    const-string v1, "\uff01"

    invoke-static {v1, v2, v2, v0}, Lcom/example/sgf/RawPixelImage;->a(Ljava/lang/String;IILandroid/graphics/Paint;)Lcom/example/sgf/m;

    move-result-object v0

    invoke-static {v0}, Lcom/example/sgf/m;->b(Lcom/example/sgf/m;)I

    move-result v0

    if-nez v0, :cond_4

    sput v3, Lcom/example/sgf/RawPixelImage;->a:I

    :cond_0
    :goto_0
    sget v0, Lcom/example/sgf/RawPixelImage;->b:I

    if-nez v0, :cond_1

    invoke-static {p1, p2, p3}, Lcom/example/sgf/RawPixelImage;->a(Ljava/lang/String;FI)Landroid/graphics/Paint;

    move-result-object v0

    const-string v1, "\u300c"

    invoke-static {v1, v2, v2, v0}, Lcom/example/sgf/RawPixelImage;->a(Ljava/lang/String;IILandroid/graphics/Paint;)Lcom/example/sgf/m;

    move-result-object v0

    invoke-static {v0}, Lcom/example/sgf/m;->b(Lcom/example/sgf/m;)I

    move-result v0

    if-nez v0, :cond_5

    sput v3, Lcom/example/sgf/RawPixelImage;->b:I

    :cond_1
    :goto_1
    sget v0, Lcom/example/sgf/RawPixelImage;->a:I

    if-ne v0, v3, :cond_2

    const-string v0, "\uff01"

    const-string v1, " \uff01 "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u3002"

    const-string v2, "\u3002\u3000"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u3001"

    const-string v2, "\u3001\u3000"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\uff0c"

    const-string v2, "\uff0c\u3000"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\uff0e"

    const-string v2, "\uff0e\u3000"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u30fb"

    const-string v2, "\uff65"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\uff1a"

    const-string v2, " \uff1a "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\uff1b"

    const-string v2, " \uff1b "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    sget v0, Lcom/example/sgf/RawPixelImage;->b:I

    if-ne v0, v3, :cond_3

    const-string v0, "\u300c"

    const-string v1, "\u3000\u300c"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u300d"

    const-string v2, "\u300d\u3000"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u3010"

    const-string v2, "\u3000\u3010"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u3011"

    const-string v2, "\u3011\u3000"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u300a"

    const-string v2, "\u3000\u300a"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u300b"

    const-string v2, "\u300b\u3000"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\uff08"

    const-string v2, "\u3000\uff08"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\uff09"

    const-string v2, "\uff09\u3000"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u3014"

    const-string v2, "\u3000\u3014"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u3015"

    const-string v2, "\u3015\u3000"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u300e"

    const-string v2, "\u3000\u300e"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u300f"

    const-string v2, "\u300f\u3000"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u3008"

    const-string v2, "\u3000\u3008"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u3009"

    const-string v2, "\u3009\u3000"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\uff3b"

    const-string v2, "\u3000\uff3b"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\uff3d"

    const-string v2, "\uff3d\u3000"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\uff5b"

    const-string v2, "\u3000\uff5b"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\uff5d"

    const-string v2, "\uff5d\u3000"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0

    :cond_4
    sput v4, Lcom/example/sgf/RawPixelImage;->a:I

    goto/16 :goto_0

    :cond_5
    sput v4, Lcom/example/sgf/RawPixelImage;->b:I

    goto/16 :goto_1
.end method

.method private static a(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/util/LinkedList;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x1

    move v1, v2

    :goto_0
    if-gt v0, v3, :cond_4

    invoke-virtual {p2, p0, v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v5

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    if-lt v5, p1, :cond_3

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    if-le v6, v1, :cond_0

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v6, 0x1

    :goto_1
    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x20

    if-ne v1, v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    if-le v5, p1, :cond_1

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v1, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-ge v1, v3, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v4
.end method

.method private static b(Ljava/lang/String;IILandroid/graphics/Paint;)[Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const-string v0, "\\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v2, v3, v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    div-int v2, p2, v2

    if-eqz p1, :cond_5

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    if-le v6, p1, :cond_1

    invoke-static {v5, p1, p3}, Lcom/example/sgf/RawPixelImage;->a(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    if-lez v2, :cond_2

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lt v5, v2, :cond_2

    :cond_0
    if-lez v2, :cond_3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    :goto_2
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_4
    :goto_3
    return-object v0

    :cond_5
    if-eqz p2, :cond_4

    array-length v3, v0

    if-le v3, v2, :cond_4

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    :goto_4
    if-ge v1, v2, :cond_6

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_3
.end method

.method public static createFromString([BLjava/lang/String;FFFFFFFFFFIIII)Lcom/example/sgf/RawPixelImage;
    .locals 18

    const-string v4, ""

    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p14

    invoke-static {v3, v0, v1, v2}, Lcom/example/sgf/RawPixelImage;->a(Ljava/lang/String;Ljava/lang/String;FI)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/example/sgf/RawPixelImage;->a(Ljava/lang/String;FI)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    const/4 v3, 0x1

    :goto_1
    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v7, v7, p6

    float-to-int v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float v8, v8, p3

    float-to-int v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float v9, v9, p4

    float-to-int v9, v9

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float v10, v10, p5

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    invoke-static {v5, v4, v3, v6}, Lcom/example/sgf/RawPixelImage;->a(Ljava/lang/String;IILandroid/graphics/Paint;)Lcom/example/sgf/m;

    move-result-object v7

    if-gtz v3, :cond_2

    invoke-static {v7}, Lcom/example/sgf/m;->a(Lcom/example/sgf/m;)I

    move-result v4

    :goto_2
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7}, Lcom/example/sgf/m;->b(Lcom/example/sgf/m;)I

    move-result v11

    if-eqz v11, :cond_0

    if-nez v4, :cond_3

    :cond_0
    const/4 v3, 0x0

    :goto_3
    return-object v3

    :catch_0
    move-exception v3

    move-object v3, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_2

    :cond_3
    invoke-static {v7}, Lcom/example/sgf/m;->b(Lcom/example/sgf/m;)I

    move-result v11

    float-to-int v5, v5

    add-int/2addr v5, v11

    move/from16 v0, p7

    float-to-int v11, v0

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v5

    float-to-int v5, v8

    add-int v8, v4, v5

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v8, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    const/4 v4, 0x0

    cmpl-float v4, p7, v4

    if-lez v4, :cond_4

    move/from16 p5, p10

    move/from16 p4, p9

    move/from16 p3, p8

    :cond_4
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v4, v4, p3

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x10

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v5, v5, p4

    float-to-int v5, v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v5, v5, p5

    float-to-int v5, v5

    or-int v15, v4, v5

    const/4 v4, 0x0

    move v5, v4

    :goto_4
    if-ge v5, v8, :cond_6

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v11, :cond_5

    invoke-virtual {v12, v4, v5, v15}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    cmpl-float v4, p7, v4

    if-lez v4, :cond_7

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p14

    invoke-static {v0, v1, v2}, Lcom/example/sgf/RawPixelImage;->a(Ljava/lang/String;FI)Landroid/graphics/Paint;

    move-result-object v5

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v4, v4, p11

    float-to-int v4, v4

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float v8, v8, p8

    float-to-int v8, v8

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float v11, v11, p9

    float-to-int v11, v11

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float v15, v15, p10

    float-to-int v15, v15

    invoke-virtual {v5, v4, v8, v11, v15}, Landroid/graphics/Paint;->setARGB(IIII)V

    invoke-static {v7}, Lcom/example/sgf/m;->a(Lcom/example/sgf/m;)I

    move-result v4

    move/from16 v0, p15

    invoke-static {v14, v3, v4, v0}, Lcom/example/sgf/RawPixelImage;->a(Landroid/graphics/Paint$FontMetricsInt;III)I

    move-result v4

    invoke-static {v7}, Lcom/example/sgf/m;->c(Lcom/example/sgf/m;)[Ljava/lang/String;

    move-result-object v8

    array-length v11, v8

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v11, :cond_8

    aget-object v14, v8, v3

    invoke-static {v7}, Lcom/example/sgf/m;->b(Lcom/example/sgf/m;)I

    move-result v15

    move/from16 v0, p14

    invoke-static {v14, v15, v0}, Lcom/example/sgf/RawPixelImage;->a(Ljava/lang/String;II)I

    move-result v15

    int-to-float v0, v15

    move/from16 v16, v0

    add-float v16, v16, v9

    const/high16 v17, 0x40000000    # 2.0f

    div-float v17, p7, v17

    add-float v16, v16, v17

    int-to-float v0, v4

    move/from16 v17, v0

    add-float v17, v17, v10

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v14, v0, v1, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    int-to-float v15, v15

    add-float/2addr v15, v9

    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, p7, v16

    add-float v15, v15, v16

    int-to-float v0, v4

    move/from16 v16, v0

    add-float v16, v16, v10

    move/from16 v0, v16

    invoke-virtual {v13, v14, v15, v0, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-static {v7}, Lcom/example/sgf/m;->d(Lcom/example/sgf/m;)I

    move-result v14

    add-int/2addr v4, v14

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    invoke-static {v7}, Lcom/example/sgf/m;->a(Lcom/example/sgf/m;)I

    move-result v4

    move/from16 v0, p15

    invoke-static {v14, v3, v4, v0}, Lcom/example/sgf/RawPixelImage;->a(Landroid/graphics/Paint$FontMetricsInt;III)I

    move-result v4

    invoke-static {v7}, Lcom/example/sgf/m;->c(Lcom/example/sgf/m;)[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v8, :cond_8

    aget-object v11, v5, v3

    invoke-static {v7}, Lcom/example/sgf/m;->b(Lcom/example/sgf/m;)I

    move-result v14

    move/from16 v0, p14

    invoke-static {v11, v14, v0}, Lcom/example/sgf/RawPixelImage;->a(Ljava/lang/String;II)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v14, v9

    int-to-float v15, v4

    add-float/2addr v15, v10

    invoke-virtual {v13, v11, v14, v15, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-static {v7}, Lcom/example/sgf/m;->d(Lcom/example/sgf/m;)I

    move-result v11

    add-int/2addr v4, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    invoke-static {v12}, Lcom/example/sgf/RawPixelImage;->a(Landroid/graphics/Bitmap;)Lcom/example/sgf/RawPixelImage;

    move-result-object v3

    goto/16 :goto_3
.end method

.method public static declared-synchronized getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    const-class v1, Lcom/example/sgf/RawPixelImage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/example/sgf/RawPixelImage;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {p0}, Lcom/example/util/YWPWebViewHelper2;->setFontByteAry(Ljava/lang/String;)V

    :goto_0
    sget-object v2, Lcom/example/sgf/RawPixelImage;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/example/sgf/RawPixelImage;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/sgf/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static loadRawImage(Ljava/lang/String;)Lcom/example/sgf/RawPixelImage;
    .locals 1

    invoke-static {p0}, Lcom/example/sgf/FileLoader;->loadRawImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/example/sgf/RawPixelImage;->a(Landroid/graphics/Bitmap;)Lcom/example/sgf/RawPixelImage;

    move-result-object v0

    return-object v0
.end method
