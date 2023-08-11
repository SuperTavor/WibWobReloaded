.class final Lcom/hangame/hsp/oauth/signpost/com/google/gdata/util/common/base/UnicodeEscaper$2;
.super Ljava/lang/ThreadLocal;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/hangame/hsp/oauth/signpost/com/google/gdata/util/common/base/UnicodeEscaper$2;->initialValue()[C

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()[C
    .locals 1

    const/16 v0, 0x400

    new-array v0, v0, [C

    return-object v0
.end method
