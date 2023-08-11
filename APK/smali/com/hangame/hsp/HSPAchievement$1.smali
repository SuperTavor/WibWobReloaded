.class final Lcom/hangame/hsp/HSPAchievement$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiResHandler;


# instance fields
.field final synthetic val$achievedCacheDb:Lcom/hangame/hsp/HSPAchievedCache;

.field final synthetic val$achieventCacheDb:Lcom/hangame/hsp/HSPAchievementCache;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPAchievement$HSPLoadAchievementsCB;

.field final synthetic val$gameNo:I

.field final synthetic val$memberNo:J


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPAchievement$HSPLoadAchievementsCB;JLcom/hangame/hsp/HSPAchievedCache;ILcom/hangame/hsp/HSPAchievementCache;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPAchievement$1;->val$callback:Lcom/hangame/hsp/HSPAchievement$HSPLoadAchievementsCB;

    iput-wide p2, p0, Lcom/hangame/hsp/HSPAchievement$1;->val$memberNo:J

    iput-object p4, p0, Lcom/hangame/hsp/HSPAchievement$1;->val$achievedCacheDb:Lcom/hangame/hsp/HSPAchievedCache;

    iput p5, p0, Lcom/hangame/hsp/HSPAchievement$1;->val$gameNo:I

    iput-object p6, p0, Lcom/hangame/hsp/HSPAchievement$1;->val$achieventCacheDb:Lcom/hangame/hsp/HSPAchievementCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;[B)V
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/hangame/hsp/HSPAchievement$1;->val$callback:Lcom/hangame/hsp/HSPAchievement$HSPLoadAchievementsCB;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetAchieveItemList;

    invoke-direct {v3}, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetAchieveItemList;-><init>()V

    invoke-static {v3, p3}, Lcom/hangame/hsp/core/MashupMessageUtil;->load(LXDR/IMessage;[B)V

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetAchieveItemList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    if-nez v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetAchieveItemList;->achieveItemList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v2

    move v4, v2

    move v3, v2

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    new-instance v8, Lcom/hangame/hsp/HSPAchievement;

    invoke-direct {v8}, Lcom/hangame/hsp/HSPAchievement;-><init>()V

    move-object v0, v6

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/AchieveItem;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AchieveItem;->achieveId:Ljava/lang/String;

    iput-object v0, v8, Lcom/hangame/hsp/HSPAchievement;->mAchievementID:Ljava/lang/String;

    move-object v0, v6

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/AchieveItem;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AchieveItem;->achieveName:Ljava/lang/String;

    iput-object v0, v8, Lcom/hangame/hsp/HSPAchievement;->mTitle:Ljava/lang/String;

    move-object v0, v6

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/AchieveItem;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AchieveItem;->achieveDetailName:Ljava/lang/String;

    iput-object v0, v8, Lcom/hangame/hsp/HSPAchievement;->mDetail:Ljava/lang/String;

    move-object v0, v6

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/AchieveItem;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AchieveItem;->achieveScore:I

    iput v0, v8, Lcom/hangame/hsp/HSPAchievement;->mScore:I

    move-object v0, v6

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/AchieveItem;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AchieveItem;->achievedIconUrl:Ljava/lang/String;

    iput-object v0, v8, Lcom/hangame/hsp/HSPAchievement;->mAchievedIconURL:Ljava/lang/String;

    move-object v0, v6

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/AchieveItem;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AchieveItem;->unachievedIconUrl:Ljava/lang/String;

    iput-object v0, v8, Lcom/hangame/hsp/HSPAchievement;->mUnachievedIconURL:Ljava/lang/String;

    move-object v0, v6

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/AchieveItem;

    iget-boolean v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AchieveItem;->achieved:Z

    iput-boolean v0, v8, Lcom/hangame/hsp/HSPAchievement;->mIsAchieved:Z

    const-string v0, "HSPAchievement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insert :: memno : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/hangame/hsp/HSPAchievement$1;->val$memberNo:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  mIsAchieved : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v8, Lcom/hangame/hsp/HSPAchievement;->mIsAchieved:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/AchieveItem;

    iget v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AchieveItem;->achieveScore:I

    add-int/2addr v2, v0

    add-int/lit8 v3, v3, 0x1

    move-object v0, v6

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/AchieveItem;

    iget-boolean v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/AchieveItem;->achieved:Z

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    check-cast v6, Lcom/hangame/hsp/xdr/hsp13/response/AchieveItem;

    iget v0, v6, Lcom/hangame/hsp/xdr/hsp13/response/AchieveItem;->achieveScore:I

    add-int/2addr v4, v0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/HSPAchievement$1;->val$callback:Lcom/hangame/hsp/HSPAchievement$HSPLoadAchievementsCB;

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/hangame/hsp/HSPAchievement$HSPLoadAchievementsCB;->onAchievementsLoad(Ljava/util/List;IIIILcom/hangame/hsp/HSPResult;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/hangame/hsp/HSPAchievement$1;->val$callback:Lcom/hangame/hsp/HSPAchievement$HSPLoadAchievementsCB;

    const-string v4, "MASHUP"

    iget-object v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetAchieveItemList;->header:Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;

    iget v3, v3, Lcom/hangame/hsp/xdr/hsp13/response/AnsHeader;->status:I

    invoke-static {v4, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v6

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v6}, Lcom/hangame/hsp/HSPAchievement$HSPLoadAchievementsCB;->onAchievementsLoad(Ljava/util/List;IIIILcom/hangame/hsp/HSPResult;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/hangame/hsp/HSPAchievement$1;->val$callback:Lcom/hangame/hsp/HSPAchievement$HSPLoadAchievementsCB;

    move v3, v2

    move v4, v2

    move v5, v2

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/hangame/hsp/HSPAchievement$HSPLoadAchievementsCB;->onAchievementsLoad(Ljava/util/List;IIIILcom/hangame/hsp/HSPResult;)V

    goto :goto_1
.end method
