.class Ltv/superawesome/lib/savastparser/SAVASTParser$6;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/savastparser/SAXMLParser$SAXMLIterator;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/savastparser/SAVASTParser;

.field final synthetic val$ad:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/savastparser/SAVASTParser;Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$6;->this$0:Ltv/superawesome/lib/savastparser/SAVASTParser;

    iput-object p2, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$6;->val$ad:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saDidFindXMLElement(Lorg/w3c/dom/Element;)V
    .locals 4

    new-instance v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;-><init>()V

    const-string v1, "vast_click_through"

    iput-object v1, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->event:Ljava/lang/String;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "&amp;"

    const-string v3, "&"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%3A"

    const-string v3, ":"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2F"

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTEvent;->URL:Ljava/lang/String;

    iget-object v1, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$6;->val$ad:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    iget-object v1, v1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
