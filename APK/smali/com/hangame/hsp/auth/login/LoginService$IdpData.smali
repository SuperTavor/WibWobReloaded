.class public Lcom/hangame/hsp/auth/login/LoginService$IdpData;
.super Ljava/lang/Object;


# instance fields
.field private mIdpDataMap:Ljava/util/Map;

.field private mResultCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->mResultCode:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->mIdpDataMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getIdpDataMap()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->mIdpDataMap:Ljava/util/Map;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->mResultCode:I

    return v0
.end method

.method public putIdpDataMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->mIdpDataMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/auth/login/LoginService$IdpData;->mResultCode:I

    return-void
.end method
