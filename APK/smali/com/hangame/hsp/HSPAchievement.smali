.class public final Lcom/hangame/hsp/HSPAchievement;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPAchievement"


# instance fields
.field protected mAchievedIconURL:Ljava/lang/String;

.field protected mAchievementID:Ljava/lang/String;

.field protected mDetail:Ljava/lang/String;

.field protected mIsAchieved:Z

.field protected mScore:I

.field protected mTitle:Ljava/lang/String;

.field protected mUnachievedIconURL:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadAchievedInfo(IJLcom/hangame/hsp/HSPAchievement$HSPLoadAchievedInfoCB;)V
    .locals 3

    const-string v0, "HSPAchievement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAchievedInfo(gameNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",memberNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPAchievement$3;

    invoke-direct {v0, p3}, Lcom/hangame/hsp/HSPAchievement$3;-><init>(Lcom/hangame/hsp/HSPAchievement$HSPLoadAchievedInfoCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetAchieveTotal;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetAchieveTotal;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetAchieveTotal;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iput p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetAchieveTotal;->gameNo:I

    iput-wide p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetAchieveTotal;->memberNo:J

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static loadAchievements(IJLcom/hangame/hsp/HSPAchievement$HSPLoadAchievementsCB;)V
    .locals 7

    const-string v0, "HSPAchievement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAchievements(gameNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",memberNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPAchievementCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPAchievementCache;

    move-result-object v6

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPAchievedCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPAchievedCache;

    move-result-object v4

    new-instance v0, Lcom/hangame/hsp/HSPAchievement$1;

    move-object v1, p3

    move-wide v2, p1

    move v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/hangame/hsp/HSPAchievement$1;-><init>(Lcom/hangame/hsp/HSPAchievement$HSPLoadAchievementsCB;JLcom/hangame/hsp/HSPAchievedCache;ILcom/hangame/hsp/HSPAchievementCache;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetAchieveItemList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetAchieveItemList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetAchieveItemList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iput p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetAchieveItemList;->gameNo:I

    iput-wide p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetAchieveItemList;->memberNo:J

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static reportAchievement(Ljava/lang/String;Lcom/hangame/hsp/HSPAchievement$HSPReportAchievementCB;)V
    .locals 4

    const-string v0, "HSPAchievement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportAchievement(achievementID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPAchievement$4;

    invoke-direct {v0, p1, p0}, Lcom/hangame/hsp/HSPAchievement$4;-><init>(Lcom/hangame/hsp/HSPAchievement$HSPReportAchievementCB;Ljava/lang/String;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetAchieved;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetAchieved;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetAchieved;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetAchieved;->gameNo:I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetAchieved;->memberNo:J

    iput-object p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetAchieved;->achieveId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method


# virtual methods
.method public downloadAchievedIcon(Lcom/hangame/hsp/HSPAchievement$HSPDownloadAchievedIconCB;)V
    .locals 2

    const-string v0, "HSPAchievement"

    const-string v1, "downloadAchievedIcon()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPAchievement$5;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPAchievement$5;-><init>(Lcom/hangame/hsp/HSPAchievement;Lcom/hangame/hsp/HSPAchievement$HSPDownloadAchievedIconCB;)V

    iget-object v1, p0, Lcom/hangame/hsp/HSPAchievement;->mAchievedIconURL:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/server/HSPImageService;->downloadIcon(Ljava/lang/String;Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    return-void
.end method

.method public downloadUnachievedIcon(Lcom/hangame/hsp/HSPAchievement$HSPDownloadUnachievedIconCB;)V
    .locals 2

    const-string v0, "HSPAchievement"

    const-string v1, "downloadUnachievedIcon()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPAchievement$6;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPAchievement$6;-><init>(Lcom/hangame/hsp/HSPAchievement;Lcom/hangame/hsp/HSPAchievement$HSPDownloadUnachievedIconCB;)V

    iget-object v1, p0, Lcom/hangame/hsp/HSPAchievement;->mUnachievedIconURL:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/server/HSPImageService;->downloadIcon(Ljava/lang/String;Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    return-void
.end method

.method public getAchievedIconURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPAchievement;->mAchievedIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getAchievementID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPAchievement;->mAchievementID:Ljava/lang/String;

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPAchievement;->mDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPAchievement;->mScore:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPAchievement;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUnachievedIconURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPAchievement;->mUnachievedIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public isAchieved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPAchievement;->mIsAchieved:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSPAchievement [AchievementID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPAchievement;->mAchievementID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPAchievement;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Detail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPAchievement;->mDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/HSPAchievement;->mScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", AchievedIconURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPAchievement;->mAchievedIconURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", UnachievedIconURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPAchievement;->mUnachievedIconURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", IsAchieved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hangame/hsp/HSPAchievement;->mIsAchieved:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
