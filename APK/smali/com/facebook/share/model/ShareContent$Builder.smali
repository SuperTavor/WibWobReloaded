.class public abstract Lcom/facebook/share/model/ShareContent$Builder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# instance fields
.field private contentUrl:Landroid/net/Uri;

.field private hashtag:Lcom/facebook/share/model/ShareHashtag;

.field private peopleIds:Ljava/util/List;

.field private placeId:Ljava/lang/String;

.field private ref:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareContent$Builder;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/facebook/share/model/ShareContent$Builder;->contentUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/ShareContent$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/facebook/share/model/ShareContent$Builder;->peopleIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/ShareContent$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/share/model/ShareContent$Builder;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/ShareContent$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/share/model/ShareContent$Builder;->ref:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/share/model/ShareContent$Builder;)Lcom/facebook/share/model/ShareHashtag;
    .locals 1

    iget-object v0, p0, Lcom/facebook/share/model/ShareContent$Builder;->hashtag:Lcom/facebook/share/model/ShareHashtag;

    return-object v0
.end method


# virtual methods
.method public readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->getPeopleIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareContent$Builder;->setPeopleIds(Ljava/util/List;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareContent$Builder;->setPlaceId(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareContent$Builder;->setRef(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 1

    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/facebook/share/model/ShareContent$Builder;->contentUrl:Landroid/net/Uri;

    return-object p0
.end method

.method public setPeopleIds(Ljava/util/List;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/share/model/ShareContent$Builder;->peopleIds:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public setPlaceId(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/facebook/share/model/ShareContent$Builder;->placeId:Ljava/lang/String;

    return-object p0
.end method

.method public setRef(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/facebook/share/model/ShareContent$Builder;->ref:Ljava/lang/String;

    return-object p0
.end method

.method public setShareHashtag(Lcom/facebook/share/model/ShareHashtag;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/facebook/share/model/ShareContent$Builder;->hashtag:Lcom/facebook/share/model/ShareHashtag;

    return-object p0
.end method
