.class Ltv/superawesome/lib/savastparser/SAVASTParser$9;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/savastparser/SAXMLParser$SAXMLIterator;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/savastparser/SAVASTParser;

.field final synthetic val$ad:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/savastparser/SAVASTParser;Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$9;->this$0:Ltv/superawesome/lib/savastparser/SAVASTParser;

    iput-object p2, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$9;->val$ad:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saDidFindXMLElement(Lorg/w3c/dom/Element;)V
    .locals 3

    iget-object v0, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$9;->this$0:Ltv/superawesome/lib/savastparser/SAVASTParser;

    invoke-virtual {v0, p1}, Ltv/superawesome/lib/savastparser/SAVASTParser;->parseMediaXML(Lorg/w3c/dom/Element;)Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;

    move-result-object v0

    iget-object v1, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->type:Ljava/lang/String;

    const-string v2, "mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->type:Ljava/lang/String;

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$9;->val$ad:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->media:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
