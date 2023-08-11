.class final Lcom/facebook/share/internal/ShareInternalUtility$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/internal/Utility$Mapper;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility$5;->apply(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getAttachmentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
