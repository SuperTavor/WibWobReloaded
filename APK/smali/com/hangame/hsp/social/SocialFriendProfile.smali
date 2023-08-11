.class public Lcom/hangame/hsp/social/SocialFriendProfile;
.super Ljava/lang/Object;


# instance fields
.field private mSocialId:Ljava/lang/String;

.field private mSocialNickname:Ljava/lang/String;

.field private mSocialPhotoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hangame/hsp/social/SocialFriendProfile;->mSocialId:Ljava/lang/String;

    iput-object p2, p0, Lcom/hangame/hsp/social/SocialFriendProfile;->mSocialNickname:Ljava/lang/String;

    iput-object p3, p0, Lcom/hangame/hsp/social/SocialFriendProfile;->mSocialPhotoUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSocialId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/social/SocialFriendProfile;->mSocialId:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/social/SocialFriendProfile;->mSocialNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialPhotoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/social/SocialFriendProfile;->mSocialPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setSocialId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/social/SocialFriendProfile;->mSocialId:Ljava/lang/String;

    return-void
.end method

.method public setSocialNickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/social/SocialFriendProfile;->mSocialNickname:Ljava/lang/String;

    return-void
.end method

.method public setSocialPhotoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/social/SocialFriendProfile;->mSocialPhotoUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialFriendProfile [mSocialId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/social/SocialFriendProfile;->mSocialId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSocialNickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/social/SocialFriendProfile;->mSocialNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSocialPhotoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/social/SocialFriendProfile;->mSocialPhotoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
