.class public final Lcom/facebook/internal/FileLruCache$Limits;
.super Ljava/lang/Object;


# instance fields
.field private byteCount:I

.field private fileCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->fileCount:I

    const/high16 v0, 0x100000

    iput v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->byteCount:I

    return-void
.end method


# virtual methods
.method getByteCount()I
    .locals 1

    iget v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->byteCount:I

    return v0
.end method

.method getFileCount()I
    .locals 1

    iget v0, p0, Lcom/facebook/internal/FileLruCache$Limits;->fileCount:I

    return v0
.end method

.method setByteCount(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Cache byte-count limit must be >= 0"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/facebook/internal/FileLruCache$Limits;->byteCount:I

    return-void
.end method

.method setFileCount(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Cache file count limit must be >= 0"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/facebook/internal/FileLruCache$Limits;->fileCount:I

    return-void
.end method
