.class public Ltv/superawesome/lib/savastparser/SAVASTParser;
.super Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;

.field private header:Lorg/json/JSONObject;

.field private query:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/savastparser/SAVASTParser;->context:Landroid/content/Context;

    iput-object v0, p0, Ltv/superawesome/lib/savastparser/SAVASTParser;->header:Lorg/json/JSONObject;

    iput-object v0, p0, Ltv/superawesome/lib/savastparser/SAVASTParser;->query:Lorg/json/JSONObject;

    iput-object p1, p0, Ltv/superawesome/lib/savastparser/SAVASTParser;->context:Landroid/content/Context;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/savastparser/SAVASTParser;->query:Lorg/json/JSONObject;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Content-Type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "application/json"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "User-Agent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p1}, Ltv/superawesome/lib/sautils/SAUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ltv/superawesome/lib/sajsonparser/SAJsonParser;->newObject([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Ltv/superawesome/lib/savastparser/SAVASTParser;->header:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$000(Ltv/superawesome/lib/savastparser/SAVASTParser;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/savastparser/SAVASTParser;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Ltv/superawesome/lib/savastparser/SAVASTParser;Ljava/lang/String;Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;Ltv/superawesome/lib/savastparser/SAVASTParserInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ltv/superawesome/lib/savastparser/SAVASTParser;->recursiveParse(Ljava/lang/String;Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;Ltv/superawesome/lib/savastparser/SAVASTParserInterface;)V

    return-void
.end method

.method private recursiveParse(Ljava/lang/String;Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;Ltv/superawesome/lib/savastparser/SAVASTParserInterface;)V
    .locals 6

    new-instance v0, Ltv/superawesome/lib/sanetwork/request/SANetwork;

    invoke-direct {v0}, Ltv/superawesome/lib/sanetwork/request/SANetwork;-><init>()V

    iget-object v1, p0, Ltv/superawesome/lib/savastparser/SAVASTParser;->context:Landroid/content/Context;

    iget-object v3, p0, Ltv/superawesome/lib/savastparser/SAVASTParser;->query:Lorg/json/JSONObject;

    iget-object v4, p0, Ltv/superawesome/lib/savastparser/SAVASTParser;->header:Lorg/json/JSONObject;

    new-instance v5, Ltv/superawesome/lib/savastparser/SAVASTParser$3;

    invoke-direct {v5, p0, p3, p2}, Ltv/superawesome/lib/savastparser/SAVASTParser$3;-><init>(Ltv/superawesome/lib/savastparser/SAVASTParser;Ltv/superawesome/lib/savastparser/SAVASTParserInterface;Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Ltv/superawesome/lib/sanetwork/request/SANetwork;->sendGET(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;)V

    return-void
.end method


# virtual methods
.method public parseAdXML(Lorg/w3c/dom/Element;)Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;
    .locals 4

    new-instance v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;-><init>()V

    const-string v1, "InLine"

    invoke-static {p1, v1}, Ltv/superawesome/lib/savastparser/SAXMLParser;->checkSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Wrapper"

    invoke-static {p1, v2}, Ltv/superawesome/lib/savastparser/SAXMLParser;->checkSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result v2

    if-eqz v1, :cond_0

    sget-object v1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->InLine:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    iput-object v1, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->type:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    :cond_0
    if-eqz v2, :cond_1

    sget-object v1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->Wrapper:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    iput-object v1, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->type:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    :cond_1
    const-string v1, "VASTAdTagURI"

    invoke-static {p1, v1}, Ltv/superawesome/lib/savastparser/SAXMLParser;->findFirstInstanceInSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->redirect:Ljava/lang/String;

    :cond_2
    const-string v1, "Error"

    new-instance v2, Ltv/superawesome/lib/savastparser/SAVASTParser$4;

    invoke-direct {v2, p0, v0}, Ltv/superawesome/lib/savastparser/SAVASTParser$4;-><init>(Ltv/superawesome/lib/savastparser/SAVASTParser;Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V

    invoke-static {p1, v1, v2}, Ltv/superawesome/lib/savastparser/SAXMLParser;->searchSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;Ltv/superawesome/lib/savastparser/SAXMLParser$SAXMLIterator;)V

    const-string v1, "Impression"

    new-instance v2, Ltv/superawesome/lib/savastparser/SAVASTParser$5;

    invoke-direct {v2, p0, v0}, Ltv/superawesome/lib/savastparser/SAVASTParser$5;-><init>(Ltv/superawesome/lib/savastparser/SAVASTParser;Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V

    invoke-static {p1, v1, v2}, Ltv/superawesome/lib/savastparser/SAXMLParser;->searchSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;Ltv/superawesome/lib/savastparser/SAXMLParser$SAXMLIterator;)V

    const-string v1, "Creative"

    invoke-static {p1, v1}, Ltv/superawesome/lib/savastparser/SAXMLParser;->findFirstInstanceInSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "ClickThrough"

    new-instance v3, Ltv/superawesome/lib/savastparser/SAVASTParser$6;

    invoke-direct {v3, p0, v0}, Ltv/superawesome/lib/savastparser/SAVASTParser$6;-><init>(Ltv/superawesome/lib/savastparser/SAVASTParser;Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V

    invoke-static {v1, v2, v3}, Ltv/superawesome/lib/savastparser/SAXMLParser;->searchSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;Ltv/superawesome/lib/savastparser/SAXMLParser$SAXMLIterator;)V

    const-string v2, "ClickTracking"

    new-instance v3, Ltv/superawesome/lib/savastparser/SAVASTParser$7;

    invoke-direct {v3, p0, v0}, Ltv/superawesome/lib/savastparser/SAVASTParser$7;-><init>(Ltv/superawesome/lib/savastparser/SAVASTParser;Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V

    invoke-static {v1, v2, v3}, Ltv/superawesome/lib/savastparser/SAXMLParser;->searchSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;Ltv/superawesome/lib/savastparser/SAXMLParser$SAXMLIterator;)V

    const-string v2, "Tracking"

    new-instance v3, Ltv/superawesome/lib/savastparser/SAVASTParser$8;

    invoke-direct {v3, p0, v0}, Ltv/superawesome/lib/savastparser/SAVASTParser$8;-><init>(Ltv/superawesome/lib/savastparser/SAVASTParser;Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V

    invoke-static {v1, v2, v3}, Ltv/superawesome/lib/savastparser/SAXMLParser;->searchSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;Ltv/superawesome/lib/savastparser/SAXMLParser$SAXMLIterator;)V

    const-string v2, "MediaFile"

    new-instance v3, Ltv/superawesome/lib/savastparser/SAVASTParser$9;

    invoke-direct {v3, p0, v0}, Ltv/superawesome/lib/savastparser/SAVASTParser$9;-><init>(Ltv/superawesome/lib/savastparser/SAVASTParser;Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V

    invoke-static {v1, v2, v3}, Ltv/superawesome/lib/savastparser/SAXMLParser;->searchSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;Ltv/superawesome/lib/savastparser/SAXMLParser$SAXMLIterator;)V

    return-object v0
.end method

.method public parseMediaXML(Lorg/w3c/dom/Element;)Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;
    .locals 4

    new-instance v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;-><init>()V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->url:Ljava/lang/String;

    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->type:Ljava/lang/String;

    const-string v1, "bitrate"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->bitrate:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    :goto_1
    const-string v1, "width"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->width:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    const-string v1, "height"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->height:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public parseVAST(Ljava/lang/String;Ltv/superawesome/lib/savastparser/SAVASTParserInterface;)V
    .locals 2

    if-eqz p2, :cond_0

    :goto_0
    new-instance v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-direct {v0}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;-><init>()V

    new-instance v1, Ltv/superawesome/lib/savastparser/SAVASTParser$2;

    invoke-direct {v1, p0, p2}, Ltv/superawesome/lib/savastparser/SAVASTParser$2;-><init>(Ltv/superawesome/lib/savastparser/SAVASTParser;Ltv/superawesome/lib/savastparser/SAVASTParserInterface;)V

    invoke-direct {p0, p1, v0, v1}, Ltv/superawesome/lib/savastparser/SAVASTParser;->recursiveParse(Ljava/lang/String;Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;Ltv/superawesome/lib/savastparser/SAVASTParserInterface;)V

    return-void

    :cond_0
    new-instance p2, Ltv/superawesome/lib/savastparser/SAVASTParser$1;

    invoke-direct {p2, p0}, Ltv/superawesome/lib/savastparser/SAVASTParser$1;-><init>(Ltv/superawesome/lib/savastparser/SAVASTParser;)V

    goto :goto_0
.end method
