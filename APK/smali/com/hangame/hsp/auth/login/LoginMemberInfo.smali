.class public Lcom/hangame/hsp/auth/login/LoginMemberInfo;
.super Ljava/lang/Object;


# instance fields
.field public additionalData:Ljava/util/HashMap;

.field public birth:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public idType:Ljava/lang/String;

.field public memberNo:J

.field public oAuthProvider:Ljava/lang/String;

.field public oAuthUserID:Ljava/lang/String;

.field public oAuthUserNickName:Ljava/lang/String;

.field public photoURL:Ljava/lang/String;

.field public reserved:Ljava/lang/String;

.field public thumbnailURL:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/auth/login/LoginMemberInfo;->additionalData:Ljava/util/HashMap;

    return-void
.end method
