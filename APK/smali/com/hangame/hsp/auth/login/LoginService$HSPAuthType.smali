.class public final enum Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;

.field public static final enum LOGIN:Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;

.field public static final enum MAPPING:Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;->LOGIN:Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;

    new-instance v0, Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;

    const-string v1, "MAPPING"

    invoke-direct {v0, v1, v3}, Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;->MAPPING:Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;

    sget-object v1, Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;->LOGIN:Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;->MAPPING:Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;->$VALUES:[Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;
    .locals 1

    const-class v0, Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;->$VALUES:[Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;

    invoke-virtual {v0}, [Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/auth/login/LoginService$HSPAuthType;

    return-object v0
.end method
