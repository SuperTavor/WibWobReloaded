.class Ltv/superawesome/lib/savastparser/SAVASTParser$2;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/superawesome/lib/savastparser/SAVASTParserInterface;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/savastparser/SAVASTParser;

.field final synthetic val$localListener:Ltv/superawesome/lib/savastparser/SAVASTParserInterface;


# direct methods
.method constructor <init>(Ltv/superawesome/lib/savastparser/SAVASTParser;Ltv/superawesome/lib/savastparser/SAVASTParserInterface;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$2;->this$0:Ltv/superawesome/lib/savastparser/SAVASTParser;

    iput-object p2, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$2;->val$localListener:Ltv/superawesome/lib/savastparser/SAVASTParserInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saDidParseVAST(Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->media:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;

    if-eqz v1, :cond_0

    iget v4, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->bitrate:I

    iget v5, v1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->bitrate:I

    if-ge v4, v5, :cond_b

    :cond_0
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->media:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;

    if-eqz v3, :cond_2

    iget v5, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->bitrate:I

    iget v6, v3, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->bitrate:I

    if-le v5, v6, :cond_a

    :cond_2
    :goto_3
    move-object v3, v0

    goto :goto_2

    :cond_3
    iget-object v0, p1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->media:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v2

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;

    if-eq v0, v1, :cond_9

    if-eq v0, v3, :cond_9

    :goto_5
    move-object v4, v0

    goto :goto_4

    :cond_4
    iget-object v0, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$2;->this$0:Ltv/superawesome/lib/savastparser/SAVASTParser;

    invoke-static {v0}, Ltv/superawesome/lib/savastparser/SAVASTParser;->access$000(Ltv/superawesome/lib/savastparser/SAVASTParser;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltv/superawesome/lib/sautils/SAUtils;->getNetworkConnectivity(Landroid/content/Context;)Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;

    move-result-object v0

    sget-object v5, Ltv/superawesome/lib/savastparser/SAVASTParser$10;->$SwitchMap$tv$superawesome$lib$sautils$SAUtils$SAConnectionType:[I

    invoke-virtual {v0}, Ltv/superawesome/lib/sautils/SAUtils$SAConnectionType;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_0

    :goto_6
    iget-object v0, p1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->url:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->media:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    iget-object v0, p1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->media:Ljava/util/List;

    iget-object v1, p1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->media:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;

    iget-object v0, v0, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->url:Ljava/lang/String;

    iput-object v0, p1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->url:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Ltv/superawesome/lib/savastparser/SAVASTParser$2;->val$localListener:Ltv/superawesome/lib/savastparser/SAVASTParserInterface;

    invoke-interface {v0, p1}, Ltv/superawesome/lib/savastparser/SAVASTParserInterface;->saDidParseVAST(Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;)V

    return-void

    :pswitch_0
    if-eqz v1, :cond_6

    iget-object v2, v1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->url:Ljava/lang/String;

    :cond_6
    iput-object v2, p1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->url:Ljava/lang/String;

    goto :goto_6

    :pswitch_1
    if-eqz v4, :cond_7

    iget-object v2, v4, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->url:Ljava/lang/String;

    :cond_7
    iput-object v2, p1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->url:Ljava/lang/String;

    goto :goto_6

    :pswitch_2
    if-eqz v3, :cond_8

    iget-object v2, v3, Ltv/superawesome/lib/samodelspace/vastad/SAVASTMedia;->url:Ljava/lang/String;

    :cond_8
    iput-object v2, p1, Ltv/superawesome/lib/samodelspace/vastad/SAVASTAd;->url:Ljava/lang/String;

    goto :goto_6

    :cond_9
    move-object v0, v4

    goto :goto_5

    :cond_a
    move-object v0, v3

    goto :goto_3

    :cond_b
    move-object v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
