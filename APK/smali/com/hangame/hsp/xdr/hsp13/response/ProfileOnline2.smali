.class public Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;
.super Ljava/lang/Object;

# interfaces
.implements LXDR/IMessage;


# static fields
.field public static final nMsgID:I = 0x5a5c7aa


# instance fields
.field public age:I

.field private bSubMessageFlag:Z

.field public exposeAge:Z

.field public exposeGender:Z

.field public exposeOnline:Z

.field public gender:Ljava/lang/String;

.field public memberNo:J

.field public nickname:Ljava/lang/String;

.field public online:Z

.field public recentlyPlayedGameNo:I

.field public reserved:Ljava/lang/String;

.field public todayWord:Ljava/lang/String;

.field public validCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->bSubMessageFlag:Z

    return-void
.end method


# virtual methods
.method public GetID()I
    .locals 1

    const v0, 0x5a5c7aa

    return v0
.end method

.method public GetLength()I
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->bSubMessageFlag:Z

    if-nez v1, :cond_0

    const v1, 0x5a5c7aa

    invoke-static {v1}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->memberNo:J

    invoke-static {v2, v3}, LXDR/Translator/Serializer;->GetLongLength(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->nickname:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->validCode:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->recentlyPlayedGameNo:I

    invoke-static {v1}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->exposeOnline:Z

    invoke-static {v1}, LXDR/Translator/Serializer;->GetBooleanLength(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->online:Z

    invoke-static {v1}, LXDR/Translator/Serializer;->GetBooleanLength(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->exposeGender:Z

    invoke-static {v1}, LXDR/Translator/Serializer;->GetBooleanLength(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->gender:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->exposeAge:Z

    invoke-static {v1}, LXDR/Translator/Serializer;->GetBooleanLength(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->age:I

    invoke-static {v1}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->todayWord:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->reserved:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public GetMaxLength()I
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->bSubMessageFlag:Z

    if-nez v1, :cond_0

    const v1, 0x5a5c7aa

    invoke-static {v1}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->memberNo:J

    invoke-static {v2, v3}, LXDR/Translator/Serializer;->GetLongLength(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->nickname:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringMaxLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->validCode:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringMaxLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->recentlyPlayedGameNo:I

    invoke-static {v1}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->exposeOnline:Z

    invoke-static {v1}, LXDR/Translator/Serializer;->GetBooleanLength(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->online:Z

    invoke-static {v1}, LXDR/Translator/Serializer;->GetBooleanLength(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->exposeGender:Z

    invoke-static {v1}, LXDR/Translator/Serializer;->GetBooleanLength(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->gender:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringMaxLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->exposeAge:Z

    invoke-static {v1}, LXDR/Translator/Serializer;->GetBooleanLength(Z)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->age:I

    invoke-static {v1}, LXDR/Translator/Serializer;->GetIntLength(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->todayWord:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringMaxLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->reserved:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, LXDR/Translator/Serializer;->GetStringMaxLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public GetName()Ljava/lang/String;
    .locals 1

    const-string v0, "ProfileOnline2"

    return-object v0
.end method

.method public GetSubMessageFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->bSubMessageFlag:Z

    return v0
.end method

.method public Load([BI)I
    .locals 4

    array-length v0, p1

    if-ge p2, v0, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, LXDR/XDRException;

    const-string v1, "ProfileOnline2.Load() - Invalid value of offset"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->bSubMessageFlag:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const v2, 0x5a5c7aa

    if-eq v2, v1, :cond_2

    new-instance v0, LXDR/XDRException;

    const-string v1, "ProfileOnline2.Load() - Invalid message identifier"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, LXDR/Translator/Serializer;->LoadLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->memberNo:J

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->nickname:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->validCode:Ljava/lang/String;

    invoke-static {v0}, LXDR/Translator/Serializer;->LoadInt(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->recentlyPlayedGameNo:I

    invoke-static {v0}, LXDR/Translator/Serializer;->LoadBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->exposeOnline:Z

    invoke-static {v0}, LXDR/Translator/Serializer;->LoadBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->online:Z

    invoke-static {v0}, LXDR/Translator/Serializer;->LoadBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->exposeGender:Z

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->gender:Ljava/lang/String;

    invoke-static {v0}, LXDR/Translator/Serializer;->LoadBoolean(Ljava/nio/ByteBuffer;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->exposeAge:Z

    invoke-static {v0}, LXDR/Translator/Serializer;->LoadInt(Ljava/nio/ByteBuffer;)I

    move-result v1

    iput v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->age:I

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->todayWord:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->reserved:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, p2

    return v0
.end method

.method public Load(Ljava/io/InputStream;)V
    .locals 4

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->bSubMessageFlag:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const v2, 0x5a5c7aa

    if-eq v2, v1, :cond_0

    new-instance v0, LXDR/XDRException;

    const-string v1, "ProfileOnline2.Load() - Invalid message identifier"

    invoke-direct {v0, v1}, LXDR/XDRException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0}, LXDR/Translator/Serializer;->LoadLong(Ljava/io/DataInputStream;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->memberNo:J

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->nickname:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->validCode:Ljava/lang/String;

    invoke-static {v0}, LXDR/Translator/Serializer;->LoadInt(Ljava/io/DataInputStream;)I

    move-result v1

    iput v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->recentlyPlayedGameNo:I

    invoke-static {v0}, LXDR/Translator/Serializer;->LoadBoolean(Ljava/io/DataInputStream;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->exposeOnline:Z

    invoke-static {v0}, LXDR/Translator/Serializer;->LoadBoolean(Ljava/io/DataInputStream;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->online:Z

    invoke-static {v0}, LXDR/Translator/Serializer;->LoadBoolean(Ljava/io/DataInputStream;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->exposeGender:Z

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->gender:Ljava/lang/String;

    invoke-static {v0}, LXDR/Translator/Serializer;->LoadBoolean(Ljava/io/DataInputStream;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->exposeAge:Z

    invoke-static {v0}, LXDR/Translator/Serializer;->LoadInt(Ljava/io/DataInputStream;)I

    move-result v1

    iput v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->age:I

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->todayWord:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->LoadString(Ljava/io/DataInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->reserved:Ljava/lang/String;

    return-void
.end method

.method public Save(Ljava/io/OutputStream;)V
    .locals 4

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->bSubMessageFlag:Z

    if-nez v1, :cond_0

    const v1, 0x5a5c7aa

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_0
    iget-wide v2, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->memberNo:J

    invoke-static {v0, v2, v3}, LXDR/Translator/Serializer;->SaveLong(Ljava/io/DataOutputStream;J)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->nickname:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->validCode:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->recentlyPlayedGameNo:I

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->SaveInt(Ljava/io/DataOutputStream;I)V

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->exposeOnline:Z

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->SaveBoolean(Ljava/io/DataOutputStream;Z)V

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->online:Z

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->SaveBoolean(Ljava/io/DataOutputStream;Z)V

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->exposeGender:Z

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->SaveBoolean(Ljava/io/DataOutputStream;Z)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->gender:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->exposeAge:Z

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->SaveBoolean(Ljava/io/DataOutputStream;Z)V

    iget v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->age:I

    invoke-static {v0, v1}, LXDR/Translator/Serializer;->SaveInt(Ljava/io/DataOutputStream;I)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->todayWord:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->reserved:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, LXDR/Translator/Serializer;->SaveString(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Save()[B
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->GetMaxLength()I

    move-result v0

    new-array v1, v0, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->bSubMessageFlag:Z

    if-nez v0, :cond_0

    const v0, 0x5a5c7aa

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_0
    iget-wide v4, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->memberNo:J

    invoke-static {v2, v4, v5}, LXDR/Translator/Serializer;->SaveLong(Ljava/nio/ByteBuffer;J)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->nickname:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v0, v3}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->validCode:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v0, v3}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->recentlyPlayedGameNo:I

    invoke-static {v2, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/nio/ByteBuffer;I)V

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->exposeOnline:Z

    invoke-static {v2, v0}, LXDR/Translator/Serializer;->SaveBoolean(Ljava/nio/ByteBuffer;Z)V

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->online:Z

    invoke-static {v2, v0}, LXDR/Translator/Serializer;->SaveBoolean(Ljava/nio/ByteBuffer;Z)V

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->exposeGender:Z

    invoke-static {v2, v0}, LXDR/Translator/Serializer;->SaveBoolean(Ljava/nio/ByteBuffer;Z)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->gender:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v0, v3}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->exposeAge:Z

    invoke-static {v2, v0}, LXDR/Translator/Serializer;->SaveBoolean(Ljava/nio/ByteBuffer;Z)V

    iget v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->age:I

    invoke-static {v2, v0}, LXDR/Translator/Serializer;->SaveInt(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->todayWord:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v0, v3}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->reserved:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v0, v3}, LXDR/Translator/Serializer;->SaveString(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    array-length v3, v1

    if-eq v0, v3, :cond_1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-static {v1, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public SetSubMessageFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hangame/hsp/xdr/hsp13/response/ProfileOnline2;->bSubMessageFlag:Z

    return-void
.end method
