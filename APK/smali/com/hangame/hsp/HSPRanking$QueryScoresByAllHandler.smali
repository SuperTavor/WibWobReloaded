.class Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPResHandler;


# instance fields
.field mCallback:Lcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;

.field mResData1:[B

.field mResData2:[B

.field mResult1:Lcom/hangame/hsp/HSPResult;

.field mResult2:Lcom/hangame/hsp/HSPResult;

.field final synthetic this$0:Lcom/hangame/hsp/HSPRanking;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPRanking;Lcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->this$0:Lcom/hangame/hsp/HSPRanking;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mCallback:Lcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;

    return-void
.end method

.method private onScoresReceive()V
    .locals 12

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mResult1:Lcom/hangame/hsp/HSPResult;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mResult2:Lcom/hangame/hsp/HSPResult;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListNearMember2;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListNearMember2;-><init>()V

    new-instance v10, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListByRankingKey2;

    invoke-direct {v10}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListByRankingKey2;-><init>()V

    iget-object v1, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mResData1:[B

    invoke-static {v0, v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mResData2:[B

    invoke-static {v10, v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListNearMember2;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListNearMember2;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    const v2, 0x7000b

    if-ne v1, v2, :cond_4

    :cond_0
    iget-object v1, v10, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListByRankingKey2;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListNearMember2;->rankingList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListNearMember2;->rankingList:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingItem;

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingItem;

    new-instance v1, Lcom/hangame/hsp/HSPScore;

    iget-wide v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingItem;->rankingScore:D

    iget v4, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingItem;->rankingGrade:I

    iget v5, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingItem;->rankChanged:I

    iget-object v6, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingItem;->profile:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    iget-wide v6, v6, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->memberNo:J

    iget-object v8, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingItem;->rankingExtra:Ljava/lang/String;

    invoke-direct/range {v1 .. v8}, Lcom/hangame/hsp/HSPScore;-><init>(DIIJLjava/lang/String;)V

    move-object v9, v1

    :goto_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v10, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListByRankingKey2;->rankingList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingItem;

    new-instance v1, Lcom/hangame/hsp/HSPScore;

    iget-wide v2, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingItem;->rankingScore:D

    iget v4, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingItem;->rankingGrade:I

    iget v5, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingItem;->rankChanged:I

    iget-object v6, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingItem;->profile:Lcom/hangame/hsp/xdr/hsp13/response/Profile;

    iget-wide v6, v6, Lcom/hangame/hsp/xdr/hsp13/response/Profile;->memberNo:J

    iget-object v8, v0, Lcom/hangame/hsp/xdr/hsp13/response/RankingItem;->rankingExtra:Ljava/lang/String;

    invoke-direct/range {v1 .. v8}, Lcom/hangame/hsp/HSPScore;-><init>(DIIJLjava/lang/String;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/hangame/hsp/HSPScore;

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move v5, v4

    invoke-direct/range {v1 .. v8}, Lcom/hangame/hsp/HSPScore;-><init>(DIIJLjava/lang/String;)V

    move-object v9, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mCallback:Lcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$1;

    invoke-direct {v0, p0, v9, v11}, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$1;-><init>(Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;Lcom/hangame/hsp/HSPScore;Ljava/util/List;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v1, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListNearMember2;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v1, v1, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mCallback:Lcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$2;

    invoke-direct {v1, p0, v0}, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$2;-><init>(Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListNearMember2;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    iget-object v0, v10, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListByRankingKey2;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mCallback:Lcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$3;

    invoke-direct {v0, p0, v10}, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$3;-><init>(Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;Lcom/hangame/hsp/xdr/hsp13/response/AnsGetRankingListByRankingKey2;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mResult1:Lcom/hangame/hsp/HSPResult;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mCallback:Lcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$4;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$4;-><init>(Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mResult2:Lcom/hangame/hsp/HSPResult;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mCallback:Lcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$5;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler$5;-><init>(Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mCallback:Lcom/hangame/hsp/HSPRanking$HSPQueryScoresByScopeCB;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iput-object p2, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mResult1:Lcom/hangame/hsp/HSPResult;

    iput-object p3, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mResData1:[B

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mResult2:Lcom/hangame/hsp/HSPResult;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->onScoresReceive()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-object p2, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mResult2:Lcom/hangame/hsp/HSPResult;

    iput-object p3, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mResData2:[B

    iget-object v0, p0, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->mResult1:Lcom/hangame/hsp/HSPResult;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hangame/hsp/HSPRanking$QueryScoresByAllHandler;->onScoresReceive()V

    goto :goto_0
.end method
