.class public Ltv/superawesome/lib/savastparser/SAXMLParser;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Ltv/superawesome/lib/savastparser/SAXMLParser;->searchSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static findFirstInstanceInSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 3

    invoke-static {p0, p1}, Ltv/superawesome/lib/savastparser/SAXMLParser;->searchSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseXML(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "utf-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->normalize()V

    return-object v0
.end method

.method public static searchSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Ltv/superawesome/lib/savastparser/SAXMLParser;->searchSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static searchSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    const/4 v4, 0x1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ltv/superawesome/lib/savastparser/SAXMLParser$1;

    invoke-direct {v0}, Ltv/superawesome/lib/savastparser/SAXMLParser$1;-><init>()V

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v4, :cond_2

    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_5

    check-cast p0, Lorg/w3c/dom/Document;

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v4, :cond_4

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ltv/superawesome/lib/savastparser/SAXMLParser;->searchSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/util/List;)V

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method public static searchSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;Ltv/superawesome/lib/savastparser/SAXMLParser$SAXMLIterator;)V
    .locals 2

    invoke-static {p0, p1}, Ltv/superawesome/lib/savastparser/SAXMLParser;->searchSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {p2, v0}, Ltv/superawesome/lib/savastparser/SAXMLParser$SAXMLIterator;->saDidFindXMLElement(Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_0
    return-void
.end method
