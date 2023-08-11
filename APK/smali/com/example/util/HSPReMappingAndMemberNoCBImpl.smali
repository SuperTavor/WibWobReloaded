.class public Lcom/example/util/HSPReMappingAndMemberNoCBImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPCore$HSPReMappingAndMemberNoCB;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HSPReMappingAndMemberNoCBImpl::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;->b:J

    return-void
.end method

.method private static a(Lcom/hangame/hsp/HSPResult;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    const/16 v1, 0x4005

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native onEndMapping(JZZZJJ)V
.end method


# virtual methods
.method public onIdpIDMap(Lcom/hangame/hsp/HSPResult;J)V
    .locals 10

    invoke-static {p1}, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;->a(Lcom/hangame/hsp/HSPResult;)Z

    move-result v5

    sget-object v0, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hspResult.getDetail()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hspResult.getDetailCode()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getDetailCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hspResult.getCode()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prevMemberNo::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCancel::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;->a:Ljava/lang/String;

    const-string v1, "isSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, p0, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;->b:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    int-to-long v6, v0

    move-object v0, p0

    move-wide v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;->onEndMapping(JZZZJJ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    const v1, 0x14006d

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Member no of already registered account prevMemberNo::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, p0, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;->b:J

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    int-to-long v6, v0

    move-object v0, p0

    move-wide v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;->onEndMapping(JZZZJJ)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;->a:Ljava/lang/String;

    const-string v1, "ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, p0, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;->b:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->getCode()I

    move-result v0

    int-to-long v6, v0

    move-object v0, p0

    move-wide v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/example/util/HSPReMappingAndMemberNoCBImpl;->onEndMapping(JZZZJJ)V

    goto :goto_0
.end method
