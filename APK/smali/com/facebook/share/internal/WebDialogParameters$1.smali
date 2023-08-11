.class final Lcom/facebook/share/internal/WebDialogParameters$1;
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

    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/WebDialogParameters$1;->apply(Lcom/facebook/share/model/SharePhoto;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lcom/facebook/share/model/SharePhoto;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
