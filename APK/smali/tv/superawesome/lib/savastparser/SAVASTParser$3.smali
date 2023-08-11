.class Ltv/superawesome/lib/savastparser/SAVASTParser$3;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/sanetwork/request/SANetworkInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/savastparser/SAVASTParser;

.field final synthetic val$listener:Ltv/superawesome/lib/savastparser/SAVASTParserInterface;

.field final synthetic val$startAd:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/savastparser/SAVASTParser;Ltv/superawesome/lib/savastparser/SAVASTParserInterface;Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$3;->this$0:Ltv/superawesome/lib/savastparser/SAVASTParser;

    iput-object p2, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$3;->val$listener:Ltv/superawesome/lib/savastparser/SAVASTParserInterface;

    iput-object p3, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$3;->val$startAd:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saDidGetResponse(ILjava/lang/String;Z)V
    .locals 4

    if-nez p3, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$3;->val$listener:Ltv/superawesome/lib/savastparser/SAVASTParserInterface;

    iget-object v1, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$3;->val$startAd:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-interface {v0, v1}, Ltv/superawesome/lib/savastparser/SAVASTParserInterface;->saDidParseVAST(Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p2}, Ltv/superawesome/lib/savastparser/SAXMLParser;->parseXML(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "Ad"

    invoke-static {v0, v1}, Ltv/superawesome/lib/savastparser/SAXMLParser;->findFirstInstanceInSiblingsAndChildrenOf(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$3;->val$listener:Ltv/superawesome/lib/savastparser/SAVASTParserInterface;

    iget-object v1, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$3;->val$startAd:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-interface {v0, v1}, Ltv/superawesome/lib/savastparser/SAVASTParserInterface;->saDidParseVAST(Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    iget-object v0, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$3;->val$listener:Ltv/superawesome/lib/savastparser/SAVASTParserInterface;

    iget-object v1, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$3;->val$startAd:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-interface {v0, v1}, Ltv/superawesome/lib/savastparser/SAVASTParserInterface;->saDidParseVAST(Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$3;->this$0:Ltv/superawesome/lib/savastparser/SAVASTParser;

    invoke-virtual {v1, v0}, Ltv/superawesome/lib/savastparser/SAVASTParser;->parseAdXML(Lorg/w3c/dom/Element;)Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    move-result-object v0

    sget-object v1, Ltv/superawesome/lib/savastparser/SAVASTParser$10;->$SwitchMap$tv$superawesome$lib$samodelspace$vastad$SAVASTAdType:[I

    iget-object v2, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->type:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;

    invoke-virtual {v2}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAdType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$3;->val$listener:Ltv/superawesome/lib/savastparser/SAVASTParserInterface;

    iget-object v1, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$3;->val$startAd:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-interface {v0, v1}, Ltv/superawesome/lib/savastparser/SAVASTParserInterface;->saDidParseVAST(Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$3;->val$startAd:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-virtual {v0, v1}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->sumAd(Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V

    iget-object v1, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$3;->val$listener:Ltv/superawesome/lib/savastparser/SAVASTParserInterface;

    invoke-interface {v1, v0}, Ltv/superawesome/lib/savastparser/SAVASTParserInterface;->saDidParseVAST(Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$3;->val$startAd:Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;

    invoke-virtual {v0, v1}, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->sumAd(Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V

    iget-object v1, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$3;->this$0:Ltv/superawesome/lib/savastparser/SAVASTParser;

    iget-object v2, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->redirect:Ljava/lang/String;

    iget-object v3, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$3;->val$listener:Ltv/superawesome/lib/savastparser/SAVASTParserInterface;

    invoke-static {v1, v2, v0, v3}, Ltv/superawesome/lib/savastparser/SAVASTParser;->access$100(Ltv/superawesome/lib/savastparser/SAVASTParser;Ljava/lang/String;Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;Ltv/superawesome/lib/savastparser/SAVASTParserInterface;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
