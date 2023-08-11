.class final Lcom/hangame/hsp/HSPGameMate;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HSPGameMate"

.field private static final sGameMateRemovalListenerSet:Ljava/util/Set;

.field private static final sGameMateRequestAcceptionListenerSet:Ljava/util/Set;

.field private static final sGameMateRequestProposalListenerSet:Ljava/util/Set;

.field private static final sGameMateRequestRejectionListenerSet:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/hangame/hsp/HSPGameMate;->sGameMateRequestProposalListenerSet:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/hangame/hsp/HSPGameMate;->sGameMateRequestAcceptionListenerSet:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/hangame/hsp/HSPGameMate;->sGameMateRequestRejectionListenerSet:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/hangame/hsp/HSPGameMate;->sGameMateRemovalListenerSet:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accept(JLcom/hangame/hsp/HSPGameMate$HSPAcceptGameMateCB;)V
    .locals 4

    const-string v0, "HSPGameMate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accept(memberNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPGameMate$2;

    invoke-direct {v0, p2, p0, p1}, Lcom/hangame/hsp/HSPGameMate$2;-><init>(Lcom/hangame/hsp/HSPGameMate$HSPAcceptGameMateCB;J)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqAcceptGameMate;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqAcceptGameMate;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqAcceptGameMate;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqAcceptGameMate;->memberNo:J

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqAcceptGameMate;->gameNo:I

    iput-wide p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqAcceptGameMate;->opponent:J

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPGameMate;->sGameMateRequestProposalListenerSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPGameMate;->sGameMateRequestAcceptionListenerSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPGameMate;->sGameMateRequestRejectionListenerSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPGameMate;->sGameMateRemovalListenerSet:Ljava/util/Set;

    return-object v0
.end method

.method public static addGameMateRemovalListener(Lcom/hangame/hsp/HSPGameMate$HSPGameMateRemovalListener;)V
    .locals 2

    const-string v0, "HSPGameMate"

    const-string v1, "addGameMateRemovalListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string v0, "HSPGameMate"

    const-string v1, "listner is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPGameMate;->sGameMateRemovalListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPGameMate;->sGameMateRemovalListenerSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addGameMateRequestAcceptionListener(Lcom/hangame/hsp/HSPGameMate$HSPGameMateRequestAcceptionListener;)V
    .locals 2

    const-string v0, "HSPGameMate"

    const-string v1, "addGameMateRequestAcceptionListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string v0, "HSPGameMate"

    const-string v1, "listner is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPGameMate;->sGameMateRequestAcceptionListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPGameMate;->sGameMateRequestAcceptionListenerSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addGameMateRequestProposalListener(Lcom/hangame/hsp/HSPGameMate$HSPGameMateRequestProposalListener;)V
    .locals 2

    const-string v0, "HSPGameMate"

    const-string v1, "addGameMateRequestProposalListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string v0, "HSPGameMate"

    const-string v1, "listner is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPGameMate;->sGameMateRequestProposalListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPGameMate;->sGameMateRequestProposalListenerSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addGameMateRequestRejectionListener(Lcom/hangame/hsp/HSPGameMate$HSPGameMateRequestRejectionListener;)V
    .locals 2

    const-string v0, "HSPGameMate"

    const-string v1, "addGameMateRequestRejectionListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string v0, "HSPGameMate"

    const-string v1, "listner is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPGameMate;->sGameMateRequestRejectionListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPGameMate;->sGameMateRequestRejectionListenerSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static propose(JLcom/hangame/hsp/HSPGameMate$HSPProposeGameMateCB;)V
    .locals 4

    const-string v0, "HSPGameMate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "propose(memberNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPGameMate$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/hangame/hsp/HSPGameMate$1;-><init>(Lcom/hangame/hsp/HSPGameMate$HSPProposeGameMateCB;J)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqProposeGameMate;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqProposeGameMate;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqProposeGameMate;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqProposeGameMate;->memberNo:J

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqProposeGameMate;->gameNo:I

    iput-wide p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqProposeGameMate;->opponent:J

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static queryGameMateCount(Lcom/hangame/hsp/HSPGameMate$HSPQueryGameMateCountCB;)V
    .locals 4

    const-string v0, "HSPGameMate"

    const-string v1, "queryGameMateCount()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPGameMate$5;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPGameMate$5;-><init>(Lcom/hangame/hsp/HSPGameMate$HSPQueryGameMateCountCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameMateCount;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameMateCount;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameMateCount;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameMateCount;->memberNo:J

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameMateCount;->gameNo:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static queryRelation(JLcom/hangame/hsp/HSPGameMate$HSPQueryRelationCB;)V
    .locals 4

    new-instance v0, Lcom/hangame/hsp/HSPGameMate$6;

    invoke-direct {v0, p2}, Lcom/hangame/hsp/HSPGameMate$6;-><init>(Lcom/hangame/hsp/HSPGameMate$HSPQueryRelationCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameRelation;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameRelation;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameRelation;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameRelation;->memberNo:J

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameRelation;->gameNo:I

    iput-wide p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameRelation;->opponent:J

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method static registerGameMateHandlers()V
    .locals 2

    const v0, 0xbde02ca

    new-instance v1, Lcom/hangame/hsp/HSPGameMate$7;

    invoke-direct {v1}, Lcom/hangame/hsp/HSPGameMate$7;-><init>()V

    invoke-static {v0, v1}, Lcom/hangame/hsp/mashup/HSPMashupService;->putResponseHooker(ILcom/hangame/hsp/mashup/HSPMashupService$ResponseHooker;)V

    return-void
.end method

.method public static reject(JLcom/hangame/hsp/HSPGameMate$HSPRejectGameMateCB;)V
    .locals 4

    const-string v0, "HSPGameMate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reject(memberNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPGameMate$3;

    invoke-direct {v0, p2, p0, p1}, Lcom/hangame/hsp/HSPGameMate$3;-><init>(Lcom/hangame/hsp/HSPGameMate$HSPRejectGameMateCB;J)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqRejectGameMate;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqRejectGameMate;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqRejectGameMate;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqRejectGameMate;->memberNo:J

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqRejectGameMate;->gameNo:I

    iput-wide p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqRejectGameMate;->opponent:J

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static remove(JLcom/hangame/hsp/HSPGameMate$HSPRemoveGameMateCB;)V
    .locals 4

    const-string v0, "HSPGameMate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove(memberNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPGameMate$4;

    invoke-direct {v0, p2, p0, p1}, Lcom/hangame/hsp/HSPGameMate$4;-><init>(Lcom/hangame/hsp/HSPGameMate$HSPRemoveGameMateCB;J)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqDismissGameMate;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqDismissGameMate;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqDismissGameMate;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqDismissGameMate;->memberNo:J

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqDismissGameMate;->gameNo:I

    iput-wide p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqDismissGameMate;->opponent:J

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static removeGameMateRemovalListener(Lcom/hangame/hsp/HSPGameMate$HSPGameMateRemovalListener;)V
    .locals 2

    const-string v0, "HSPGameMate"

    const-string v1, "addGameMateRemovalListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string v0, "HSPGameMate"

    const-string v1, "listner is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPGameMate;->sGameMateRemovalListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPGameMate;->sGameMateRemovalListenerSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeGameMateRequestAcceptionListener(Lcom/hangame/hsp/HSPGameMate$HSPGameMateRequestAcceptionListener;)V
    .locals 2

    const-string v0, "HSPGameMate"

    const-string v1, "removeGameMateRequestAcceptionListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string v0, "HSPGameMate"

    const-string v1, "listner is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPGameMate;->sGameMateRequestAcceptionListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPGameMate;->sGameMateRequestAcceptionListenerSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeGameMateRequestProposalListener(Lcom/hangame/hsp/HSPGameMate$HSPGameMateRequestProposalListener;)V
    .locals 2

    const-string v0, "HSPGameMate"

    const-string v1, "removeGameMateRequestProposalListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string v0, "HSPGameMate"

    const-string v1, "listner is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPGameMate;->sGameMateRequestProposalListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPGameMate;->sGameMateRequestProposalListenerSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeGameMateRequestRejectionListener(Lcom/hangame/hsp/HSPGameMate$HSPGameMateRequestRejectionListener;)V
    .locals 2

    const-string v0, "HSPGameMate"

    const-string v1, "removeGameMateRequestRejectionListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string v0, "HSPGameMate"

    const-string v1, "listner is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPGameMate;->sGameMateRequestRejectionListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPGameMate;->sGameMateRequestRejectionListenerSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
