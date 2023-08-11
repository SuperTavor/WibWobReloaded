.class public final Lcom/hangame/hsp/HSPGameMail;
.super Ljava/lang/Object;


# static fields
.field private static final HSP_GAMEMAIL_RECV_TEXT:Ljava/lang/String; = "recv"

.field private static final HSP_GAMEMAIL_SEND_TEXT:Ljava/lang/String; = "send"

.field private static final TAG:Ljava/lang/String; = "HSPGameMail"


# instance fields
.field private mContent:Ljava/lang/String;

.field private mContentType:I

.field private mIsReceiverAdmin:Z

.field private mIsSenderAdmin:Z

.field private mMailNo:J

.field private mReceivedDate:Ljava/util/Date;

.field private mReceiverMemberNo:J

.field private mReserved:Ljava/lang/String;

.field private mSenderMemberNo:J

.field private mSentDate:Ljava/util/Date;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hangame/hsp/HSPGameMail$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/HSPGameMail;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/hangame/hsp/HSPGameMail;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPGameMail;->mReserved:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/hangame/hsp/HSPGameMail;J)J
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/HSPGameMail;->mMailNo:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/hangame/hsp/HSPGameMail;J)J
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/HSPGameMail;->mSenderMemberNo:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/hangame/hsp/HSPGameMail;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/HSPGameMail;->mIsSenderAdmin:Z

    return p1
.end method

.method static synthetic access$402(Lcom/hangame/hsp/HSPGameMail;J)J
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/HSPGameMail;->mReceiverMemberNo:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/hangame/hsp/HSPGameMail;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/HSPGameMail;->mIsReceiverAdmin:Z

    return p1
.end method

.method static synthetic access$602(Lcom/hangame/hsp/HSPGameMail;I)I
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/HSPGameMail;->mContentType:I

    return p1
.end method

.method static synthetic access$702(Lcom/hangame/hsp/HSPGameMail;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPGameMail;->mContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/hangame/hsp/HSPGameMail;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPGameMail;->mSentDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$902(Lcom/hangame/hsp/HSPGameMail;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPGameMail;->mReceivedDate:Ljava/util/Date;

    return-object p1
.end method

.method public static loadGameMails(ILcom/hangame/hsp/HSPGameMail$HSPGameMailBoxType;Ljava/util/Date;IIZLcom/hangame/hsp/HSPGameMail$HSPLoadGameMailsForPageCB;)V
    .locals 4

    const-string v0, "HSPGameMail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadGameMails(contentType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",targetMailBox="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",baseDate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pageNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pageSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",updateReadenTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/HSPGameMail$HSPGameMailBoxType;->HSP_GAMEMAIL_BOX_INCOMING:Lcom/hangame/hsp/HSPGameMail$HSPGameMailBoxType;

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/hangame/hsp/HSPGameMail$1;

    invoke-direct {v0, p6}, Lcom/hangame/hsp/HSPGameMail$1;-><init>(Lcom/hangame/hsp/HSPGameMail$HSPLoadGameMailsForPageCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReceivedGameMails4;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReceivedGameMails4;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReceivedGameMails4;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReceivedGameMails4;->gameNo:I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReceivedGameMails4;->receiverMemberNo:J

    iput p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReceivedGameMails4;->contentType:I

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/CalendarUtil;->getDateTimeString14(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReceivedGameMails4;->basisYmdt:Ljava/lang/String;

    iput p3, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReceivedGameMails4;->pageNo:I

    iput p4, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReceivedGameMails4;->pageSize:I

    iput-boolean p5, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetReceivedGameMails4;->updateReceivedTimestamp:Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/hangame/hsp/HSPGameMail$HSPGameMailBoxType;->HSP_GAMEMAIL_BOX_OUTGOING:Lcom/hangame/hsp/HSPGameMail$HSPGameMailBoxType;

    if-ne p1, v0, :cond_2

    new-instance v0, Lcom/hangame/hsp/HSPGameMail$2;

    invoke-direct {v0, p6}, Lcom/hangame/hsp/HSPGameMail$2;-><init>(Lcom/hangame/hsp/HSPGameMail$HSPLoadGameMailsForPageCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetSentGameMails2;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetSentGameMails2;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetSentGameMails2;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetSentGameMails2;->gameNo:I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetSentGameMails2;->senderMemberNo:J

    iput p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetSentGameMails2;->contentType:I

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/CalendarUtil;->getDateTimeString14(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetSentGameMails2;->basisYmdt:Ljava/lang/String;

    iput p3, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetSentGameMails2;->pageNo:I

    iput p4, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetSentGameMails2;->pageSize:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0

    :cond_2
    if-eqz p6, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPGameMail$3;

    invoke-direct {v0, p6}, Lcom/hangame/hsp/HSPGameMail$3;-><init>(Lcom/hangame/hsp/HSPGameMail$HSPLoadGameMailsForPageCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static queryNewGameMailCount(ILcom/hangame/hsp/HSPGameMail$HSPQueryNewGameMailCountCB;)V
    .locals 4

    const-string v0, "HSPGameMail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryNewGameMailCount(contentType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPGameMail$4;

    invoke-direct {v0, p1}, Lcom/hangame/hsp/HSPGameMail$4;-><init>(Lcom/hangame/hsp/HSPGameMail$HSPQueryNewGameMailCountCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetNewGameMailCount;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetNewGameMailCount;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetNewGameMailCount;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetNewGameMailCount;->gameNo:I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetNewGameMailCount;->memberNo:J

    iput p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetNewGameMailCount;->contentType:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static sendGameMail(JILjava/lang/String;Lcom/hangame/hsp/HSPGameMail$HSPSendGameMailCB;)V
    .locals 4

    const-string v0, "HSPGameMail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendGameMail(receiverMemberNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",contentType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPGameMail$5;

    invoke-direct {v0, p4}, Lcom/hangame/hsp/HSPGameMail$5;-><init>(Lcom/hangame/hsp/HSPGameMail$HSPSendGameMailCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendGameMail;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendGameMail;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendGameMail;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendGameMail;->gameNo:I

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendGameMail;->senderMemberNo:J

    iput-wide p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendGameMail;->receiverMemberNo:J

    iput p2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendGameMail;->contentType:I

    iput-object p3, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendGameMail;->content:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPGameMail;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPGameMail;->mContentType:I

    return v0
.end method

.method public getMailNo()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/HSPGameMail;->mMailNo:J

    return-wide v0
.end method

.method public getReceivedDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPGameMail;->mReceivedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getReceiverMemberNo()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/HSPGameMail;->mReceiverMemberNo:J

    return-wide v0
.end method

.method public getReserved()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPGameMail;->mReserved:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderMemberNo()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/HSPGameMail;->mSenderMemberNo:J

    return-wide v0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPGameMail;->mSentDate:Ljava/util/Date;

    return-object v0
.end method

.method public isReceiverAdmin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPGameMail;->mIsReceiverAdmin:Z

    return v0
.end method

.method public isSenderAdmin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/HSPGameMail;->mIsSenderAdmin:Z

    return v0
.end method

.method public modifyGameMail(ILjava/lang/String;Lcom/hangame/hsp/HSPGameMail$HSPModifyGameMailCB;)V
    .locals 4

    const-string v0, "HSPGameMail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifyGameMail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPGameMail$6;

    invoke-direct {v0, p0, p3}, Lcom/hangame/hsp/HSPGameMail$6;-><init>(Lcom/hangame/hsp/HSPGameMail;Lcom/hangame/hsp/HSPGameMail$HSPModifyGameMailCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqModifyGameMail2;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqModifyGameMail2;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqModifyGameMail2;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iget-wide v2, p0, Lcom/hangame/hsp/HSPGameMail;->mMailNo:J

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqModifyGameMail2;->mailNo:J

    iget-wide v2, p0, Lcom/hangame/hsp/HSPGameMail;->mSenderMemberNo:J

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqModifyGameMail2;->senderMemberNo:J

    iget-wide v2, p0, Lcom/hangame/hsp/HSPGameMail;->mReceiverMemberNo:J

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqModifyGameMail2;->receiverMemberNo:J

    iput p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqModifyGameMail2;->contentType:I

    iput-object p2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqModifyGameMail2;->content:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public removeGameMail(Lcom/hangame/hsp/HSPGameMail$HSPGameMailBoxType;Lcom/hangame/hsp/HSPGameMail$HSPRemoveGameMailCB;)V
    .locals 6

    const-string v0, "HSPGameMail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeGameMail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/hangame/hsp/HSPGameMail$7;

    invoke-direct {v1, p0, p2}, Lcom/hangame/hsp/HSPGameMail$7;-><init>(Lcom/hangame/hsp/HSPGameMail;Lcom/hangame/hsp/HSPGameMail$HSPRemoveGameMailCB;)V

    sget-object v0, Lcom/hangame/hsp/HSPGameMail$HSPGameMailBoxType;->HSP_GAMEMAIL_BOX_OUTGOING:Lcom/hangame/hsp/HSPGameMail$HSPGameMailBoxType;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPGameMail$HSPGameMailBoxType;->getValue()B

    move-result v0

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPGameMail$HSPGameMailBoxType;->getValue()B

    move-result v2

    if-ne v0, v2, :cond_1

    const-string v0, "send"

    :goto_0
    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqDeleteGameMail2;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqDeleteGameMail2;-><init>()V

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqDeleteGameMail2;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v3}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqDeleteGameMail2;->targetOption:Ljava/lang/String;

    iget-wide v4, p0, Lcom/hangame/hsp/HSPGameMail;->mMailNo:J

    iput-wide v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqDeleteGameMail2;->mailNo:J

    iget-wide v4, p0, Lcom/hangame/hsp/HSPGameMail;->mSenderMemberNo:J

    iput-wide v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqDeleteGameMail2;->senderMemberNo:J

    iget-wide v4, p0, Lcom/hangame/hsp/HSPGameMail;->mReceiverMemberNo:J

    iput-wide v4, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqDeleteGameMail2;->receiverMemberNo:J

    invoke-static {v2, v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/hangame/hsp/HSPGameMail$HSPGameMailBoxType;->HSP_GAMEMAIL_BOX_INCOMING:Lcom/hangame/hsp/HSPGameMail$HSPGameMailBoxType;

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPGameMail$HSPGameMailBoxType;->getValue()B

    move-result v0

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPGameMail$HSPGameMailBoxType;->getValue()B

    move-result v2

    if-ne v0, v2, :cond_2

    const-string v0, "recv"

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPGameMail$8;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/HSPGameMail$8;-><init>(Lcom/hangame/hsp/HSPGameMail;Lcom/hangame/hsp/HSPGameMail$HSPRemoveGameMailCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSPGameMail [MailNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/HSPGameMail;->mMailNo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", SenderMemberNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/HSPGameMail;->mSenderMemberNo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ReceiverMemberNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/HSPGameMail;->mReceiverMemberNo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", IsSenderAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hangame/hsp/HSPGameMail;->mIsSenderAdmin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", IsReceiverAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hangame/hsp/HSPGameMail;->mIsReceiverAdmin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/HSPGameMail;->mContentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPGameMail;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SentDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPGameMail;->mSentDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ReceivedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPGameMail;->mReceivedDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Reserved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPGameMail;->mReserved:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
