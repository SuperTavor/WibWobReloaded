.class public final Lcom/hangame/hsp/sns/HSPFacebookProfile;
.super Ljava/lang/Object;


# instance fields
.field protected mFacebookId:Ljava/lang/String;

.field protected mIsMyFriend:Z

.field protected mMemberNo:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFacebookId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookProfile;->mFacebookId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMemberNo()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookProfile;->mMemberNo:Ljava/lang/Long;

    return-object v0
.end method

.method public final isMyFriend()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/sns/HSPFacebookProfile;->mIsMyFriend:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSPFacebookProfile [facebookId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPFacebookProfile;->mFacebookId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", memberNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPFacebookProfile;->mMemberNo:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isMyFriend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hangame/hsp/sns/HSPFacebookProfile;->mIsMyFriend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
