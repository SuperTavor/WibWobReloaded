.class public Lcom/hangame/hsp/cgp/model/ResponseCheck;
.super Ljava/lang/Object;


# instance fields
.field private promotionCheck:Z

.field private promotionType:I

.field private rewardCheck:Z

.field private rewardCheckByInstall:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/hangame/hsp/cgp/model/ResponseCheck;->promotionCheck:Z

    iput-boolean v0, p0, Lcom/hangame/hsp/cgp/model/ResponseCheck;->rewardCheck:Z

    iput-boolean v0, p0, Lcom/hangame/hsp/cgp/model/ResponseCheck;->rewardCheckByInstall:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/hangame/hsp/cgp/model/ResponseCheck;->setPromotionType(I)V

    return-void
.end method

.method public constructor <init>(ZZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/hangame/hsp/cgp/model/ResponseCheck;->promotionCheck:Z

    iput-boolean p2, p0, Lcom/hangame/hsp/cgp/model/ResponseCheck;->rewardCheck:Z

    iput-boolean p3, p0, Lcom/hangame/hsp/cgp/model/ResponseCheck;->rewardCheckByInstall:Z

    iput p4, p0, Lcom/hangame/hsp/cgp/model/ResponseCheck;->promotionType:I

    return-void
.end method


# virtual methods
.method public getPromotionType()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/cgp/model/ResponseCheck;->promotionType:I

    return v0
.end method

.method public isOneOrAllRewardCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/cgp/model/ResponseCheck;->rewardCheck:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hangame/hsp/cgp/model/ResponseCheck;->rewardCheckByInstall:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPromotionCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/cgp/model/ResponseCheck;->promotionCheck:Z

    return v0
.end method

.method public isRewardCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/cgp/model/ResponseCheck;->rewardCheck:Z

    return v0
.end method

.method public isRewardCheckByInstall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/cgp/model/ResponseCheck;->rewardCheckByInstall:Z

    return v0
.end method

.method public setPromotionCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/cgp/model/ResponseCheck;->promotionCheck:Z

    return-void
.end method

.method public setPromotionType(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/cgp/model/ResponseCheck;->promotionType:I

    return-void
.end method

.method public setRewardCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/cgp/model/ResponseCheck;->rewardCheck:Z

    return-void
.end method

.method public setRewardCheckByInstall(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/cgp/model/ResponseCheck;->rewardCheckByInstall:Z

    return-void
.end method
