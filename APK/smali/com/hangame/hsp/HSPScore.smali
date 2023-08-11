.class public final Lcom/hangame/hsp/HSPScore;
.super Ljava/lang/Object;


# instance fields
.field private final mChangeGrade:I

.field private final mExtraData:Ljava/lang/String;

.field private final mGrade:I

.field private final mMemberNo:J

.field private final mScore:D


# direct methods
.method constructor <init>(DIIJLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/hangame/hsp/HSPScore;->mScore:D

    iput p3, p0, Lcom/hangame/hsp/HSPScore;->mGrade:I

    iput p4, p0, Lcom/hangame/hsp/HSPScore;->mChangeGrade:I

    iput-wide p5, p0, Lcom/hangame/hsp/HSPScore;->mMemberNo:J

    iput-object p7, p0, Lcom/hangame/hsp/HSPScore;->mExtraData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChangeGrade()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPScore;->mChangeGrade:I

    return v0
.end method

.method public getExtraData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPScore;->mExtraData:Ljava/lang/String;

    return-object v0
.end method

.method public getGrade()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/HSPScore;->mGrade:I

    return v0
.end method

.method public getMemberNo()J
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/HSPScore;->mMemberNo:J

    return-wide v0
.end method

.method public getScore()D
    .locals 2

    iget-wide v0, p0, Lcom/hangame/hsp/HSPScore;->mScore:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HSPScore [Score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/HSPScore;->mScore:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", Grade="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/HSPScore;->mGrade:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ChangeGrade="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hangame/hsp/HSPScore;->mChangeGrade:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", MemberNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/hangame/hsp/HSPScore;->mMemberNo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ExtraData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hangame/hsp/HSPScore;->mExtraData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
