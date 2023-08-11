.class public final Lcom/hangame/hsp/HSPSocial;
.super Ljava/lang/Object;


# static fields
.field private static final ACESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final API_FACEBOOK_FRIENDS_URL:Ljava/lang/String; = "https://graph.facebook.com/me/friends"

.field private static final API_FACEBOOK_JSON_ROOT:Ljava/lang/String; = "data"

.field private static final API_FACEBOOK_PARAM_FIELDS:Ljava/lang/String; = "fields"

.field private static final API_FACEBOOK_PARAM_LIMIT:Ljava/lang/String; = "limit"

.field private static final API_FACEBOOK_PARAM_LOCALE:Ljava/lang/String; = "locale"

.field private static final API_FACEBOOK_PARAM_OFFSET:Ljava/lang/String; = "offset"

.field private static final API_GOOGLE_JSON_ROOT:Ljava/lang/String; = "items"

.field private static final API_GOOGLE_MAXRESULTS:I = 0x64

.field private static final API_GOOGLE_PEOPLE_URL:Ljava/lang/String; = "https://www.googleapis.com/plus/v1/people/me/people/visible"

.field private static final TAG:Ljava/lang/String; = "HSPSocial"

.field private static isLastFriendData:Z

.field private static sAddBlockingListenerSet:Ljava/util/Set;

.field private static sAddFollowingListenerSet:Ljava/util/Set;

.field private static sRemoveBlockingListenerSet:Ljava/util/Set;

.field private static sRemoveFollowingListenerSet:Ljava/util/Set;

.field private static socialFriendProfileList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/hangame/hsp/HSPSocial;->sAddFollowingListenerSet:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/hangame/hsp/HSPSocial;->sRemoveFollowingListenerSet:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/hangame/hsp/HSPSocial;->sAddBlockingListenerSet:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/hangame/hsp/HSPSocial;->sRemoveBlockingListenerSet:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hangame/hsp/HSPSocial;->socialFriendProfileList:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/hangame/hsp/HSPSocial;->isLastFriendData:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPSocial;->sAddFollowingListenerSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(ILcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hangame/hsp/HSPSocial;->sendBipForChangingRelation(ILcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPSocial;->sAddBlockingListenerSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPSocial;->sRemoveFollowingListenerSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPSocial;->sRemoveBlockingListenerSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPSocial;->socialFriendProfileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/hangame/hsp/HSPSocial;->isLastFriendData:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/hangame/hsp/HSPSocial;->isLastFriendData:Z

    return p0
.end method

.method static synthetic access$700(Ljava/lang/String;Lcom/hangame/hsp/HSPSocial$HSPLoadPartFriendsCB;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hangame/hsp/HSPSocial;->getGoogleFriendsWithPageToken(Ljava/lang/String;Lcom/hangame/hsp/HSPSocial$HSPLoadPartFriendsCB;)V

    return-void
.end method

.method public static addBlockingAddListener(Lcom/hangame/hsp/HSPSocial$HSPAddBlockingListener;)V
    .locals 2

    const-string v0, "HSPSocial"

    const-string v1, "addBlockingAddListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string v0, "HSPSocial"

    const-string v1, "listner is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPSocial;->sAddBlockingListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPSocial;->sAddBlockingListenerSet:Ljava/util/Set;

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

.method public static addBlockingRemoveListener(Lcom/hangame/hsp/HSPSocial$HSPRemoveBlockingListener;)V
    .locals 2

    const-string v0, "HSPSocial"

    const-string v1, "addBlockingRemoveListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string v0, "HSPSocial"

    const-string v1, "listner is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPSocial;->sRemoveBlockingListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPSocial;->sRemoveBlockingListenerSet:Ljava/util/Set;

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

.method public static addFollowingAddListener(Lcom/hangame/hsp/HSPSocial$HSPAddFollowingListener;)V
    .locals 2

    const-string v0, "HSPSocial"

    const-string v1, "addFollowingAddListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string v0, "HSPSocial"

    const-string v1, "listner is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPSocial;->sAddFollowingListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPSocial;->sAddFollowingListenerSet:Ljava/util/Set;

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

.method public static addFollowingRemoveListener(Lcom/hangame/hsp/HSPSocial$HSPRemoveFollowingListener;)V
    .locals 2

    const-string v0, "HSPSocial"

    const-string v1, "addFollowingRemoveListener"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string v0, "HSPSocial"

    const-string v1, "listner is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPSocial;->sRemoveFollowingListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPSocial;->sRemoveFollowingListenerSet:Ljava/util/Set;

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

.method public static blockMembers(Ljava/util/List;Lcom/hangame/hsp/HSPSocial$HSPBlockMembersCB;)V
    .locals 4

    const-string v0, "HSPSocial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockMembers(memberNos="

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

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->editSocial()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPSocial$3;

    invoke-direct {v0, p1}, Lcom/hangame/hsp/HSPSocial$3;-><init>(Lcom/hangame/hsp/HSPSocial$HSPBlockMembersCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPSocial$4;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPSocial$4;-><init>(Ljava/util/List;Lcom/hangame/hsp/HSPSocial$HSPBlockMembersCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqAddInRelationList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqAddInRelationList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqAddInRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqAddInRelationList;->memberNo:J

    sget-object v2, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->getValue()B

    move-result v2

    iput-byte v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqAddInRelationList;->relationType:B

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqAddInRelationList;->memberNoList:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public static followMembers(Ljava/util/List;Lcom/hangame/hsp/HSPSocial$HSPFollowMembersCB;)V
    .locals 4

    const-string v0, "HSPSocial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "followMembers(memberNos="

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

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->editSocial()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPSocial$1;

    invoke-direct {v0, p1}, Lcom/hangame/hsp/HSPSocial$1;-><init>(Lcom/hangame/hsp/HSPSocial$HSPFollowMembersCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPSocial$2;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPSocial$2;-><init>(Ljava/util/List;Lcom/hangame/hsp/HSPSocial$HSPFollowMembersCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqAddInRelationList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqAddInRelationList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqAddInRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqAddInRelationList;->memberNo:J

    sget-object v2, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_FOLLOW:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->getValue()B

    move-result v2

    iput-byte v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqAddInRelationList;->relationType:B

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqAddInRelationList;->memberNoList:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method static followMembersInAddressBook(Lcom/hangame/hsp/HSPSocial$HSPFollowMembersInAddressBookCB;)V
    .locals 2

    const-string v0, "HSPSocial"

    const-string v1, "followMembersInAddressBook()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->readContacts()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPSocial$21;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPSocial$21;-><init>(Lcom/hangame/hsp/HSPSocial$HSPFollowMembersInAddressBookCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPSocial$22;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPSocial$22;-><init>(Lcom/hangame/hsp/HSPSocial$HSPFollowMembersInAddressBookCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/util/contact/ContactProvider;->loadAllContacts(Lcom/hangame/hsp/util/contact/ContactProvider$LoadContactsCB;)V

    goto :goto_0
.end method

.method private static declared-synchronized getFacebookFriends(IILcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;)V
    .locals 5

    const-class v1, Lcom/hangame/hsp/HSPSocial;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPSocial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFacebookFriends - index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "access_token"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "fields"

    const-string v3, "name,picture"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "locale"

    sget-object v3, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v2, "offset"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "limit"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "https://graph.facebook.com/me/friends"

    invoke-static {v2, v0}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "HSPSocial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFriendsUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/hangame/hsp/HSPSocial$34;

    invoke-direct {v0, p2}, Lcom/hangame/hsp/HSPSocial$34;-><init>(Lcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;)V

    invoke-static {v2, v0}, Lcom/hangame/hsp/HSPSocial;->querySocialHttpAPI(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/core/HSPHttpResHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/hangame/hsp/util/LocaleUtil;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "locale"

    sget-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    const-string v2, "locale"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static declared-synchronized getGoogleFriends(IILcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;)V
    .locals 4

    const-class v1, Lcom/hangame/hsp/HSPSocial;

    monitor-enter v1

    :try_start_0
    const-string v0, "HSPSocial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGoogleFriends - index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/HSPSocial;->socialFriendProfileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/hangame/hsp/HSPSocial$35;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/HSPSocial$35;-><init>(IILcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;)V

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/hangame/hsp/HSPSocial;->getGoogleFriendsWithPageToken(Ljava/lang/String;Lcom/hangame/hsp/HSPSocial$HSPLoadPartFriendsCB;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getGoogleFriendsWithPageToken(Ljava/lang/String;Lcom/hangame/hsp/HSPSocial$HSPLoadPartFriendsCB;)V
    .locals 5

    const-class v1, Lcom/hangame/hsp/HSPSocial;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "fields"

    const-string v3, "items,nextPageToken,totalItems"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "maxResults"

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_0

    const-string v2, "pageToken"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "access_token"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getOAuthAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "https://www.googleapis.com/plus/v1/people/me/people/visible"

    invoke-static {v2, v0}, Lcom/hangame/hsp/util/StringUtil;->makeRequestURLString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "HSPSocial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next page token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HSPSocial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFriendsUrl : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/hangame/hsp/HSPSocial$36;

    invoke-direct {v2, p1}, Lcom/hangame/hsp/HSPSocial$36;-><init>(Lcom/hangame/hsp/HSPSocial$HSPLoadPartFriendsCB;)V

    invoke-static {v0, v2}, Lcom/hangame/hsp/HSPSocial;->querySocialHttpAPI(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/core/HSPHttpResHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static loadFriends(Lcom/hangame/hsp/HSPSocial$GlobalIdp;IILcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;)V
    .locals 6

    const-string v0, "HSPSocial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFriends - index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberIDType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HSPSocial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loginOAuthProvider : ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v1, ""

    if-ne v0, v1, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    new-instance v0, Lcom/hangame/hsp/HSPSocial$33;

    invoke-direct {v0, p3}, Lcom/hangame/hsp/HSPSocial$33;-><init>(Lcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->loginType()Lcom/hangame/hsp/HSPCore$HSPLoginType;

    move-result-object v0

    sget-object v1, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_FACEBOOK:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPCore$HSPLoginType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/hangame/hsp/HSPSocial$GlobalIdp;->FRIEND_IDP_FACEBOOK:Lcom/hangame/hsp/HSPSocial$GlobalIdp;

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/HSPSocial$GlobalIdp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1, p2, p3}, Lcom/hangame/hsp/HSPSocial;->getFacebookFriends(IILcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/hangame/hsp/HSPCore$HSPLoginType;->HSP_LOGIN_TYPE_GOOGLE:Lcom/hangame/hsp/HSPCore$HSPLoginType;

    invoke-virtual {v0, v1}, Lcom/hangame/hsp/HSPCore$HSPLoginType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/hangame/hsp/HSPSocial$GlobalIdp;->FRIEND_IDP_GOOGLEPLUS:Lcom/hangame/hsp/HSPSocial$GlobalIdp;

    invoke-virtual {p0, v1}, Lcom/hangame/hsp/HSPSocial$GlobalIdp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1, p2, p3}, Lcom/hangame/hsp/HSPSocial;->getGoogleFriends(IILcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;)V

    goto :goto_0

    :cond_4
    const-string v1, "HSPSocial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This api is not supported for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const-string v2, "SNS"

    const v3, 0xf000

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This api is not supported for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;->onCompletion(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method

.method public static queryBlockingMemberCount(Lcom/hangame/hsp/HSPSocial$HSPQueryBlockingMemberCountCB;)V
    .locals 4

    const-string v0, "HSPSocial"

    const-string v1, "queryBlockingMemberCount()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPSocialCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPSocialCache;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v0, v2, v3, v1}, Lcom/hangame/hsp/HSPSocialCache;->selectList(JLcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "HSPSocial"

    const-string v2, "All DB cache!!"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "HSPSERVICE"

    invoke-static {v1}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/hangame/hsp/HSPSocial$HSPQueryBlockingMemberCountCB;->onMemberCountReceive(ILcom/hangame/hsp/HSPResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPSocial$10;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPSocial$10;-><init>(Lcom/hangame/hsp/HSPSocial$HSPQueryBlockingMemberCountCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationCount;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationCount;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationCount;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationCount;->memberNo:J

    sget-object v2, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->getValue()B

    move-result v2

    iput-byte v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationCount;->relationType:B

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public static queryBlockingMembers(IILcom/hangame/hsp/HSPSocial$HSPQueryBlockingMembersCB;)V
    .locals 6

    const-string v0, "HSPSocial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryBlockingMembers(index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPCacheManager;->useCacheData(J)Z

    move-result v1

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPSocialCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPSocialCache;

    move-result-object v2

    new-instance v0, Lcom/hangame/hsp/HSPSocial$13;

    move v3, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hangame/hsp/HSPSocial$13;-><init>(ZLcom/hangame/hsp/HSPSocialCache;IILcom/hangame/hsp/HSPSocial$HSPQueryBlockingMembersCB;)V

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v4

    sget-object v3, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v2, v4, v5, v3}, Lcom/hangame/hsp/HSPSocialCache;->selectList(JLcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    :cond_0
    invoke-interface {v2, p0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_1

    new-instance v0, Lcom/hangame/hsp/HSPSocial$14;

    invoke-direct {v0, p2, v1}, Lcom/hangame/hsp/HSPSocial$14;-><init>(Lcom/hangame/hsp/HSPSocial$HSPQueryBlockingMembersCB;Ljava/util/List;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;->memberNo:J

    sget-object v2, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->getValue()B

    move-result v2

    iput-byte v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;->relationType:B

    const/4 v2, 0x0

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;->offset:I

    const/16 v2, 0x1f4

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;->count:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;->memberNo:J

    sget-object v2, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->getValue()B

    move-result v2

    iput-byte v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;->relationType:B

    iput p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;->offset:I

    iput p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;->count:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public static queryFollowers(IILcom/hangame/hsp/HSPSocial$HSPQueryFollowersCB;)V
    .locals 4

    const-string v0, "HSPSocial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryFollowers(index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPSocial$15;

    invoke-direct {v0, p2}, Lcom/hangame/hsp/HSPSocial$15;-><init>(Lcom/hangame/hsp/HSPSocial$HSPQueryFollowersCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetFollowerList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetFollowerList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetFollowerList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetFollowerList;->memberNo:J

    iput p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetFollowerList;->offset:I

    iput p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetFollowerList;->count:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static queryFollowingMemberCount(Lcom/hangame/hsp/HSPSocial$HSPQueryFollowingMemberCountCB;)V
    .locals 4

    const-string v0, "HSPSocial"

    const-string v1, "queryFollowingMemberCount()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPSocialCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPSocialCache;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_FOLLOW:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v0, v2, v3, v1}, Lcom/hangame/hsp/HSPSocialCache;->selectList(JLcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "HSPSocial"

    const-string v2, "All DB cache!!"

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "HSPSERVICE"

    invoke-static {v1}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/hangame/hsp/HSPSocial$HSPQueryFollowingMemberCountCB;->onMemberCountReceive(ILcom/hangame/hsp/HSPResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPSocial$9;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPSocial$9;-><init>(Lcom/hangame/hsp/HSPSocial$HSPQueryFollowingMemberCountCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationCount;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationCount;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationCount;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationCount;->memberNo:J

    sget-object v2, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_FOLLOW:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->getValue()B

    move-result v2

    iput-byte v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationCount;->relationType:B

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public static queryFollowingMemberIDs(Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;IILcom/hangame/hsp/HSPSocial$HSPQueryFollowingMemberIDsCB;)V
    .locals 4

    const-string v0, "HSPSocial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryFollowingMemberIDs(idpCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPSocial$20;

    invoke-direct {v0, p3}, Lcom/hangame/hsp/HSPSocial$20;-><init>(Lcom/hangame/hsp/HSPSocial$HSPQueryFollowingMemberIDsCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetIdpIdOnWhiteList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetIdpIdOnWhiteList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetIdpIdOnWhiteList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetIdpIdOnWhiteList;->memberNo:J

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPDetailedProfile$HSPIDPCode;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetIdpIdOnWhiteList;->idpCode:Ljava/lang/String;

    iput p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetIdpIdOnWhiteList;->offset:I

    iput p2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetIdpIdOnWhiteList;->count:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static queryFollowingMembers(IILcom/hangame/hsp/HSPSocial$HSPQueryFollowingMembersCB;)V
    .locals 6

    const-string v0, "HSPSocial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryFollowingMembers(index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPCacheManager;->useCacheData(J)Z

    move-result v1

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/HSPSocialCache;->getInstance(Landroid/content/Context;)Lcom/hangame/hsp/HSPSocialCache;

    move-result-object v2

    new-instance v0, Lcom/hangame/hsp/HSPSocial$11;

    move v3, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hangame/hsp/HSPSocial$11;-><init>(ZLcom/hangame/hsp/HSPSocialCache;IILcom/hangame/hsp/HSPSocial$HSPQueryFollowingMembersCB;)V

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v4

    sget-object v3, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_FOLLOW:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v2, v4, v5, v3}, Lcom/hangame/hsp/HSPSocialCache;->selectList(JLcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    :cond_0
    invoke-interface {v2, p0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_1

    new-instance v0, Lcom/hangame/hsp/HSPSocial$12;

    invoke-direct {v0, p2, v1}, Lcom/hangame/hsp/HSPSocial$12;-><init>(Lcom/hangame/hsp/HSPSocial$HSPQueryFollowingMembersCB;Ljava/util/List;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;->memberNo:J

    sget-object v2, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_FOLLOW:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->getValue()B

    move-result v2

    iput-byte v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;->relationType:B

    const/4 v2, 0x0

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;->offset:I

    const/16 v2, 0x1f4

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;->count:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;->memberNo:J

    sget-object v2, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_FOLLOW:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->getValue()B

    move-result v2

    iput-byte v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;->relationType:B

    iput p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;->offset:I

    iput p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetRelationList;->count:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public static queryFollowingMembersPlayedGame(IIILcom/hangame/hsp/HSPSocial$HSPQueryFollowingMembersPlayedGameCB;)V
    .locals 4

    const-string v0, "HSPSocial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryFollowingMembersPlayedGame(gameNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPSocial$19;

    invoke-direct {v0, p3}, Lcom/hangame/hsp/HSPSocial$19;-><init>(Lcom/hangame/hsp/HSPSocial$HSPQueryFollowingMembersPlayedGameCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetWhiteListInGame;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetWhiteListInGame;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetWhiteListInGame;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetWhiteListInGame;->memberNo:J

    iput p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetWhiteListInGame;->gameNo:I

    iput p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetWhiteListInGame;->offset:I

    iput p2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetWhiteListInGame;->count:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static queryHSPMemberNos(Ljava/util/List;Lcom/hangame/hsp/HSPSocial$HSPQueryHSPMemeberNosCB;)V
    .locals 6

    new-instance v1, Lcom/hangame/hsp/HSPSocial$29;

    invoke-direct {v1, p1}, Lcom/hangame/hsp/HSPSocial$29;-><init>(Lcom/hangame/hsp/HSPSocial$HSPQueryHSPMemeberNosCB;)V

    new-instance v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;

    invoke-direct {v2}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;-><init>()V

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->getServiceDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->serviceDomain:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->getServiceDomain()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LINEGAME"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "line"

    :cond_0
    :goto_0
    iput-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthProvider:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v0

    iput v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->gameNo:I

    iget-object v0, v2, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberNoListByOauthIdList;->oauthIdList:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {v2, v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->getServiceDomain()Ljava/lang/String;

    move-result-object v0

    const-string v3, "KAKAOGAME"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "kakao"

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->getServiceDomain()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GREEGAME"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "gree"

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isGlobalGameCN()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "facebook"

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPServiceDomain;->isIdpLogin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "facebook"

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain;->isToastGame()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/hangame/hsp/auth/login/HSPSilosService;->getMemberIDType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "HSPSocial"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oauthProvider : ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    const-string v3, ""

    if-ne v0, v3, :cond_0

    :cond_6
    if-eqz p1, :cond_1

    new-instance v0, Lcom/hangame/hsp/HSPSocial$30;

    invoke-direct {v0, p1}, Lcom/hangame/hsp/HSPSocial$30;-><init>(Lcom/hangame/hsp/HSPSocial$HSPQueryHSPMemeberNosCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_7
    if-eqz p1, :cond_1

    new-instance v0, Lcom/hangame/hsp/HSPSocial$31;

    invoke-direct {v0, p1}, Lcom/hangame/hsp/HSPSocial$31;-><init>(Lcom/hangame/hsp/HSPSocial$HSPQueryHSPMemeberNosCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public static queryIdpIds(Ljava/util/List;Lcom/hangame/hsp/HSPSocial$HSPQueryIdpIdsCB;)V
    .locals 3

    new-instance v0, Lcom/hangame/hsp/HSPSocial$32;

    invoke-direct {v0, p1}, Lcom/hangame/hsp/HSPSocial$32;-><init>(Lcom/hangame/hsp/HSPSocial$HSPQueryIdpIdsCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetOAuthIdListByMemberNoList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetOAuthIdListByMemberNoList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetOAuthIdListByMemberNoList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetOAuthIdListByMemberNoList;->memberNoList:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static queryMembersPlayedGame(IIILcom/hangame/hsp/HSPSocial$HSPQueryMembersPlayedGameCB;)V
    .locals 4

    const-string v0, "HSPSocial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryMembersPlayedGame(gameNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPSocial$18;

    invoke-direct {v0, p3}, Lcom/hangame/hsp/HSPSocial$18;-><init>(Lcom/hangame/hsp/HSPSocial$HSPQueryMembersPlayedGameCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameUserList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameUserList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameUserList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameUserList;->requesterMemberNo:J

    iput p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameUserList;->gameNo:I

    iput p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameUserList;->offset:I

    iput p2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetGameUserList;->count:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static queryMembersRecommended(IIILcom/hangame/hsp/HSPSocial$HSPQueryMembersRecommendedCB;)V
    .locals 4

    const-string v0, "HSPSocial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryMembersRecommended(gameNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPSocial$16;

    invoke-direct {v0, p3}, Lcom/hangame/hsp/HSPSocial$16;-><init>(Lcom/hangame/hsp/HSPSocial$HSPQueryMembersRecommendedCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetSuggestedWhiteList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetSuggestedWhiteList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetSuggestedWhiteList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetSuggestedWhiteList;->memberNo:J

    iput p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetSuggestedWhiteList;->gameNo:I

    iput p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetSuggestedWhiteList;->offset:I

    iput p2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetSuggestedWhiteList;->count:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static queryMembersWithNickname(Ljava/lang/String;IILcom/hangame/hsp/HSPSocial$HSPQueryMembersWithNicknameCB;)V
    .locals 4

    const-string v0, "HSPSocial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryMembersWithNickname(nickname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPSocial$17;

    invoke-direct {v0, p3}, Lcom/hangame/hsp/HSPSocial$17;-><init>(Lcom/hangame/hsp/HSPSocial$HSPQueryMembersWithNicknameCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSearchNickname;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSearchNickname;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSearchNickname;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSearchNickname;->memberNo:J

    iput-object p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSearchNickname;->searchNickname:Ljava/lang/String;

    iput p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSearchNickname;->offset:I

    iput p2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSearchNickname;->count:I

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method public static queryMembersWithPhoneNo(Ljava/util/List;Ljava/util/List;Lcom/hangame/hsp/HSPSocial$HSPQueryMembersWithPhoneNoCB;)V
    .locals 3

    const-string v0, "HSPSocial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryMembersWithPhoneNo(phoneNos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",memberNos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/hangame/hsp/HSPSocial$23;

    invoke-direct {v0, p0, p2}, Lcom/hangame/hsp/HSPSocial$23;-><init>(Ljava/util/List;Lcom/hangame/hsp/HSPSocial$HSPQueryMembersWithPhoneNoCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberPhoneNoList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberPhoneNoList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberPhoneNoList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqGetMemberPhoneNoList;->memberNoList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void
.end method

.method private static declared-synchronized querySocialHttpAPI(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/core/HSPHttpResHandler;)V
    .locals 2

    const-class v1, Lcom/hangame/hsp/HSPSocial;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/hangame/hsp/HSPSocial$37;

    invoke-direct {v0, p0, p1}, Lcom/hangame/hsp/HSPSocial$37;-><init>(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static removeBlockingAddListener(Lcom/hangame/hsp/HSPSocial$HSPAddBlockingListener;)V
    .locals 2

    const-string v0, "HSPSocial"

    const-string v1, "removeBlockingAddListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string v0, "HSPSocial"

    const-string v1, "listner is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPSocial;->sAddBlockingListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPSocial;->sAddBlockingListenerSet:Ljava/util/Set;

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

.method public static removeBlockingRemoveListener(Lcom/hangame/hsp/HSPSocial$HSPRemoveBlockingListener;)V
    .locals 2

    const-string v0, "HSPSocial"

    const-string v1, "removeBlockingRemoveListener"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string v0, "HSPSocial"

    const-string v1, "listner is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPSocial;->sRemoveBlockingListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPSocial;->sRemoveBlockingListenerSet:Ljava/util/Set;

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

.method public static removeFollowingAddListener(Lcom/hangame/hsp/HSPSocial$HSPAddFollowingListener;)V
    .locals 2

    const-string v0, "HSPSocial"

    const-string v1, "removeFollowingAddListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string v0, "HSPSocial"

    const-string v1, "listner is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPSocial;->sAddFollowingListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPSocial;->sAddFollowingListenerSet:Ljava/util/Set;

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

.method public static removeFollowingRemoveListener(Lcom/hangame/hsp/HSPSocial$HSPRemoveFollowingListener;)V
    .locals 2

    const-string v0, "HSPSocial"

    const-string v1, "removeFollowingRemoveListener()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string v0, "HSPSocial"

    const-string v1, "listner is null"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/hangame/hsp/HSPSocial;->sRemoveFollowingListenerSet:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/HSPSocial;->sRemoveFollowingListenerSet:Ljava/util/Set;

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

.method private static sendBipForChangingRelation(ILcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "inflw_path"

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_FOLLOW:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    if-ne p1, v1, :cond_1

    const-string v1, "reg_bloc_tp"

    const-string v2, "R"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    const-string v1, "actn_cnt"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rgst_dt"

    invoke-static {}, Lcom/hangame/hsp/util/CalendarUtil;->getCurrentDateTimeString14()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "frnd_reg_bloc"

    new-instance v2, Lcom/hangame/hsp/HSPSocial$28;

    invoke-direct {v2}, Lcom/hangame/hsp/HSPSocial$28;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/hangame/hsp/server/HSPBIPService;->requestGameMetaInfo(Ljava/lang/String;Ljava/util/Map;Lcom/hangame/hsp/core/HSPHttpResHandler;)V

    return-void

    :cond_1
    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    if-ne p1, v1, :cond_0

    const-string v1, "reg_bloc_tp"

    const-string v2, "B"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static sendRecommendingEmail(Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/HSPSocial$HSPSendRecommendingEmailCB;)V
    .locals 4

    const-string v0, "HSPSocial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRecommendingEmail(senderEmail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",receiverEmail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->editSocial()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPSocial$26;

    invoke-direct {v0, p2}, Lcom/hangame/hsp/HSPSocial$26;-><init>(Lcom/hangame/hsp/HSPSocial$HSPSendRecommendingEmailCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPSocial$27;

    invoke-direct {v0, p2}, Lcom/hangame/hsp/HSPSocial$27;-><init>(Lcom/hangame/hsp/HSPSocial$HSPSendRecommendingEmailCB;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendRecommendEmail;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendRecommendEmail;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendRecommendEmail;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendRecommendEmail;->memberNo:J

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendRecommendEmail;->gameNo:I

    const/4 v2, 0x2

    iput v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendRecommendEmail;->osNo:I

    iput-object p0, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendRecommendEmail;->senderEmailAddress:Ljava/lang/String;

    iput-object p1, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendRecommendEmail;->receiverEmailAddress:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public static sendRecommendingSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hangame/hsp/HSPSocial$HSPSendRecommendingSMSCB;)V
    .locals 5

    const/4 v4, 0x0

    const v3, 0xf004

    const-string v0, "HSPSocial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRecommendingSMS(senderPhoneNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",receiverPhoneNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",receiverName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->editSocial()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPSocial$24;

    invoke-direct {v0, p3}, Lcom/hangame/hsp/HSPSocial$24;-><init>(Lcom/hangame/hsp/HSPSocial$HSPSendRecommendingSMSCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/hangame/hsp/HSPSocial$25;

    invoke-direct {v1, p3}, Lcom/hangame/hsp/HSPSocial$25;-><init>(Lcom/hangame/hsp/HSPSocial$HSPSendRecommendingSMSCB;)V

    if-eqz p1, :cond_3

    const-string v0, "+82"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "+82"

    const-string v2, "0"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/hangame/hsp/util/PhoneNumberUtil;->checkPhoneNumberLength(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/hangame/hsp/util/PhoneNumberUtil;->checkExchangeNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const-string v0, "ETC"

    invoke-static {v0, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_3
    const-string v0, "ETC"

    invoke-static {v0, v3}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/hangame/hsp/core/HandlerDelegator;->delegateEventHolder(Lcom/hangame/hsp/core/HSPResHandler;Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendRecommendSms;

    invoke-direct {v0}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendRecommendSms;-><init>()V

    iget-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendRecommendSms;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendRecommendSms;->memberNo:J

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getGameNo()I

    move-result v2

    iput v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendRecommendSms;->gameNo:I

    invoke-static {p0}, Lcom/hangame/hsp/util/EncryptUtil;->maskPhoneNumber(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendRecommendSms;->senderPhoneNo:Ljava/lang/String;

    invoke-static {p1}, Lcom/hangame/hsp/util/EncryptUtil;->maskPhoneNumber(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendRecommendSms;->receiverPhoneNo:Ljava/lang/String;

    iput-object p2, v0, Lcom/hangame/hsp/xdr/hsp13/request/ReqSendRecommendSms;->receiverName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0

    :cond_5
    move-object v0, p1

    goto :goto_1
.end method

.method public static unblockMembers(Ljava/util/List;Lcom/hangame/hsp/HSPSocial$HSPUnblockMembersCB;)V
    .locals 4

    const-string v0, "HSPSocial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unblockMembers(memberNos="

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

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->editSocial()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPSocial$7;

    invoke-direct {v0, p1}, Lcom/hangame/hsp/HSPSocial$7;-><init>(Lcom/hangame/hsp/HSPSocial$HSPUnblockMembersCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPSocial$8;

    invoke-direct {v0, p1, p0}, Lcom/hangame/hsp/HSPSocial$8;-><init>(Lcom/hangame/hsp/HSPSocial$HSPUnblockMembersCB;Ljava/util/List;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqDeleteInRelationList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqDeleteInRelationList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqDeleteInRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqDeleteInRelationList;->memberNo:J

    sget-object v2, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_BLOCK:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->getValue()B

    move-result v2

    iput-byte v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqDeleteInRelationList;->relationType:B

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqDeleteInRelationList;->memberNoList:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method

.method public static unfollowMembers(Ljava/util/List;Lcom/hangame/hsp/HSPSocial$HSPUnfollowMembersCB;)V
    .locals 4

    const-string v0, "HSPSocial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unfollowMembers(memberNos="

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

    invoke-static {}, Lcom/hangame/hsp/core/HSPServiceDomain$HSPServiceDomainPermission;->editSocial()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPSocial$5;

    invoke-direct {v0, p1}, Lcom/hangame/hsp/HSPSocial$5;-><init>(Lcom/hangame/hsp/HSPSocial$HSPUnfollowMembersCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/hangame/hsp/HSPSocial$6;

    invoke-direct {v0, p1, p0}, Lcom/hangame/hsp/HSPSocial$6;-><init>(Lcom/hangame/hsp/HSPSocial$HSPUnfollowMembersCB;Ljava/util/List;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqDeleteInRelationList;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqDeleteInRelationList;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqDeleteInRelationList;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqDeleteInRelationList;->memberNo:J

    sget-object v2, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->HSP_RELATIONTYPE_FOLLOW:Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPRelationType;->getValue()B

    move-result v2

    iput-byte v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqDeleteInRelationList;->relationType:B

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqDeleteInRelationList;->memberNoList:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    goto :goto_0
.end method
