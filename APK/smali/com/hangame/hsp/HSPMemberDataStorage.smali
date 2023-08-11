.class public final Lcom/hangame/hsp/HSPMemberDataStorage;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameBucketList;)Ljava/util/HashMap;
    .locals 1

    invoke-static {p0}, Lcom/hangame/hsp/HSPMemberDataStorage;->createHashMapFromGamebucketInfo(Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameBucketList;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private static createGameBucketKeySet(Ljava/util/List;)Ljava/util/Vector;
    .locals 6

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/hangame/hsp/xdr/hsp13/request/GameBucketKey;

    invoke-direct {v3}, Lcom/hangame/hsp/xdr/hsp13/request/GameBucketKey;-><init>()V

    iput-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/GameBucketKey;->bucketName:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/hangame/hsp/xdr/hsp13/request/GameBucketKey;->memberNo:J

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static createGameBucketKeySet(Ljava/util/List;J)Ljava/util/Vector;
    .locals 5

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/hangame/hsp/xdr/hsp13/request/GameBucketKey;

    invoke-direct {v3}, Lcom/hangame/hsp/xdr/hsp13/request/GameBucketKey;-><init>()V

    iput-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/GameBucketKey;->bucketName:Ljava/lang/String;

    iput-wide p1, v3, Lcom/hangame/hsp/xdr/hsp13/request/GameBucketKey;->memberNo:J

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static createGameBucketKeyValue(Ljava/util/Map;Ljava/util/Vector;)V
    .locals 4

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Lcom/hangame/hsp/xdr/hsp13/request/GameBucketKeyValue;

    invoke-direct {v3}, Lcom/hangame/hsp/xdr/hsp13/request/GameBucketKeyValue;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/hangame/hsp/xdr/hsp13/request/GameBucketKeyValue;->bucketName:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/GameBucketKeyValue;->value:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/hangame/hsp/xdr/hsp13/request/GameBucketKeyValue;->memberNo:J

    invoke-virtual {p1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static createHashMapFromGamebucketInfo(Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameBucketList;)Ljava/util/HashMap;
    .locals 4

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/AnsGetGameBucketList;->gameBucketList:Ljava/util/Vector;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/xdr/hsp13/response/GameBucketInfo;

    iget-object v3, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameBucketInfo;->bucketName:Ljava/lang/String;

    iget-object v0, v0, Lcom/hangame/hsp/xdr/hsp13/response/GameBucketInfo;->value:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static loadMemberData(Ljava/util/List;Lcom/hangame/hsp/HSPMemberDataStorage$HSPLoadMemberDataCB;)V
    .locals 4

    invoke-static {p0}, Lcom/hangame/hsp/HSPMemberDataStorage;->createGameBucketKeySet(Ljava/util/List;)Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/HSPMemberDataStorage$2;

    invoke-direct {v1, p1}, Lcom/hangame/hsp/HSPMemberDataStorage$2;-><init>(Lcom/hangame/hsp/HSPMemberDataStorage$HSPLoadMemberDataCB;)V

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameBucketList;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameBucketList;-><init>()V

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameBucketList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v3}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v3

    iput v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameBucketList;->gameNo:I

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameBucketList;->gameBucketKeyList:Ljava/util/Vector;

    invoke-static {v2, v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static loadMemberDataFromMemberNo(JLjava/util/List;Lcom/hangame/hsp/HSPMemberDataStorage$HSPLoadMemberDataCB;)V
    .locals 4

    invoke-static {p2, p0, p1}, Lcom/hangame/hsp/HSPMemberDataStorage;->createGameBucketKeySet(Ljava/util/List;J)Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/HSPMemberDataStorage$3;

    invoke-direct {v1, p3}, Lcom/hangame/hsp/HSPMemberDataStorage$3;-><init>(Lcom/hangame/hsp/HSPMemberDataStorage$HSPLoadMemberDataCB;)V

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameBucketList;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameBucketList;-><init>()V

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameBucketList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v3}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v3

    iput v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameBucketList;->gameNo:I

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameBucketList;->gameBucketKeyList:Ljava/util/Vector;

    invoke-static {v2, v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static removeMemberData(Ljava/util/List;Lcom/hangame/hsp/HSPMemberDataStorage$HSPRemoveMemberDataCB;)V
    .locals 4

    invoke-static {p0}, Lcom/hangame/hsp/HSPMemberDataStorage;->createGameBucketKeySet(Ljava/util/List;)Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lcom/hangame/hsp/HSPMemberDataStorage$4;

    invoke-direct {v1, p1}, Lcom/hangame/hsp/HSPMemberDataStorage$4;-><init>(Lcom/hangame/hsp/HSPMemberDataStorage$HSPRemoveMemberDataCB;)V

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqRemoveGameBucketList;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqRemoveGameBucketList;-><init>()V

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqRemoveGameBucketList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v3}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v3

    iput v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqRemoveGameBucketList;->gameNo:I

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqRemoveGameBucketList;->gameBucketKeyList:Ljava/util/Vector;

    invoke-static {v2, v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static saveMemberData(Ljava/util/Map;Lcom/hangame/hsp/HSPMemberDataStorage$HSPSaveMemberDataCB;)V
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {p0, v0}, Lcom/hangame/hsp/HSPMemberDataStorage;->createGameBucketKeyValue(Ljava/util/Map;Ljava/util/Vector;)V

    new-instance v1, Lcom/hangame/hsp/HSPMemberDataStorage$1;

    invoke-direct {v1, p1}, Lcom/hangame/hsp/HSPMemberDataStorage$1;-><init>(Lcom/hangame/hsp/HSPMemberDataStorage$HSPSaveMemberDataCB;)V

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGameBucketList;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGameBucketList;-><init>()V

    iget-object v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGameBucketList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v3}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v3

    iput v3, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGameBucketList;->gameNo:I

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetGameBucketList;->gameBucketKeyValueList:Ljava/util/Vector;

    invoke-static {v2, v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method
